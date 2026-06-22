# SoC AXI 协议与总线架构分析

> 基于 `soc_top.v` 和 `config.h`（loongson 目录）整理

## 1. 协议版本判定

**CPU 侧：AXI3 | DDR3 侧：AXI4**

核心判断依据：

| 特征 | AXI3 | AXI4 | 本设计 CPU 侧 | 本设计 DDR3 侧 |
|------|------|------|---------------|----------------|
| Awlen / Arlen 位宽 | 4 bit | 8 bit | 4 bit (`Lawlen=4`, `Larlen=4`) | 8 bit (`mig_awlen`, `mig_arlen`) |
| Awlock / Arlock 位宽 | 2 bit | 1 bit | 2 bit (`Lawlock=2`, `Larlock=2`) | 1 bit (`mig_awlock[0:0]`) |
| WID 信号 | 存在 | 不存在 | 存在 (`m0_wid`) | 不存在 |
| 最大突发长度 | 16 拍 (len=15) | 256 拍 (len=255) | 16 拍 | 受 AXI3 Master 限制，实际仍为 16 拍 |

## 2. CPU 侧 AXI3 参数（config.h 宏定义）

### 2.1 关键信号位宽

| 信号类别 | 宏名 | 位宽 | 含义 |
|----------|------|------|------|
| **地址** | `Lawaddr` / `Laraddr` | 32 | 4 GB 地址空间 |
| **突发长度** | `Lawlen` / `Larlen` | 4 | 编码 0~15，表示 1~16 拍 |
| **突发大小** | `Lawsize` / `Larsize` | 3 | 编码 0~7，最大 2^7=128B/拍 |
| **突发类型** | `Lawburst` / `Larburst` | 2 | FIXED / INCR / WRAP / Reserved |
| **锁类型** | `Lawlock` / `Larlock` | 2 | NORMAL / EXCLUSIVE / LOCKED / Reserved |
| **Cache 属性** | `Lawcache` / `Larcache` | 4 | AXI Cache hint |
| **保护类型** | `Lawprot` / `Larprot` | 3 | AXI Protection hint |
| **ID** | `LID` / `Lawid` / `Larid` / `Lwid` / `Lbid` / `Lrid` | 4 | 最多 16 个 Outstanding 事务 |

### 2.2 数据位宽（条件编译）

| 条件宏 | `Lwdata` | `Lwstrb` | `Lrdata` | 一拍传输量 |
|--------|----------|----------|----------|-----------|
| 默认（无定义） | 32 | 4 | 32 | 4 字节 |
| `AXI64` | 64 | 8 | 64 | 8 字节 |
| `AXI128` | 128 | 16 | 128 | 16 字节 |

### 2.3 响应位宽

| 宏名 | 位宽 | 含义 |
|------|------|------|
| `Lbresp` / `Lrresp` | 2 | OKAY / EXOKAY / SLVERR / DECERR |

### 2.4 一次突发最大传输量

| 配置 | 计算 | 结果 |
|------|------|------|
| 默认 (32bit) | 32bit × 16 拍 | **64 字节** |
| AXI64 | 64bit × 16 拍 | **128 字节** |
| AXI128 | 128bit × 16 拍 | **256 字节** |

## 3. DDR3 侧 AXI4 参数

| 信号 | 位宽 | 说明 |
|------|------|------|
| `mig_awid` / `mig_arid` / `mig_bid` / `mig_rid` | **8 bit** | Interconnect ID 扩展，区分多 Master |
| `mig_awlen` / `mig_arlen` | **8 bit** | AXI4 突发长度 |
| `mig_awlock` / `mig_arlock` | **1 bit** (`[0:0]`) | AXI4 锁类型 |
| `mig_awaddr` / `mig_araddr` | 27 bit (`[26:0]`) | MIG 实际可用地址（最大 128MB DDR3） |
| `mig_wdata` / `mig_rdata` | 32 bit (`Lwdata`) | 与 CPU 侧一致 |
| `mig_awsize` / `mig_arsize` | 3 bit | 与 CPU 侧一致 |
| `mig_awburst` / `mig_arburst` | 2 bit | 与 CPU 侧一致 |
| `mig_awcache` / `mig_arcache` | 4 bit | 与 CPU 侧一致 |
| `mig_awprot` / `mig_arprot` | 3 bit | 与 CPU 侧一致 |
| `mig_bresp` / `mig_rresp` | 2 bit | 与 CPU 侧一致 |
| `mig_wstrb` | 4 bit (`Lwstrb`) | 与 CPU 侧一致 |

## 4. 各模块 AXI 协议一览

### 4.1 AXI3 域模块（通过 `axi_slave_mux` 连接）

| 模块 | 实例名 | 角色 | Awlen/Arlen | Awlock/Arlock | 数据位宽 |
|------|--------|------|-------------|---------------|----------|
| core_top | `cpu_mid` | Master | 4 bit | 2 bit | 32 bit |
| debug_sram | `u_debug_sram` | Master | 8 bit | 2 bit | 32 bit |
| axi_2x1_mux | `u_axi_2x1_mux` | 读 Mux | 4 bit | 2 bit | 32 bit |
| axi_clock_converter_0 | `AXI_CLK_CONVERTER` | 跨时钟域 | 4 bit | 2 bit | 32 bit |
| axi_slave_mux | `AXI_SLAVE_MUX` | 地址解码 | 4 bit | 2 bit | 32 bit |
| spi_flash_ctrl | `SPI` | Slave (S1) | 4 bit | 2 bit | 32 bit |
| confreg | `CONFREG` | Slave (S3) | 4 bit | 2 bit | 32 bit |
| ethernet_top | `ETHERNET_TOP` | Slave (S4) + Master | 4 bit | 2 bit | 32 bit |
| axi2apb_misc | `APB_DEV` | Slave (S2) | 4 bit | 2 bit | 32 bit |
| lcd_ctrl | `LCD_CTRL` | Slave (S5) | 4 bit | 2 bit | 32 bit |
| ps2_ctrl | `PS2_CTRL` | Slave (S6) | 4 bit | 2 bit | 32 bit |

### 4.2 AXI4 域模块（通过 `axi_interconnect_0` 连接）

| 模块 | 实例名 | 角色 | Awlen/Arlen | Awlock/Arlock | ID 位宽 | 数据位宽 |
|------|--------|------|-------------|---------------|---------|----------|
| axi_interconnect_0 | `mig_axi_interconnect` | Interconnect | 8 bit | 1 bit | 8 bit | 32 bit |
| mig_axi_32 | `mig_axi` | DDR3 Slave | 8 bit | 1 bit | 8 bit | 32 bit |

### 4.3 dma_master —— 混合位宽

| 信号 | 位宽 | 传给 interconnect 的适配 |
|------|------|-------------------------|
| `dma0_awlen` / `dma0_arlen` | 4 bit (AXI3) | `{4'd0, dma0_awlen}` 扩展到 8 bit |
| `dma0_wdata` / `dma0_rdata` | **64 bit** | 比 CPU 侧的 32 bit 更宽 |
| `dma0_wstrb` | 8 bit | 对应 64 bit 的 byte strobe |
| `dma0_awlock` / `dma0_arlock` | 2 bit (AXI3) | `dma0_awlock[0:0]` 截取到 1 bit |
| `dma0_awid` / `dma0_arid` | 4 bit (`LID`) | 保持 4 bit |

## 5. AXI3→AXI4 协议转换详解

`axi_interconnect_0` 是 AXI3→AXI4 的关键桥梁，所有从 AXI3 域进入 DDR3 的请求都经过它：

### 5.1 突发长度扩展

```
AXI3 Awlen[3:0] → {4'b0, s0_awlen} → AXI4 Awlen[7:0]
AXI3 Arlen[3:0] → {4'b0, s0_arlen} → AXI4 Arlen[7:0]
```

前 4 bit 固定补零，因此 AXI3 的突发长度值 (0~15) 在 AXI4 侧含义不变（0 表示 1 拍，15 表示 16 拍）。

### 5.2 锁类型截取

```
AXI3 Awlock[1:0] → s0_awlock[0:0] → AXI4 Awlock[0]
AXI3 Arlock[1:0] → s0_arlock[0:0] → AXI4 Arlock[0]
```

AXI3 的 2 bit lock 截取最低位传给 AXI4。AXI3 的 EXCLUSIVE (01) 和 LOCKED (10) 在截取后分别变为 1 和 0，只有 EXCLUSIVE 请求能正确传递。

### 5.3 ID 扩展

```
S00 (CPU):     4 bit ID → Interconnect 内部扩展 → 8 bit ID
S01 (MAC):     4 bit ID → Interconnect 内部扩展 → 8 bit ID
S02 (DMA):     4 bit ID → Interconnect 内部扩展 → 8 bit ID
M00 (DDR3):    8 bit ID
```

Interconnect 通过 ID 高位区分不同 Master 的请求，避免事务 ID 冲突。

### 5.4 AXI3 的 WID 信号

AXI3 允许 W 通道携带 WID（与 AWID 独立），AXI4 取消了 WID。本设计中 CPU 侧仍有 `m0_wid`，经过 Interconnect 后在 M00 端消失。

## 6. 数据路径架构图

```
                         ┌─────────────────────────────────────────────────────┐
                         │                   cpu_clk (50MHz) 域                 │
                         │                                                     │
  core_top (AXI3 Master) │  AW/W/B ──→ AXI_CLK_CONVERTER ──→ m0_async_aw*    │
                         │  AR/R   ──→ axi_2x1_mux ──→ m1_ar*                │
                         │                ↑                                     │
  debug_sram (AR only)   │                │ S01                                 │
                         │                ↓                                     │
                         │           m1_ar* → AXI_CLK_CONVERTER → m0_async_ar*│
                         └─────────────────────────────────────────────────────┘
                                                    │ (跨时钟域)
                                                    ↓
                         ┌─────────────────────────────────────────────────────┐
                         │                   aclk (33MHz) 域                    │
                         │                                                     │
  m0_async_* ───────────→│  axi_slave_mux (AXI3, 地址解码)                     │
                         │    S0 → DDR3 (s0_*)    S1 → SPI (spi_s_*)          │
                         │    S2 → APB  (apb_s_*)  S3 → Confreg (conf_s_*)    │
                         │    S4 → MAC  (mac_s_*)  S5 → LCD (lcd_s_*)         │
                         │    S6 → PS2  (ps2_s_*)                              │
                         │                                                     │
                         │    S0_* (AXI3) ──→ axi_interconnect_0               │
                         │                     │ (AXI3→AXI4 转换)              │
                         │    mac_m_* (AXI3) ──→│ S01                          │
                         │    dma0_*  (混合) ──→│ S02                          │
                         │                     ↓                               │
                         │              M00 (AXI4) → mig_axi_32 (DDR3)        │
                         └─────────────────────────────────────────────────────┘
```

## 7. 时钟域划分

| 时钟域 | 频率 | 覆盖模块 | 来源 |
|--------|------|----------|------|
| `cpu_clk` | 50 MHz | core_top, axi_2x1_mux, AXI_CLK_CONVERTER 从端 | clk_pll_33 (100→50) |
| `aclk` / `uncore_clk` | 33 MHz | axi_slave_mux, spi, confreg, mac, lcd, ps2, APB, DMA, interconnect 从端 | clk_pll_33 (100→33) |
| `c1_clk0` | 由 MIG 生成 | axi_interconnect_0 主端, mig_axi_32 | mig_axi_32.ui_clk |
| `c1_clk_ref_i` | 200 MHz | MIG 参考时钟 | clk_wiz_0 (100→200) |

AXI_CLK_CONVERTER 负责 `cpu_clk` (50MHz) ↔ `aclk` (33MHz) 的异步桥接。