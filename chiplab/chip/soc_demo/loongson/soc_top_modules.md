# Loongson SoC Top 模块详解

> 文件位置: `chip/soc_demo/loongson/soc_top.v`
> 基于 LoongArch32R (LA32R) 架构的龙芯实验箱 SoC，使用 AXI3 总线互联。

## 整体架构概览

```
                          ┌──────────────┐
                          │  clk_pll_33  │  100MHz→50MHz(cpu_clk), 33MHz(uncore_clk=aclk)
                          │  clk_wiz_0   │  100MHz→200MHz(ddr参考时钟)
                          └──────────────┘

 ┌──────────┐  AXI4-M  ┌──────────────┐  AXI-R  ┌────────────┐  AXI4-M(异步)  ┌──────────────┐
 │core_top  │─────────→│axi_2x1_mux  │────────→│AXI_CLK_CONV│───────────────→│axi_slave_mux │
 │(CPU核心) │          │(2→1读 mux)   │         │(跨时钟域)  │                │(1M→5S 解码)  │
 └──────────┘          │S00:CPU AR    │         └────────────┘                │              │
                          │S01:debug_sram│                                     │ S0→DDR       │
                          └──────────────┘                                     │ S1→SPI       │
                                                                               │ S2→AXI2APB   │
                                                                               │ S3→CONFREG   │
                                                                               │ S4→MAC(slave)│
                                                                               └──────────────┘

                          ┌──────────────────────────────────────────┐
                          │            DDR3 子系统                    │
                          │  axi_interconnect_0(3M→1S)               │
                          │    S00: axi_slave_mux→DDR(s0)            │
                          │    S01: MAC master→DDR(mac_m)            │
                          │    S02: DMA master→DDR(dma0)             │
                          │    M00: mig_axi_32 (DDR3控制器)           │
                          └──────────────────────────────────────────┘

 ┌──────────┐  AXI-M  → DDR interconnect    ┌──────────────┐  AXI-S  ← axi_slave_mux
 │DMA_master│  APB     → axi2apb_misc        │ethernet_top  │  AXI-M  → DDR interconnect
 │(DMA控制器)│                               │(MAC以太网)   │  MII/MDIO→PHY
 └──────────┘                                 └──────────────┘

 ┌──────────────┐  AXI-S  ← axi_slave_mux    ┌──────────────┐  AXI-S  ← axi_slave_mux
 │spi_flash_ctrl│                               │confreg       │
 │(SPI Flash)   │  SPI→Flash芯片              │(配置/显示)   │  LED/数码管/开关/按键
 └──────────────┘                               └──────────────┘

 ┌──────────────┐  AXI-S  ← axi_slave_mux    ┌──────────┐  AXI-S(读) ← axi_2x1_mux(S01)
 │axi2apb_misc  │                               │debug_top │  UART2→调试串口
 │(AXI→APB桥)   │                               │debug_sram│
 │  内含:       │                               └──────────┘
 │  - UART0     │  UART→串口
 │  - NAND Flash│  NAND→Flash存储
 └──────────────┘

 ┌──────────┐
 │EJTAG接口 │  JTAG调试(外部引脚)
 └──────────┘
```

## 中断系统

6条中断线汇聚到CPU:

| 优先级 | 中断源 | 信号名 |
|--------|--------|--------|
| 5 | DMA | `dma_int` |
| 4 | NAND Flash | `nand_int` |
| 3 | SPI Flash | `spi_inta_o` |
| 2 | UART0 | `uart0_int` |
| 1 | MAC以太网 | `mac_int` |
| 0 | (预留) | - |

CPU收到 `int_out[4:0]` (5位)，传入 `core_top.intrpt`。

## 时钟与复位系统

| 模块 | 时钟 | 说明 |
|------|------|------|
| CPU核心 | `cpu_clk` (50MHz) | 由 `clk_pll_33` 从100MHz生成 |
| AXI总线(uncore) | `aclk = uncore_clk` (33MHz) | 由 `clk_pll_33` 生成 |
| DDR3子系统 | `c1_clk0` | 由 `mig_axi_32` 的 `ui_clk` 输出 |
| DDR参考时钟 | `c1_clk_ref_i` (200MHz) | 由 `clk_wiz_0` 生成 |

CPU复位经过两级同步: `resetn → cpu_aresetn_1 → cpu_aresetn_2 → cpu_aresetn`。
DDR interconnect复位: 在 `c1_clk0` 时钟域等待 `c1_calib_done` 且 `~c1_rst0` 后释放。

---

## 各模块详解

### 1. core_top (CPU核心)

- **实例名**: `cpu_mid`
- **源文件**: `IP/myCPU/mycpu_top.v`
- **功能**: LoongArch32R 架构5级流水线处理器核心
- **接口**:
  - AXI4 主接口 (AR/R 通道用于读, AW/W/B 通道用于写)，连接到 `cpu_clk` 时钟域
  - 5位中断输入 `intrpt[4:0]`
  - 调试输出: `debug_wb_pc`, `debug_wb_rf_wen`, `debug_wb_rf_wnum`, `debug_wb_rf_wdata`, `ws_valid`
  - 调试交互: `break_point`, `infor_flag`, `reg_num`, `rf_rdata` (与debug_top配合)
- **注意**: CPU的AW通道(写)直接连接到 `AXI_CLK_CONVERTER` 的从端，而AR通道(读)先经过 `axi_2x1_mux` 再到 `AXI_CLK_CONVERTER`

### 2. axi_2x1_mux (AXI 2→1 读通道复用器)

- **实例名**: `u_axi_2x1_mux`
- **源文件**: Xilinx IP (AXI Interconnect 配置为2S→1M，仅AR/R通道)
- **功能**: 将两个AXI读主端(CPU AR通道 + debug_sram AR通道)复用为一个读主端
- **接口**:
  - `S00`: CPU的AR/R通道 (仅读，AW/W/B通道全部置零/无效)
  - `S01`: `debug_sram` 的AR/R通道 (同样仅读)
  - `M00`: 合并后的AR/R通道，输出到 `AXI_CLK_CONVERTER`
- **注意**: 这是Xilinx AXI Interconnect IP，在 `cpu_clk` 时钟域运行

### 3. axi_clock_converter_0 (AXI跨时钟域转换器)

- **实例名**: `AXI_CLK_CONVERTER`
- **源文件**: Xilinx IP (AXI Clock Converter)
- **功能**: 将AXI总线从 `cpu_clk` (50MHz) 时钟域转换到 `aclk` (33MHz, uncore_clk) 时钟域
- **接口**:
  - 从端 (`s_axi_*`): 在 `cpu_clk` 域，接收CPU的完整AXI4通道(AR+AW+W+B+R)
  - 主端 (`m_axi_*`): 在 `aclk` 域，输出异步AXI信号 `m0_async_*`
  - AR通道输入来自 `axi_2x1_mux` 的M00输出; AW通道直接来自CPU
- **关键作用**: 解决CPU 50MHz与uncore 33MHz之间的时钟域跨越问题

### 4. axi_slave_mux (AXI 1主→5从 解码/路由器)

- **实例名**: `AXI_SLAVE_MUX`
- **源文件**: `IP/AMBA/axi_mux_sim.v` (仿真用) / `axi_mux_syn.v` (综合用)
- **功能**: 根据地址将一个AXI主端的请求路由到5个AXI从端
- **从端映射**:
  - **S0**: DDR3 (通过后续 `axi_interconnect_0` 到 `mig_axi_32`) — 主内存
  - **S1**: SPI Flash控制器 — SPI Flash存储
  - **S2**: AXI→APB桥 — 慢速外设(UART/NAND)
  - **S3**: CONFREG — 配置寄存器(LED/数码管/开关/按键)
  - **S4**: MAC以太网(从端接口) — MAC寄存器配置
- **地址解码**: 根据地址高位判断目标从端，`spi_boot` 参数设为1表示从SPI Flash启动
- **运行时钟**: `aclk` (33MHz)

### 5. spi_flash_ctrl (SPI Flash控制器)

- **实例名**: `SPI`
- **源文件**: `IP/SPI/godson_sbridge_spi.v`
- **功能**: AXI从端，通过SPI协议访问外部SPI Flash芯片，用于启动存储
- **接口**:
  - AXI从端: 连接到 `axi_slave_mux` 的S1端口
  - SPI外部引脚: `SPI_CLK`, `SPI_CS`, `SPI_MOSI`, `SPI_MISO`
  - 中断输出: `spi_inta_o`
- **参数**: `spi_addr=16'h1fe8` (SPI控制器基地址), `fast_startup=0`
- **注意**: SPI信号通过IOBUF实现双向; CS低有效; MOSI/MISO方向由 `sdo_en/sdi_en` 控制

### 6. confreg (配置寄存器/显示模块)

- **实例名**: `CONFREG`
- **源文件**: `IP/CONFREG/confreg_syn.v` (综合) / `confreg_sim.v` (仿真)
- **功能**: AXI从端，提供FPGA板上的LED、数码管、开关、按键等I/O控制，以及DMA订单寄存器和定时器
- **寄存器地址映射** (基地址 `0x1fd0_xxxx`):

| 地址偏移 | 寄存器 | 功能 |
|----------|--------|------|
| `0x0000` | cr00~cr07 | 8个通用配置寄存器(R/W) |
| `0x1160` | ORDER_REG | DMA订单地址寄存器; bit[2]=读请求, bit[3]=写完成, bit[4]=DMA启动 |
| `0xe000` | TIMER | 32位定时器(自增计数器) |
| `0xf000` | LED | 16个LED灯控制 [15:0] |
| `0xf004` | LED_RG0 | 2位双色LED(RG0) |
| `0xf008` | LED_RG1 | 2位双色LED(RG1) |
| `0xf010` | NUM | 8位七段数码管数据 |
| `0xf020` | SWITCH | 8位拨码开关输入 |
| `0xf024` | BTN_KEY | 4×4矩阵键盘输入 |
| `0xf028` | BTN_STEP | 2位步进按键输入 |
| `0xf030` | FREQ | 返回时钟频率常量(33MHz) |

- **数码管**: 动态扫描方式，8位七段数码管，用 `count[19:17]` 做3位扫描选择
- **矩阵键盘**: 4×4矩阵扫描，含消抖处理，状态机逐列扫描检测按键
- **步进按键**: 含消抖处理，两路独立检测
- **DMA交互**: `order_addr_in`, `write_dma_end`, `finish_read_order` 与DMA控制器配合

### 7. ethernet_top (以太网MAC控制器)

- **实例名**: `ETHERNET_TOP`
- **源文件**: `IP/MAC/ethernet_top.v`
- **功能**: 以太网MAC层控制器，支持10/100Mbps MII接口，具有AXI主端(DMA收发)和AXI从端(寄存器配置)
- **接口**:
  - AXI从端: 连接到 `axi_slave_mux` 的S4，CPU通过此接口配置MAC寄存器
  - AXI主端: 连接到 `axi_interconnect_0` 的S01，MAC DMA读写DDR3中的数据缓冲区
  - MII接口: `mtxclk/en/d/err` (TX), `mrxclk/dv/d/err/coll/crs` (RX)
  - MIIM接口: `mdc_0`, `mdio_0` (PHY管理接口，通过IOBUF双向)
  - 中断: `mac_int`
- **内部结构** (源文件 `IP/MAC/` 目录):
  - `mac_top.v`: MAC核心，含TX/RX状态机、CRC校验
  - `mac_axi.v`: MAC的AXI接口适配
  - `csr.v`: MAC控制/状态寄存器
  - `dma.v`: MAC内部DMA引擎(收发描述符)
  - `tfifo.v/rfifo.v`: TX/RX FIFO缓冲
  - `rtlsm.v/tlsm.v`: RX/TX链路状态机

### 8. axi_interconnect_0 (DDR3 AXI互联 — 3主→1从)

- **实例名**: `mig_axi_interconnect`
- **源文件**: Xilinx IP (AXI Interconnect, 配置为3S→1M)
- **功能**: 将3个AXI主端的访问合并路由到1个DDR3控制器从端
- **主端**:
  - **S00**: `axi_slave_mux` 输出的s0通道(CPU经地址解码后的DDR访问)，在 `aclk` 域
  - **S01**: MAC的AXI主端(以太网DMA访问DDR)
  - **S02**: DMA控制器的AXI主端(外设DMA访问DDR)
- **从端**:
  - **M00**: `mig_axi_32` DDR3控制器，在 `c1_clk0` 域
- **时钟域**: Interconnect运行在 `c1_clk0` (DDR控制器输出时钟)，从端通过时钟域转换适配

### 9. mig_axi_32 (DDR3内存控制器)

- **实例名**: `mig_axi`
- **源文件**: Xilinx IP (MIG 7 Series, DDR3 SDRAM控制器)
- **功能**: AXI从端，控制外部DDR3 SDRAM芯片的读写操作
- **接口**:
  - AXI从端: 接收来自 `axi_interconnect_0` 的合并访问
  - DDR3物理接口: `ddr3_dq/dqs/addr/ba/ras/cas/we/odt/cke/dm/ck/reset` 等信号
  - 时钟: `sys_clk_i` = 100MHz板级时钟; `clk_ref_i` = 200MHz参考时钟; 输出 `ui_clk` (`c1_clk0`)
  - 校准: `init_calib_complete` (`c1_calib_done`)
- **注意**: 地址线仅27位 (`mig_awaddr[26:0]`), 支持最大128MB DDR3空间

### 10. dma_master (DMA控制器)

- **实例名**: `DMA_MASTER0`
- **源文件**: `IP/DMA/dma.v`
- **功能**: 外设DMA控制器，在DDR3与慢速外设(UART/NAND)之间搬运数据
- **接口**:
  - AXI主端: 连接到 `axi_interconnect_0` 的S02，读写DDR3(64位数据宽度)
  - APB从端: 通过APB总线直接读写外设(UART/NAND)，与 `axi2apb_misc` 共享APB
  - DMA订单: 从CONFREG的 `order_addr_in` 获取传输参数:
    - `order_addr_in[31:5]`: 传输地址
    - `order_addr_in[4]`: DMA停止标志
    - `order_addr_in[3]`: DMA启动标志
    - `order_addr_in[2]`: 读请求标志
    - `order_addr_in[1:0]`: 目标设备编号(UART/NAND)
  - 中断: `dma_int`
  - DMA握手: `dma_req/dma_ack` 与APB设备协调总线使用权
  - DMA授权: `dma0_gnt` (由 `axi2apb_misc` 仲裁后授权)
- **工作流程**: CPU写CONFREG的ORDER_REG → DMA读取订单 → DMA从DDR3读数据 → DMA通过APB写外设(或反向)

### 11. axi2apb_misc (AXI→APB桥 + 外设子系统)

- **实例名**: `APB_DEV`
- **源文件**: `IP/APB_DEV/apb_dev_top_with_nand.v`
- **功能**: AXI从端，将AXI协议转换为APB协议，并挂接UART0和NAND Flash控制器; 同时仲裁CPU和DMA对APB总线的访问
- **接口**:
  - AXI从端: 连接到 `axi_slave_mux` 的S2，CPU通过AXI访问APB外设
  - APB仲裁: CPU和DMA共享APB总线，`dma_grant` 控制总线授权
  - UART0: 全功能串口(TX/RX/RTS/DTR/CTS/DSR/DCD/RI)，波特率可配置，中断输出 `uart0_int`
  - NAND Flash: 1Gbit NAND Flash控制器，中断输出 `nand_int`
  - DMA交互: `dma_req_o/dma_ack_i` 握手信号
- **内部结构**:
  - `axi2apb_bridge`: AXI→APB协议转换桥
  - `apb_mux2`: APB总线2→1复用(CPU访问 vs DMA访问)
  - UART模块 (`IP/APB_DEV/URT/`): 16550兼容UART，含TX/RX FIFO、Modem控制
  - NAND模块 (`IP/APB_DEV/nand_module.v`): NAND Flash控制器，支持1Gbit器件

### 12. debug_top (调试串口模块)

- **实例名**: `u_debug_top`
- **源文件**: `IP/DEBUG/debug_top.v`
- **功能**: 通过UART2(9600bps)与外部调试工具通信，实现断点、单步、查寄存器、查内存等调试功能
- **接口**:
  - UART2: `UART_RX2`(输入), `UART_TX2`(输出) — 独立调试串口
  - CPU调试信号: `debug_wb_pc`, `debug_wb_rf_wnum`, `debug_wb_rf_wdata`, `ws_valid`
  - CPU交互: `break_point`(断点触发), `infor_flag/reg_num`(查寄存器), `rf_rdata`(寄存器数据返回)
  - 内存查询: `infom_flag/start_addr`(查内存请求), `mem_flag/mem_rdata`(查内存结果)
- **内部子模块**:
  - `uart_recv`: UART接收器，9600bps
  - `uart_send`: UART发送器，9600bps
  - `trace_debug`: 调试命令解析与执行状态机
- **支持的调试命令**:
  - `01`: Trace — 追踪指定PC处执行信息(写回寄存器号+数据)
  - `02`: Breakpoint — 设置断点(PC地址)
  - `03`: Continue — 继续执行
  - `04`: Infor reg — 查询指定寄存器值
  - `05`: Infom mem — 查询指定内存地址的值
  - `06`: Step — 单步执行
  - `07`: List — 输出当前PC值

### 13. debug_sram (调试内存查询代理)

- **实例名**: `u_debug_sram`
- **源文件**: `IP/DEBUG/debug_sram.v`
- **功能**: 辅助 `debug_top` 实现内存查询功能; 当调试器请求查询某个内存地址时，该模块通过AXI AR通道发出读请求，从DDR3/SPI/CONFREG中读取数据并返回给 `debug_top`
- **接口**:
  - AXI从端(仅AR/R读通道): 连接到 `axi_2x1_mux` 的S01端口，与CPU读通道复用
  - 调试交互: `infom_flag/start_addr` (查询请求), `mem_flag/mem_rdata` (查询结果, 8字节)
  - 冲突处理: `break_point` 和 CPU `rready` 信号用于协调debug_sram与CPU同时访存的冲突
- **工作原理**:
  - 收到 `infom_flag` 后，对 `start_addr` 发起AXI读请求(ARID=2)
  - 读取64位数据后，根据 `start_addr[2:0]` 选择对应字节返回
  - 如果CPU也在读(`rid!=2`的响应)，暂存CPU数据等到 `break_point` 消除后回传

### 14. clk_pll_33 (时钟PLL)

- **实例名**: `clk_pll_33`
- **源文件**: Xilinx IP (Clocking Wizard)
- **功能**: 从100MHz板级时钟生成CPU和uncore所需时钟
- **输出**:
  - `clk_out1` → `cpu_clk` (50MHz) — CPU核心时钟
  - `clk_out2` → `uncore_clk` (33MHz) → `aclk` — AXI uncore总线时钟

### 15. clk_wiz_0 (DDR参考时钟PLL)

- **实例名**: `clk_pll_1`
- **源文件**: Xilinx IP (Clocking Wizard)
- **功能**: 从100MHz板级时钟生成DDR3控制器所需的200MHz参考时钟
- **输出**: `clk_out1` → `c1_clk_ref_i` (200MHz)

---

## 数据流总结

### CPU读内存路径

```
CPU AR通道 → axi_2x1_mux(S00) → AXI_CLK_CONVERTER(s_axi AR) → axi_slave_mux(主端)
  → 地址解码 → S0: DDR(axi_interconnect_0 → mig_axi_32 → DDR3芯片)
  → 地址解码 → S1: SPI Flash(spi_flash_ctrl → SPI总线)
  → 地址解码 → S2: APB外设(axi2apb_misc → APB → UART/NAND)
  → 地址解码 → S3: CONFREG(LED/数码管/开关)
  → 地址解码 → S4: MAC寄存器
```

### CPU写内存路径

```
CPU AW/W/B通道 → AXI_CLK_CONVERTER(s_axi AW/W/B) → axi_slave_mux(主端)
  → 地址解码 → 同上5个从端
```

### 调试查内存路径

```
debug_top → debug_sram(AR) → axi_2x1_mux(S01) → AXI_CLK_CONVERTER → axi_slave_mux → DDR3
```

### MAC以太网数据路径

```
MAC TX: MAC内部DMA(AXI-M) → axi_interconnect_0(S01) → mig_axi_32 → DDR3读数据 → MAC TX FIFO → MII发送
MAC RX: MII接收 → MAC RX FIFO → MAC内部DMA(AXI-M) → axi_interconnect_0(S01) → mig_axi_32 → DDR3写数据
```

### DMA数据搬运路径

```
CPU写ORDER_REG → DMA读订单 → DDR3读写(AXI-M→axi_interconnect_0 S02→mig_axi_32)
                               APB外设读写(APB→axi2apb_misc→UART/NAND)
```

## 外部引脚接口汇总

| 接口 | 引脚 | 连接模块 |
|------|------|----------|
| GPIO | LED[15:0], LED_RG0/RG1, NUM_CSN/A_G, SWITCH[7:0], BTN_KEY/STEP | confreg |
| DDR3 | DQ, ADDR, BA, RAS/CAS/WE, ODT, CKE, DM, DQS, CK, RESET | mig_axi_32 |
| Ethernet | MII TX/RX, MIIM MDC/MDIO | ethernet_top |
| EJTAG | TRST, TCK, TDI, TMS, TDO | (外部接口) |
| UART0 | UART_RX, UART_TX | axi2apb_misc (UART0) |
| Debug UART | UART_RX2, UART_TX2 | debug_top |
| NAND | CLE, ALE, RDY, DATA, RD, CE, WR | axi2apb_misc (NAND) |
| SPI Flash | SPI_CLK, CS, MISO, MOSI | spi_flash_ctrl |