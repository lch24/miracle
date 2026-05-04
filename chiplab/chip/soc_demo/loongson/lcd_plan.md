# LCD 显示屏驱动实现计划

> 目标：在龙芯 SoC 实验箱上驱动 4.3 寸 TFT-LCD 触摸屏
> LCD 控制器：SSD1963，分辨率 480×272，8080 并行接口（16位数据）
> 参考代码：`/data/pyy/lch_private/lcd_generate.srcs/`（龙芯官方实验代码，作者 xingjinzhang@loongson.cn）

---

## 一、接入方案：如何融入现有 SoC

### 当前 AXI 总线拓扑

```
CPU(core_top)
  ├── AXI4-M AR通道 → axi_2x1_mux → AXI_CLK_CONVERTER(50→33MHz) → axi_slave_mux
  └── AXI4-M AW/W/B通道 → AXI_CLK_CONVERTER(50→33MHz) → axi_slave_mux

axi_slave_mux (1主→5从，地址解码路由):
  ├── S0: DDR3 (默认，其余地址不匹配时走这里)
  ├── S1: SPI Flash   (0x1fe8_xxxx / 0x1c0x_xxxx)  [syn版]
  ├── S2: APB(UART/NAND) (0x1fe0_xxxx / 0x1fe7_xxxx)
  ├── S3: CONFREG     (0x1fd0_xxxx)
  └── S4: MAC slave   (0x1ff0_xxxx)  [syn版]
```

### 新增 LCD 后的拓扑

```
axi_slave_mux (1主→6从):
  ├── S0: DDR3 (默认)
  ├── S1: SPI Flash
  ├── S2: APB(UART/NAND)
  ├── S3: CONFREG
  ├── S4: MAC slave
  └── S5: LCD_CTRL  (0x1fc0_xxxx)  ← 新增
```

### 数据通路

```
CPU 写 0x1fc0_xxxx
  → core_top AXI-M AW/W通道
  → AXI_CLK_CONVERTER (cpu_clk 50MHz → aclk 33MHz)
  → axi_slave_mux 地址解码 (0x1fc0 匹配 S5)
  → lcd_ctrl AXI-S (aclk 33MHz 时钟域)
  → 8080 并行接口时序状态机 (分频产生 WR# 脉冲)
  → SSD1963 LCD 屏
```

### 时钟域考量

- lcd_ctrl 的 AXI 从端运行在 `aclk` (33MHz)，与 axi_slave_mux 同频
- 8080 接口时序由 lcd_ctrl 内部分频生成，不需要额外时钟
- 参考代码用 25MHz → 12.5MHz 做 WR#，我们用 33MHz → 16.5MHz 完全满足 SSD1963 最低 30ns 写周期要求

---

## 二、lcd_ctrl 模块设计

### 整体架构

```
                    AXI 从端接口 (aclk 33MHz)
                         │
                    ┌────┴────┐
                    │ AXI 协议 │  ← 参考 CONFREG 的 AXI 处理模式
                    │ 处理逻辑 │     (busy/ar_enter/aw_enter/w_enter/b_retire)
                    └────┬────┘
                         │ 寄存器读写
            ┌────────────┼────────────┐
            │            │            │
      ┌─────┴─────┐ ┌───┴───┐ ┌─────┴─────┐
      │ 控制寄存器 │ │状态寄存器│ │ 数据寄存器 │
      │ CTRL_REG  │ │STAT_REG │ │CMD/DATA   │
      └───────────┘ └───────┘ └─────┬─────┘
                                       │ 写触发
                                  ┌────┴────┐
                                  │ 8080    │  ← 移植自 lcd_module/lcd_init
                                  │ 时序FSM │     (SETUP→WRITE→HOLD→IDLE)
                                  └────┬────┘
                                       │
                              SSD1963 物理接口
                    lcd_rst, lcd_cs, lcd_rs, lcd_wr,
                    lcd_rd, lcd_bl_ctr, lcd_data[15:0]
```

### 寄存器定义 (基地址 0x1fc0_xxxx)

| 偏移 | 名称 | 读/写 | 位域 | 功能 |
|------|------|-------|------|------|
| 0x00 | CMD_REG | WO | [15:0] | 写入触发：RS=0，发送16位命令到SSD1963 |
| 0x04 | DATA_REG | WO | [15:0] | 写入触发：RS=1，发送16位数据到SSD1963 |
| 0x08 | STAT_REG | RO | [0] | busy: 1=8080时序FSM忙碌中 |
| | | | [1] | init_done: 1=自动初始化已完成 |
| 0x0C | CTRL_REG | RW | [0] | lcd_rst: 0=复位LCD, 1=正常工作 |
| | | | [1] | lcd_bl: 0=关背光, 1=开背光 |
| | | | [2] | auto_init: 写1触发自动初始化序列 |

### AXI 协议处理（参考 CONFREG 模式）

CONFREG 的 AXI 处理方式非常适合 LCD，因为它简单且已在 SoC 中验证：
- `busy` 信号互斥 AR/AW 通道
- `ar_enter`/`aw_enter` 锁存请求到 `buf_addr`/`buf_id`
- `w_enter` 触发实际寄存器写入
- 写 CMD_REG/DATA_REG 时同时触发 8080 FSM
- 读 STAT_REG 时直接返回状态

### 8080 写时序状态机

移植自参考代码 `lcd_module.v` 的时序方式：

```
时钟: aclk (33MHz)，2分频产生 WR# 脉冲

IDLE:
  lcd_cs = 0 (常低)
  lcd_rd = 1 (常高)
  lcd_wr = 1
  等待 AXI 写入 CMD_REG 或 DATA_REG

SETUP (1个aclk周期):
  lcd_rs = 0(命令) 或 1(数据)
  lcd_data[15:0] = 写入值
  lcd_wr = 1

WRITE (1个aclk周期):
  lcd_wr = 0  ← WR# 下降沿，SSD1963 锁存数据

HOLD (1个aclk周期):
  lcd_wr = 1  ← WR# 上升沿
  回到 IDLE

每笔写操作约 90ns (3×33MHz)，满足 SSD1963 写周期要求
```

### 自动初始化（可选，二期实现）

参考代码的 `lcd_init.v` 使用 ROM 存储初始化序列，逐条发送命令/数据对。
由于 ROM COE 文件缺失，一期方案用纯软件初始化：

**软件初始化流程**（CPU 直接写寄存器）：
```c
// 伪代码
*(volatile uint16_t *)0x1fc00008;  // 读 STAT_REG，等待不忙
*(volatile uint16_t *)0x1fc00000 = 0x0001;  // CMD: 软件复位
delay_ms(5);
*(volatile uint16_t *)0x1fc00000 = 0x00E2;  // CMD: 设置PLL
*(volatile uint16_t *)0x1fc00004 = 0x0023;  // DATA
// ... 依次发送完整初始化序列
*(volatile uint16_t *)0x1fc00000 = 0x0029;  // CMD: Display ON
```

---

## 三、修改文件清单

### 1. 新建 `IP/LCD/lcd_ctrl.v`

AXI 从端 LCD 控制器模块，参照 CONFREG 的 AXI 协议处理 + 参考代码的 8080 时序。

### 2. 修改 `IP/AMBA/axi_mux_syn.v`

| 修改点 | 内容 |
|--------|------|
| `SLV_MUX_NUM` | 5 → 6 |
| 端口声明 | 新增 `s5_*` 信号（AW/W/B/AR/R 全套，格式同 s4） |
| 内部信号 | 数组位宽扩展 `[5:0]`、`[2:0]` → 包含 s5 |
| 写地址解码 | `wr_addr_hit[5] = axi_s_awaddr[31:16]==16'h1fc0` |
| 读地址解码 | `rd_addr_hit[5] = axi_s_araddr[31:16]==16'h1fc0` |
| DDR3默认 | `wr_addr_hit[0] = ~\|wr_addr_hit[5:1]` |
| 所有 for 循环 | `SLV_MUX_NUM` 自动扩展 |

### 3. 修改 `IP/AMBA/axi_mux_sim.v`

同 syn 版本，但 S5 地址解码暂设 `1'b0`（仿真不测 LCD）。

### 4. 修改 `chip/soc_demo/loongson/soc_top.v`

a) 模块端口声明新增：
```verilog
//------lcd-------
output        lcd_rst,       // LCD复位(低有效)
output        lcd_cs,        // LCD片选(常低)
output        lcd_rs,        // LCD命令/数据选择(0=命令,1=数据)
output        lcd_wr,        // LCD写信号(低有效)
output        lcd_rd,        // LCD读信号(常高)
output        lcd_bl_ctr,    // LCD背光控制
output [15:0] lcd_data,      // LCD数据总线(DB1-DB17)
input         lcd_t_pen,     // 触摸屏中断
inout         lcd_t_mosi,    // 触摸屏SPI数据
output        lcd_t_clk,     // 触摸屏SPI时钟
output        lcd_t_cs_rst   // 触摸屏片选/复位
```

b) wire 声明新增 `lcd_s_*` 信号（连接 axi_slave_mux S5 端口）

c) axi_slave_mux 实例新增 `.s5_*` 连接

d) 新增 lcd_ctrl 实例：
```verilog
lcd_ctrl LCD_CTRL(
    .aclk        (aclk),
    .aresetn     (aresetn),
    // AXI 从端 → axi_slave_mux.S5
    .s_awid      (lcd_s_awid),
    .s_awaddr    (lcd_s_awaddr),
    // ... 完整 AXI 信号
    // 8080 物理接口 → 顶层端口
    .lcd_rst     (lcd_rst),
    .lcd_cs      (lcd_cs),
    // ...
);
```

### 5. 修改 `fpga/loongson/soc_up.xdc`

新增 LCD 引脚约束（引脚号来自参考代码 `lcd.xdc`，与 Excel 完全一致）：

```xdc
#LCD
set_property PACKAGE_PIN J25 [get_ports lcd_rst]
set_property PACKAGE_PIN H18 [get_ports lcd_cs]
set_property PACKAGE_PIN K16 [get_ports lcd_rs]
set_property PACKAGE_PIN L8  [get_ports lcd_wr]
set_property PACKAGE_PIN K8  [get_ports lcd_rd]
set_property PACKAGE_PIN J15 [get_ports lcd_bl_ctr]
set_property PACKAGE_PIN H9  [get_ports {lcd_data[0]}]
set_property PACKAGE_PIN K17 [get_ports {lcd_data[1]}]
set_property PACKAGE_PIN J20 [get_ports {lcd_data[2]}]
set_property PACKAGE_PIN M17 [get_ports {lcd_data[3]}]
set_property PACKAGE_PIN L17 [get_ports {lcd_data[4]}]
set_property PACKAGE_PIN L18 [get_ports {lcd_data[5]}]
set_property PACKAGE_PIN L15 [get_ports {lcd_data[6]}]
set_property PACKAGE_PIN M15 [get_ports {lcd_data[7]}]
set_property PACKAGE_PIN M16 [get_ports {lcd_data[8]}]
set_property PACKAGE_PIN L14 [get_ports {lcd_data[9]}]
set_property PACKAGE_PIN M14 [get_ports {lcd_data[10]}]
set_property PACKAGE_PIN F22 [get_ports {lcd_data[11]}]
set_property PACKAGE_PIN G22 [get_ports {lcd_data[12]}]
set_property PACKAGE_PIN G21 [get_ports {lcd_data[13]}]
set_property PACKAGE_PIN H24 [get_ports {lcd_data[14]}]
set_property PACKAGE_PIN J16 [get_ports {lcd_data[15]}]
set_property PACKAGE_PIN L19 [get_ports lcd_t_pen]
set_property PACKAGE_PIN J24 [get_ports lcd_t_mosi]
set_property PACKAGE_PIN H21 [get_ports lcd_t_clk]
set_property PACKAGE_PIN G24 [get_ports lcd_t_cs_rst]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_rst]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_cs]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_rs]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_wr]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_rd]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_bl_ctr]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_t_pen]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_t_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_t_clk]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_t_cs_rst]
```

---

## 四、实现步骤

1. 创建 `IP/LCD/lcd_ctrl.v` — 参考 CONFREG 的 AXI 协议 + 参考 lcd_module 的 8080 时序
2. 修改 `axi_mux_syn.v` — SLV_MUX_NUM=6，新增 S5 端口和 0x1fc0 地址解码
3. 修改 `axi_mux_sim.v` — 同步新增 S5 端口（地址解码 1'b0）
4. 修改 `soc_top.v` — LCD 端口 + lcd_ctrl 实例 + S5 连线
5. 修改 `soc_up.xdc` — LCD 引脚约束

---

## 五、参考代码可复用部分

| 参考文件 | 可复用内容 | 复用方式 |
|----------|-----------|---------|
| `lcd_module.v` | 8080 写时序（WR# 分频脉冲） | 移植到 lcd_ctrl 的 FSM |
| `lcd_module.v` | lcd_cs=0, lcd_rd=1, lcd_bl_ctr=1 硬连线 | 直接沿用 |
| `lcd_module.v` | lcd_rst 上电延迟释放逻辑 | 移植到 lcd_ctrl 的 CTRL_REG 控制 |
| `lcd_init.v` | SSD1963 初始化命令序列 | 转为软件初始化代码（C/汇编） |
| `lcd_draw.v` | SSD1963 命令码 (0x2A/0x2B/0x2C/0x29/0x36) | 软件绘图时参考 |
| `touch_module.v` | 触摸屏 I2C 驱动 (地址 0x28) | 二期移植 |
| `lcd.xdc` | 引脚映射 | 直接复用（已验证与 Excel 一致） |

---

## 六、验证方法

1. **仿真**：CPU 写 0x1fc00000（CMD_REG），观察 lcd_ctrl 是否正确产生 RS=0 + WR# 脉冲 + 数据输出
2. **综合**：Vivado 打开项目，确认新增源文件、SLV_MUX_NUM 修改、引脚约束无报错
3. **上板**：软件写 CTRL_REG 开启 lcd_rst + 背光 → 写 CMD/DATA 完成 SSD1963 初始化 → 写 0x2C 命令 + 像素数据，屏幕显示色块
