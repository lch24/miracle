// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 30 11:28:50 2026
// Host        : lch-LAPTOP-V8BK1R8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/ayxtk/chiplab/fpga/loongson/2023.2/system_run.runs/data_bank_sram_synth_1/data_bank_sram_sim_netlist.v
// Design      : data_bank_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_bank_sram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_bank_sram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_bank_sram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  data_bank_sram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19744)
`pragma protect data_block
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
eYjlWOQ7Eepya6CiyxVAqKyoGAwGtQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
