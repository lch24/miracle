// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 30 11:38:25 2026
// Host        : lch-LAPTOP-V8BK1R8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ayxtk/chiplab/IP/xilinx_ip/2023.2/dpram_512x32/dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module dpram_512x32
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
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
  (* C_INIT_FILE = "dpram_512x32.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dpram_512x32_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20480)
`pragma protect data_block
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
WMDTFSkItnLlketATEbdDsQ=
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
