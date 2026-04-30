// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 30 11:28:51 2026
// Host        : lch-LAPTOP-V8BK1R8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/ayxtk/chiplab/fpga/loongson/2023.2/system_run.runs/tagv_sram_synth_1/tagv_sram_sim_netlist.v
// Design      : tagv_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_sram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module tagv_sram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [20:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [20:0]dina;
  wire [20:0]douta;
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
  wire [20:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.08085 mW" *) 
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
  (* C_INIT_FILE = "tagv_sram.mem" *) 
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
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tagv_sram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[20:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20240)
`pragma protect data_block
/5ZZ1AwFeAZzkCTS6YmPCCRffr1KTUX0kdgBosaOlvolgO2pxV5QO+ZmmlHlccc1DLYZWqQ6EqO1
NQ3xE3CUeNI/YNeQYowf+ixpiF9WFvrqOUvlatInaCisNzygOMmIfbgf4EFEZbcOVL+FM0SKc0OY
GhYGkuNCHO5GRFHTCjbZ/GopWMFOXCox4mrQL+ptuOxW5nyzDrbJvJFwdCqLp5TEzcKsuiqdCucn
7oAEHsUqHlyS7eysPF5oSLgGquvjidAADSeGyLyk03DIPWwxp6M5zQ1E4853KtmnUEI1yNPSz9TY
THnmUMOGI7GMmltDSMhXJzBjr2032znJyGm2DhnbCUIyaiBcR6GmOjUO+DCrYBkxS7BigExo1LgE
9276upp48Piz8RRyI+33ytecKR50B+yMPbKSL02iYn/3+2zSfPXu6xNLJhpHAoBg+exJKNGibWgi
gG2Vten20RJg76LYkfHuUm8dx1IRl4bUnnebdi1HxmtQu+HcHfzO7m2T+vjJNIuv8bqTQ/Q0+7Cw
S/OsqGzOU8fAHqzAjy6Wg2pEXO/PqaUOJy+Rk7VxS98TTa/Na/SPvL6Qgp2eBVEZ1ss4VMQmCbIn
PAZe+d6MW3S75dbop9vshwjUTUHvhrdCoH++eiXKYtohWj7YHugqsyyWmtp8SzD/JMcKXtonvOkQ
5gnB8C2SEXDZ5jicMJZqyk7Mkb3t9fpKdUoxafIPbiWcbPoFxY/Vk8FQA3jxfQwOp/rOfY/2yNZs
+A07uUJvaDWAQoQi1IkmH5tbN2TprHlVInEn5tlTAdwuqGsUU+zalE28S/5K0XKsc6D4RqEtY20n
ykmsNdiEGHfWSHG1JpWCK1hG9RiI3w4a6ZuJhTJF7Y7TmjBQOVHqCEDW6q4MudNXrCvoOUgcWIZe
GH9YL7vcU6avz2JuLaSWoinnvmZES2lmhIoEQ0XRLYgvoVBHb6QUWOIuj3mfckZI/TgxMlkF9wBN
4hET0R3F+ICYjVT7mxEzYWY0Qz/WuYZbs8QGm1dGSMX316/nDG+pAvW0E4OQ7TX/W0zq/Rfah8xq
L3loDG3g4GsLg2EvrJf6BqVpyz2TLiBn6fd92oP3KA/sqjFvVyNKBmiK+kzquW+fWfQI5HNzkWxG
EZrxDI5neyHovTLZ2q6hbWZjDwL6keIzdOyIzrH8nzEHeeacItYTIj508QaAvfaZGqQbH2fXhC8D
Fb0equ6heI375MwxzN3oNTlEqlt2TG/mWvFnPU+altKUBpedDOsdYSr0BvnadmcgHm3wBbz2F9da
q8wET9AFwFE2whFdRV/0PjBVioqzg2qrnX0Eo/0OIv6eiWlYgoGXMQAgfWCfMfiNOVjPs7YsZkjT
X36AxRWckzbC3aIQmB84MT3x966tXuvcOM3ZKE2Bx5iK0Jv9JORQjMCWTYELRioVFX0HFmTs6asy
ivhXJBvp7EfWS6ZJurdWcIU40PgyKYeyuJqcXWQkcpOH4t222hJ4SWY3igPvxta0fEv5nL5FNnDc
GoVAGsJVVNNlGK+XH6ddVw5Iw5TsfYp7NXqWNperQCIkrDdavSxJmQ2Bci5hMTix0mitz9SiHkCj
LmD+8ZorBq8MqmBGmN2l/Q8KwGl0uupFjMEgF78ySu6lANoMtrfY0kHqyMwJv26OMukiC3Y7OMDI
RcQ8JOdl0NDyY/vkjtAZWc9URqfFFY8QdbOV+Vn3FGfWmmX2SJ2AwaGZ8Zr+lMTCF2iRDqfKDlJS
4EHVfhJpAOZsdVLdcxXJCJTqHO1iFdtR9qNxDIVsieM3/VpZkPz3ewHjg0ESI9u8ge53/uaYv2Ie
VGKy+26Ut05l93TGs5hNkZOO8roCaWwxW6k5EYaK+nkp3gRp2dddnpG4Y0G4HFQJiqRPuUHEyB8x
OZs5Kgob7OGmeAEDnCUcEOf1vXgwnZv7YslY5CW/wSM+2d3hlNurTCYS36JbnW9vqQR8KA+ObdmW
qQiAWZi7nZMu8L+v3jwmbOJI6iyE1oNJX2SaMNyZEFKffZb13ciu4NLmyK104e+L1QaCtIIQ4VZN
cK/f2pjdFtmq2q+Xmo4S9nyFFV2HXBVLclGBJhI6HMFt8mMNm445CJLCmjUj8iwLFQIvMfatMF6O
alTVpEKgi6PgyXJv5dwFCXlDlJKPfCxQMfvKKhov7CUprOrohBPkBiO/7InouoXznHN/lXrRZ0/K
/U+12mOn6T5nBJB7u87IHyE22bN6LsSHJhfuJJqCjezEJFMnNzToySDQubqmQUtYCL6EGmj7BJRP
l2t6AEo67NhQf2NuAKEvlItZTabRF3oZtKemPseVOzyrcHSLSIiq3PKH2exSX31zcHvnShxRb0dK
ItV3y3LFNZhfw2lULas34fP23LeR9A/v4e2s1w/E1QZRHwqQUrOkmz0U8dP4rP5jXwdBkaexQw7V
4nSItswWCIHLxVpESz3L+DyFW12dGjG6sBIOyfhBRQRAM6di6FR7UkFfV9ZCjo12to4A8/yxuBG+
25VqeRJzoMFymgHEWwhfPl6tDRu7sIMO5CS6HQ0N3ehM+JYFB0FjOb57wR1TQzNvTYA3I5qJ2sPH
CvyjeTcpSRi3v8lrphsAEJMOEBrCtZHZmje7tQlZvTRfOolnVg6qOQt4SiLN1UX4Jgul2XpCCzh5
YsstpTidftoFyMCN5SBnJ/Hcopo3Q6GXZTen2MQxm9MrGce3iIrc/cpjcLgc4bH5GNYoTgwU75lH
F20nTE5SxyYOokIoDWzcRD3iSX9ihBsmRkeBEbAgCUzlN4RsX9xzpZCPa5IYGL7+2onR28VYfnsW
vZfKZnR97v70JhIa3LmtU4OSys+r6Mj/hPgTQH23DfexIS7Nli6+gTfmKsroMKGTCMOZerPiogE2
38wXxoJz4eLwGfAlwYDT/GgYq7RJi/OUUPcbF1sTjecMKwqUjcIe93Nt7I6f/VkWnX0UClUbLR+K
L6A8K2AfDp3Fv1OU3c9lbhpMZ76H/2v5sjoRviJnhEp/MRUvZOcUSnOxMuHAVOBCiP8t02IbvRCg
+wqfKq05p98KiNQ5ikHocVQw8YRfZHwyzhShcworOSDvXKSTFkUYQ3yFHCpx+5rUs2V9J6P8aaR2
hhuHe+yaMeexIeezCUrUXoCoWWjYTkDS6ute5ljqFIXh3MtpQBXtDz4+bvuTwd+XSVvzSVXOkOTQ
8rGtykDBJZAkOo06k1M1vhGIpS6j3coK4bub2ZBKxpJu0bs48mMKttzE78TzO8zfJ7fOTEJv9nUL
+7AnMbozDoKRd07ONjBNALswEUeulIX0y/wrzwrIVl6HPMAvd5jTT13CN09ubmDqaawzbKL5QJHc
N+p3uIGFl67j2A9A+hmAT4MiXoaBqQ40ptG7bVbwGzgIP3mpDOkfjSR9/yq5FzPSlInm+45gdOiL
oZsH7cEkGGFJpktjfyHy+AO24vxFwEvjLoy/4iZBLwCOt6tZRG2ZZiV1KLOdjLxZhN6G31DihZfY
j1DG1CCwHme4u09BoRxOhO3SAsjgwGVcEx9nJLosl84uBsJeD1dtHuBiXkGlFvHGMAw6FWgEE72k
bzYFKldgOKDj+d1fCoVWxh8nwhXmV9ym7SZkFy7J2oOLUJppSWXQ9BfajUGliaYv3P3bBeBgd3i+
TM6JiK81/3s2ObR5IUVw1MM4R0JzdvKKP2wexeSTkaFT/nxtNx1GyMbxjMo7eGgPQL8rcKCq1+k7
kTXzvGIMr2wqN5NMfaObvaN3sqd6js5hFKhI7TmN7ppsDqeU5UaDYp4G4DQDCbsAfG79DhdAR7Vx
GaMOz9Jv4jT/wzlz2+IO1zcg75E4hDfXwZYxz6Y7m8jUfVKm0L0eUJJmt3OTsRZVy8Ct4Gx6h4I0
kBney94SG82a82+5NeQSNMt8Rj+2s+o5W10PY8Kujj4WfqSlropfdTgxpjaOb4CRQA+pzmOlLaIn
ZEspA+Rh/XOYgGY5BeCaBnzu71v+Ap+24nqnsEA2zTiq1icL2ioTMDB+crbrW4KpxOLKVZY1jCat
PfNqoKHoG5wl7qMy74j8VddBh3FObHPXDERhA5ACOhzWuc4f/8UUWJA5LpE3A+bo902Ik4H4/kSu
bfhL4kbdgEKD1C2ZJY7pdS62yAN2eOwP+3JtHelA4ATovyS6/keHl3WeQzb9NFc3mKxJ8uDCcXO8
pUVkRi+oll5k4UVFZMF0aWGz8VADnTxP6HXLupkbUcJdF2IvA1AL+2dJeOO0G5Giocfv8TKE9Nto
BpLrZkPwfBtq5lnnTkThDNsvL/Ze6MJBuDOngX+JFVlJE32KuQwMLQR6EqZeUS5oOF1+Lrs0TJDH
rZeJmajiEZ38J2FaWdeHYpUn14xChrAZJGU+Zp3sNuPfEh27OQSrWqwpQGl6NyAahsUcqsMY4knX
E6A61/atpgT89rjeX0dzRrAiK6/77vTE+vn7KRISIlFrQ81AYWG/U5PvK9BNOIuPwoK4DamvFkxH
0weL8fI0m0zq+jv8uHMymz+ZZ4WOLlpEnPq6XXSapTCXq2+UO7InbzG5KLmzmbzbcG9C1EnDUwRI
mKbEJxGeSPw1PqrqQmzHzis0gA+nRkiPZjavBUffpbHos7cPyLVdRLncE0ptn0vUehs1/BNDi84R
5HzdTY+M8YQy6fpBEwXWlYaU+T6DxiQEKEgGj02gTttDZB3+nDNR4VUNlkPvN3z3tI1TG2kaq0Xj
Uty/KXglCu/IJsNKpImiSc8BrzXF/5m1riQ/wgIwrJvsgF2+MrC/3TG4Pn4PrkOgqNJoNcUVrcGz
6kGEu/t0tkfNGHC0Pr9K4moumnUAqce9ri6ROJGYLLxlVB9xGy3MbALWYqHTW9X0Phl0zYDWxtlg
Ndgo2Ltx0M+4Nz+tJ8gC54pKVvPUwD53T7zr8/H4YRg2Z57habs4fB2LHLUt/EzRtKzNK4U6k2pz
C3jMAgJcoe1/pVivkgg5Oa1kKR0vZkPOejkvDbW4z9BY9fKtv9ElQvwv0Y3IYKT8dJ5DxNlCex8+
tEOjMTp2ZA4OgEUlp8+RQAkxtnFCsTp03+hbxWywqBqB5jytEA8sOhEKnBMpsntjcGiKsvvz+sxI
ku7FTV4qGU1/tF4Vw1mAKke0RpUWPksrQCuqsUclrRRNcRfRXrUEVKRENtsQb/dKAUbW2epDIHr+
Q1rh+ZpCYlV6LET8xOvX9dlTZkb+Cs9eK3oryo1ualtWX61ZoGbTCmee39TGmPBQ29Adc2A3XefG
qvTsV1WaxIlAYksLe/mYnroIV0Gp3WpeAOzAwhUjgugmJnKyJcEeYbgft2EG0BM7ZWD2kEK1eCuH
7tUUX8DWF9v/HDsXpddSIDkGEzCS7vW7Q7RPdobnZOgvnimZyZNM9gXFgSsooU3F16MChNB8lbT1
ZLeOKuE36xo+C3i+kbj5kA9tZAzy/hlv5prDHCOlSAwrn0nuucsuq7CIgSgGnCJX25reJmpDLaMg
62jOblDS0xDuuV6TLnto2jwI2Nx1ky9Tnn9zj7v/dNB2peOGYngqSwVl49CoeP7KTnRavxt/d1xn
vP1CMJbocSSIY6RtIYyw7hMpD/MlOMuoQCD5Qc3bhW5PGNY2h2zhOA/U5mlI6t0JFZQ8rKGv28p3
tMhaAgw1WtdTbj5O5KzNAAHHyKdhNAxGoL9hrcpli8zfheRnEoYgL5XxLD2i+u3yXFBVOyN8xonz
Ts7CmQ3G+TIFPe8cAHj8NDvhaS+aqUxZpVGgfgHCUyL/+SZAGez6HDXq9RhRENGL/oNVC/fevZ9D
l6ESdjtv1XYJW9AMQUYSdW5/7QrV00xh1cHJHda7KTzgjIsUBs8ugZ9xQZpcGFB8mEzAO2Ja12kv
dFQMqbUBnSLuWA+wkgnmj4T9tpgvaDnBx+9BUzC8a7JYmE/bGXHHqeWW+Al1+CrBVux44UAR3EdT
9o4UvCgahKKp0UuAVDsU9t+gJ48iQDm5YoGMRjHA1Z/H9JUeblwd4tIJtLiXzMWsaeEqPxZ4RyG+
BT08wYhoUPdUYHj8kaWzGCGEzWiBQsyU7iMRzKLhaJ69YIQDZT01hQjSJL1PtK+leAVmjfO2O6aR
F05sFa5T6PhipznvLhxyz1KC+XJeE47zAKu/IicI6bAUS2u5zrKQxDzOqAkHe3eDR1ZuEeOl+SGY
DBIuNByLYFUnhWFvllGzOyyfvMowoCmo/zqwYbnMCYYDerMj1mEMip1VtuzJSl59y+zcEkj8uw/V
6MqRG00ACCnRH2zmrfzAZgvm+ekO4GA6cz55ty8ZrXAXZWWhx3BZm5bMF9S+C5VchY3XyPBEhl2m
TmYuu0Zb6kIBCpHomkDI2JVnyYLUSO6DgbxZGTPQvbzEfELcUbwl2pN9PMi3wUpuG4SHFmAWCSb3
/V3ZL+UNSomCxjzTSID7QNADR1KPGbsZs23V+gVXlZZSGzqoNCqFNMxJgFMCixqpyVR2zrBuAzRX
hvENjv+Xbb+n6VbiRTTuo5VBvu25FymMx8a6nzoa/4JUaR8PuH72J12hRsIPlu50UN9rH5O+3Thb
gLmfqCIlUYdl99/5VldCypLGA4mav/cdLcfMKlBPamp/Qy6s1GsqKok5imLbQGpNdUZx3KMN0VGW
h5TjU0x4jRax/6FRDxx0hfkZB8kbVGgyWWwcwXtAM0c5No4W0HqoFta8WvwGaHfzBBLovsTFgvn+
qV2cXh5vxMBOQ3xLaL/xrR5fEHxhudDR5969dWjukGsmm1tMTCAMHN7I9535DoeUWY0wBS+yWmCF
tiw4pgLxHj0HlsJ9lX6RdrVwrpaJGsOQMjD48YgpJ2vfZiQOk3IgPjeMQD4qOXYJBgHh1CJ69Orr
YRWkIWI8USSeiXQbKGlBAMkv48kstU5j9e5nLPuJ2hcixl2B4MpQKtz+t+ae/16qaO2VXX/8ZQAt
bqucDGekmqTGjvJhrRY4X81I3ifX6dWMQ6LVbIeevoZQrFiAZNngDa2Hvf3SDs0VYjUgXdCTMFaX
sPAWTynsH+xkd6h5PFRjqyMp+J5g9CckHiXCY6OQ0ogIgRTxWJe3sNtMZiQU82jxm2wt54fJoH0r
+FZvt7y3fV441w51kzAskTomdE3Nh3apBw/2xtYRSiiDnK5hh9ZcbtypVA5EpfjjUXeJK1JMo28E
T7fJz5HckTuvMxK/sEknGjxgBSU+x8+F7XVbtA5HtHQXv2OpNsXbXk23CSnLDYqojyo+sRiSA7Le
nVTL/PkHIk5yQyXMe6uPjJSWtgRlNXjaZRsQk9v2TF8/FdqaHuwHE1C+SZULhYH635VtQeDoFd7C
VoXdHS/gSGv0g2GHG0nCQAEduxJbf4M4McV9Giavpv/1VsU00CdPtBC3b6hkj8Y9rapa6b4liOLA
HALiROM7YsqEaUGxLSNLK03QFk17mninEWqKERIRcI44XL5OlvSSlGykaIVPozBxiDApPHKLLAzx
ZTrYaxyo9YfgGZCzmpCCF02D9VPh4c14oXhW062M2bD//MlRyGtLEkU6tx0sRaEwVDoKYmZbsBRX
wvFxYQiyEy5b4pLqoFHxUKbkew16V+hNqpmmK7WJggwHsZ8vOcrIgGSWUdPiTKMn+M9Zpw9J8emA
S0Xj636OBtw4iKu2poZij4j5ULz+kRqdp06/mip8EhQzTm12ciYRMCoqbE89zmI8qT1qKwIC1QDz
tC3yt4y0iEM/O6U9805PJszGkI7kxAbBqBp/6Wwc1L+Xru/tTLvy6YsJw1dFnlf8gMGDn8rnzJNq
lmYTVatnmy80J/2n/fSul6cywsHtvI9KwEPDcew5v32h0ivG2iyZZXF6f5n2CTpyN1z2NOzvgG3o
xQF6Q2PzyOMk+rC9s9i2E4gBPik7vkHGjxinvyHQB5QBbrhnW+rg/oz6LNN7/WTHwXX8Klmdi1sg
nfIfXUxErOmFxJgJkJXt/z3cHZ8SOJYcNkYP8L0J6/i/VnKOD+icJAPXJ2kbK85IN/OgeAqaO/3/
+ftmSgc782Elsd06Xqy7IUHr9BWgQegEKS+vdFGt2xI6zo86ACod4MQ8OAcN7b8za7+nVRnmdt6f
yJ4Cwidm5VZzyOfMan34pJ84eJColIUiV3jNUMmfHYSQWLPmgMeWD2lWgdNzZSoFn8desziI3DLY
YZOKmRlgxQAkGoYvfoeoZRAT4Eh0q+8FMzKnd7skMQW4LG9pX/yem0x5T6s/2Fun3TnKRRI1Yr3Y
6k9jVbzBJHR9JbbEW/1jNKxg+8X4nNzrx6RWiniPOtEBREuvgO7K5Z6zmsqTJOZ6SjV2jKi36L9P
Gmmx4n4rp5YT4dmBmfTcjo8+urVXiSmrtY40buoZDc7WZshE07EHTOlbu4f565Lx1aaB7nlefeEE
bgz8QWd2Ze8LS3A3GRvB2t2aQvZTxFg9wLB4hAdoBuVn0XQMojmmTPJjjqIaMTMgSdlbjS2TvNi4
dE64epJDds6zv+Tz3hOAEiDv5jhkSlIenIQpvizSzKjc5KGir5dz/NzWMFAZMVMT+kgr1tW2toxr
eOP/9KZTOffXWlektg0zC9bOSsgqgG65cXcz3WL7XAJW4UgIjOkgrVmLhsMCP5TMwfhb4ii5d8GD
o+G0/+HOA6H4UIZOJhhUhkWLBAoMkGC9PtSxZrUi4Sg73L+TjGe2CueWuG4SD4EV7byybWmbGaSa
FOyRC31PZu9TM7UxKweVpXOhmlwGlYKU7uVw1JH47qhkBmstt1NiYpgdof/bNoD7mfJIPNDSXhBm
+kv7fPLFr/ctjxlFtag/XcDLRSh5Mohi4JDj6R2atIaKUhB2pqCJjsjsTSs2HRz+0XcJ2nxGdEQM
V7WD7sX00OMxNwVzj6RARF9Q1ncPHTNohVV715XBtefrxcvL0A9JmmfZspudtrZbAP0Q4VyYos/7
1LqXGbfB2ZFAtU/TMNG6S2dfw1ySIfmsN/Bq6NR4i+ZQKsXplmIPTj8Bh4tTTbzFfQyrISxXNEZi
rJGN9vB38tSW2A7vtf5nrqk2ml3kdHyyvl9Sq3ICqp3NhzJCS+9BlC6TbWOqMIY12mG1wtyAngHb
MJ7vTnbtFpka1+mdcdtVSvnJdB+3iEUp0azrkI+Pav3+jLzJU4h2Hjylb9qMD5o1g0/ynOnUH5eX
Fxym7nSYdqxu3R6XPK1cmLfDlqtaLuAlPN+vgwboJcWF7/8buDeTsQqkApghcjo31YmVFdQnfxOy
AEvRDTVfdsEG/Z07vnawiMjgOYENSJ1WEARaA2CrufZ9wU/QED1FtuukdmNsk1L8m8bptZkwp+xP
YaU8qz42CwgbiM/RLTquf+xt2PHsSWPA7W8spPLg0ESdvHeK80n/nm5zhZ4tf2SvZPEF5/kai8YE
QeJEFFKVFW8UVSHq9HB95TaqyFdt0tR9lzuk0JOgydofmtlLrewklm33XqYQHbm3iPaYERiKNL46
XO824avkYY0OQ7ijBt7DPKuUShi8YKZYvZoErlQIrCes+8sdQgOLPrsDt3WqoSzdX2QOhMBYd9DI
aW83DfqPVu0RXOzWPVHBanftcwuYV2GJ4ymwHS7nZmU0cAwmZfM+aFBWPGeqkjUFTzRdeI2z9qei
Z4VaSlyhFIgHGhlUYRzAO4UAygKAPgP8eLWQNKZilMONJ3VhsGsk8WvrgYlx1v7hhCczO9kR5rbh
VWdTjz3cMYwWcNgUVg4xjcVyRQGEJe5qS8T4flip3xMSP5YavqigYfSzWpGiP6rUr29yK1cZGC2q
BJCgIk3rPBp/Lk4XxtfXYNtW2dnaKg0wZP/UWEOMILcobVljRIikMDDQIQvu49oV+HybNeY25Ufu
oAtJj2aatoDz3FHVlQGy4/48YaKKVn6X1nIOIxFoDRFzjtos+cee0/sTeWwFFpcngpFc/U8iDI1W
kZqxdvq7N9uG+3Dke9TxuhA4mblYjq+/tr5WJCJOmhyRP1s7pUf/YaN6wtY7OexTX2FM5d/IjYji
278Gux52a7CS2d23G/HZ4I0zqlducSKRZl6EUbdYdkMZAHqb4KbK/cOdMjnBlq9cMG2yoKWH8a+4
iS6GyZxQUJhfefwQRNYgaNqXyzlvjo3mxVVjwSpqtkeUENSh4KWFici/fBoScAJd+a0PGPUQRzh4
jzg++x/4U8m1pi6ohW+0kjMwtkn8nkwHw0Yncqk4NvaFnom3wHrauVbg5U5g+vqFiAQXjBdhtbye
6mRlrJpuavjfja1xGZj0ZS0BQvMRMr8cOrXOgUZ7KaJTNFwPU3r8INNPfDt3Fn+Pxc7C6qUumOqU
sgNHq69HDsfD/o47DeLlVZCTjPCc3ckhYF3HQ9n/UNP9MSt+m5gupJCyQnlBkgkA1t4qIRYa5OT0
nUntO4Ke6Fk4fyGEEYQolBqEX3vWIv4SinNj3Jn5CW+QrMPOASXBHC897I8SX8t7aMexrvfSKahM
iyNl8NuTYqRA27Ys+pyjiDzFPp5an9h9eQBDkSOqtCCVHjIkyjX+Q2/ZmsDI8pwxSujYu6AS8wog
DeCovVAlvadI4uP7elZfOnKU8p/eyLGOD4yHjKusAMBflEXfwGtr9xszBYq8IN84sdh7Tg5IIVfM
SH8VXpccVIHt6i09gjzF3DCKxVR0tUnb5AE8tA7RVuZ2XMBr4zMVR66TYKN+0cELAJLjyzL4jWo5
mpSQVRR2JrJ8zEVqE1fWtfy/deeIp0XhmtUNHK0r9YfZGAsdhTmfjnuTng+GrWrgiAelShbFeiUM
0kED2qv4mCcsFPgmplCK9c9epfyrBute0qbTTyz56Uyr/g4gFBH0/bfDxNnmqOmRSSX22/3kAkcd
zBr+uJ5/wnK+3DkEVkzRQQwoNSLbrZpEZoLrXt6YgkPgUt/7Zzxi8FigAwnU06364QfYnFxrYfxA
3ID4nfao9HKEvrxfnV5jQd3W9sJQez0g+pVv0yesfc4o6P6jTFBhP7uT+lmkJX2+/+Gx/YzyvWsg
ldhUylpUwsn87laGV2wxDsgN4cTdnxjunsljz9AgkRGHHrg5V4TNB69ZRbdlg0cFhJKRbxdDYvGN
3pIn+oJkJOy0MEaNYuLdoUrU+wn1pK1qx/XyquzvbFHXKUmWDI10/6Brat16mZC1gN8qwXog/+PC
xsJIaBh2vyTd2RkQ7+kBQJm6l6ALOYZsHaTjpkBHaLzyAdJjwZxSc8kDtpijG8ZsSTfGrtAJdjsT
QYmcK1MyAHDA915i8NzHwykjXdQPcrnrFzHnzSpdRZVWhzzhNF6wHgAo49KPp/wothxsVC0DvHRT
7shf3D0stc2ENjDVONuAAWZp9g6R0wK439unZeHNHH+5/bNBQ0Rsgog/39uRtq7l9HGsSMLu98/Q
LqIhP6zsmQ1EQaRFQVV4J8WbMi6NrfY1aZeD32Z4413PoH8pZ8yqtg5jUxo7oefgPQvdn+oAwUG8
70wagS+iIGo0ghpH4czYjXryd57CtgyGPkTK+tAYno5VsmieQscGyRG65NXmqWUxAA36b/+PFrxt
RuQhOXCKAX8LL0l696RPK6ZRGFSqrpjP4yslwLvPrQir85neX6bJUeqMqtNvNA6THIhUosbNEKYj
C1tKLGZfjjZa0VqAgYt1i1WsvEtGqpHQO1ZbdVEqdLY1KEarS0Xt7g7OttSkG3xTS4Hah3F3dM1k
Uy1Nmp/SNC9hhhrkGJZpgndIbLOUPZN5KpClgFQhrdgeqxG9tSmrZetMXXx1G6LSAf+Skhpo21BM
lu9cUmU1tZn+y8W+l4etP01tvzf9aUI6rJgaC5kavV+WUN211cFUCLRLukHVoMXeCZGfKRG7LAxc
jXvM7EfmqV8F0rT2xx2JEwtGArJD2QBxZO8mDrVV9jCllHcphl5EXfr8gernWA6Gz+ocVrnOBpx6
C46JtPDnXoh8UfiESSAO3FlF/kyCUInbYDTWEkqlp6ggeIqZ7i/b/e6+yh1AbnLfJ2xG94hwGznt
0vJYls+HvF2aYapDEcuHRTRFAHekfqzJyag35ufqW68Ed4ebip4tv+Y9if93tJRzizzQ3kMJUccP
S+01INFxMXpdpYVYjrQG5D/01G6vUMiEJYM5zvRAV9fbMnEoaeVknhLeDcvRhBUas1FCN+zqh8tS
EJtezfV/Qn9UZUrLnUuOkx20Jl15rrb74N0+1YGC7JcPKxsvSOWdhUqIVXMOPMqqRnXlps2oiVlW
9afxMRv3l3wrzTYcxzQHyCZac2Agz+Q/wABktaxW628QGzNfGbanYW9kQOWI3YqXxgIERw7CXtlw
u2G3BoWT5+jDRjwIfIbmH9bENGXoSljUuOJBVTJgjwp9nrkLNTtMKfQAwrxL2SejZkeG0cQ8Z+Qs
msSPqUHKwsZ3OSSCOECuxw6sIuxslOaEXoLog3rEtdt85yO+wwCF1OMceC0Xts+wo3DVWkAnnmIj
OJKrkmTXEzVnn/ZqmfCHAL1N1zvkKtOMya9A0m/3aI4zXmjInx4P+gamiARUVPv5OnnxG238UWV7
DMzV+R9u4DHDpGoMTJA59qZ81PAcfpP/wg67t5SmgFWbcPfXQXHc3d91uLFN1sRvxj+BrVKNU9yd
vgUo9XaIO1VAnFfvHXhJI3YQpTlQw196IhmZ3Mm/Pbo2+UtVjvmjmOfmiMSq9dkHzRBYwkj4bWM2
fQHsbameMyMMDtlgeCKQpciCFjzZHXMTcuwfAUeNl9GoeJjCXuBV6Sr+/4CCZ2nE19S8qQ45TL0Q
C/DDD/oQJ5qboXSG638iVNZrR3ddzrWXRvgxRD/taeYokLeQdetdgEQvPtk4hGM0vPdxJQalI88Y
ilrlbBw2uBRLhVGIp6MMqGmORtW7WKw3jg6H2RCk5G0sirpr/GCLEFtsVJBuCJWp4am73ouC6HQh
5pt3LTQL/J2szoVqAXDkT7V5/8cyg0EHj8M4Ywxsd2JtVzSMGJArm4XP69xZVQ8Ls73QGNWEw/Kj
POu2ZKfOUojW5GMuSpZMWBy9q3BHKhoAOyfpjpLQXXmeSmoZXZl+uEFrYyVFnZO5SHsLaVePvhaE
2P1JQ7TW2bvOaovg6YvAm/Is5L/0OqutJPiVjWsTex+3FEbr2QKunjOYSPwV88cZbXVZY04j3A0O
3VFIzus5C76GcWX8HB5cLHRk8/jZCjCTnM9erDWdXoNB6ARJ5IUiyWIy7gvoNtwY51nOEG1bFpMH
pd5eV6q70X/6+iSy/6qaDf3WPAO8BcETrLQ7cw9FO+JC3OIpAOWDLpBlYWJjdZyoiXWsdFvd7Srv
N30EqDbWExiPW9DrG20Hh4rqHhbrfCvfs3dzvoKZSTWvQ2MdH4MKIlo2Y1QgKB77DyrjfYu0i4wr
iwVhb1UykQiK3sdppHzVGNgz9E5AUMhStL71A/qS0iws+XDBKULCqWGqDz7mx4wPmYkK1y2WbvKb
aNsP+7qN6UiYJM2UD/VVHP/eKK5H1YDT+9C9dvCAT/jn8x8TkFZBQ14fiJ5+vIKxZ0cxr6edLQhI
h4PwFn5DAjKADBwMzE0LYHn+FrJWzQP8RkbU7koAx6odzSiZfzq+Tb/0vylZottGY+opaCwoP1WI
RRF3fUQuBVvjbosgJu4Zf/uOamhm0G90kTWpbfgZBM7AaRjOAzZ+ypiHTnj0ImbTjbn+G4c/AgWz
4NwA7+NlR+XyudVUr+RYn7eSqJmqIBArvIWzp6HthtaR7TMpULdwY9nVpkwg1BuxQZ8bcVLrdDNu
An60+6SzLCvNdKklZLW6Nm8mzeyowQmNGJb+ZC7oVxJwHCvbsUyA3cHE4JFmAd0YSs/8Me0fZE3T
3hoSnhy62FLusJlHUZrWVHQVtCHUdz9ljPyFwznPThPnXhtEllo8MW7nLr7gGjFD/80KwPdQ/YKO
zHtGbd+IMRZtbFRGg6UinGrAMM6bfMSPxUPtzoBsKlCik7CHm9tsSL/e0VlPvF2sYzyKSe97CmCl
XBKoBaZnHhNoYntgcThGyutsLx5BNhAICM8Oo2caeFEuSSuhrtyLSgSH7o1HKpLp+iTLrm37SpX+
tTE36cwb5KV8kaVGa75AAao9nAV0rsWJRQskVE9cuKEmIb7eG3p4w1ZvgjXL4i/hSkw0/S0TGHPV
79+NiGEXW5d6mvRpVZNVMrNS4DFbHLINEl6XGBfJKKLN6tne+Of8juRFNMPN6pvuG29coj2PqRIv
/N1xlrmLbbYL+8tKDWBniC4is7h1lYegu1apcHKHA2bh9phd0/gRmMe773Xt9UwDZcJ3O8QcB874
GWIZmPWid7jlNKHFNFfoJ+3jBrkZswDOT6SIYjfRmxjibiG/iQ9Aqu7YuN3AQ/Le/wlcj/CI+eJN
SQON0MoUXPnWj9m1s3HCscC4pwzpzcF9K5hbXYO1kxlYaROYxyZgJhSkaZFRYnW/xv+RXpKzIGGn
s3sr379wPXi7v4fwIkEP3oQgMXoxD0lcITPbeqP56ZytrC4QMio0rmAuPan8cPPnJ+c8SL+33G5R
ikG8NjE9xkTy1/KlUfJeOzV5/b4RUv4/szXu8qDb1QDqFpE18ET8VaGqdvURUcXOXK/2LLEsuaCI
fm/+C5YgkJ2mI06mUBr/X0sZwCzudgtE1pxxrPN0EdJ859t2YviemnL7TmB9opZw23J/x9SCqQRo
E+Wfq4CbCpuw95brESW3hmnqoHTCLTwtjD4s8K+LQ7X5VrqAlhOi8DuOX51YeFrxO9IpMS0E5byw
c7rMuyJx7qYcBTfwu7KTlNLuHbNgReb5nfflPK9pb4lD32O8XxyPEBelV87Kh9MbHJ2dWTH5o4Kp
A6mix/2RckSONa7T83SFUcFtblp++11Y9Ax2cUdn0Oa546jvlwJk0rDfrzCvbwwcruCmhM234XBv
+E/rG5CJgBAOFbrO7FjOd0XAH+wA2lLMclt1n3BpyeMg9qd41fiQ+q3+i8PTKk6zF0NYWG/ELF/a
9AEHvTbvFJbENF5QObKesyAwHHWCgRvNjIBtTYtLExSo38MrGJU6V6vDfAObZ+6E/RctQAwsxRc7
cjgy47ET8gyUjRd0MW1vZij/SrNUNniMPGUOrWyJ3GIf5a5O6m2RsKqt14fcQ4pQnCHoz0Ls5Dqm
dedUNwQrX5LZ2yP7qoMwoz/6Uwjir+kwlDD1GzmV+3xDXHCessQVKstMXA1lJmN7oI8uDoe0SYGM
/iylAMsJ1NRNxtzb99MSbGtD+4UwPI30aITi1fH9W2/vaIiRKX6iHmk96wk40qoe0g7Io7sKGpLA
fIPmcTbyzZcaYNmX9Z9VpZDqt6cBBlQnhG+Vt3Hrt2ZhirLnyz4Cx7Xs9nPfD2N8+XAU1YRQDW7r
WXil13+7lOBmMoQ/2F2aShcPW7ixpvyt2urw167rRj/MOTcu7Nh2aIcSwDRdnTdleapfrWWchaPA
gdj2uLlUteFCVx0d856WHa7B7tTrQBWtSjIJAKTzo75lX12812jTINBAya0d0qxMvCE9U8g3GUag
DRO9cbExYJ1h8gDe5nkwL68F9hHTeVurY+xO1US/iq+m/vPTenVA+G+IkvYroWnbDJ5jZtgnHn4J
YVUoYub4RYLwNHXL27CxGx+NYwU/mhwHWbAHMfyeSU+PLbtC6U83gRvrNS5xRxZ3z8s795qYaECb
PJH3YqudWoGSemg0uUWmGCXi3mu1q1G0IVp00o3wci6NB8AqaHxXxRORXAFElaS4i+c+VM0ku+YU
G2MvaMg9otoj9uqK5jIgv/5UpIH629QoASXY/GZL+iyycfdiCPVV7nM5CKQ4C7KwRvsvljP1XmiC
swauQ9PDgkDbuAHpj49LVTyyiha5WwBLxZP6mRLcvoXDuEIMKCoj0+g8JH+Zex6lLdtu06NgO3YG
0oxveI2zh86CMwWnZ/c/xczgjdyi6ExFT4HbBxAQgZtrDmqOOXXrlubq6MxT41+b5DUXgMuJRWE9
+8q6HaXBrVeUNByQolVqUc/JN11zpcwc10MN3+VMWWiQcQU7ZKZ+R+XmEXmykn9R/LDT7iwXW4ka
pI1JOOCemGOPYvVd9Xgi8iqOnmzN6Tf8AexQJxwH0MRFUJwywVQoiqlBpMI6UdXCL2dfB6770PJ4
w6AYLnIQ+BAgY90LUR7P28wYOwzXBVSbyvXrMMi3KdpEKT2bk7meeaQrDvLtumPxMjQsiGU0fP0u
EFK6QKiWeJVmlfeOhhR9CPk3Coin3LQoDj7P1DmS23xCSoQd3Qf/xcSzRZlzLvMt/8GSkf99S4wK
y3U6qIE5VS8Zp7h89dH2oAiv0GPrvAfKTkJgJxKRgJfRGrDscvG+oNHZTgcE96sb4eKUxZgncsKf
KBVPl+xtXWEr2xGPsZRh6mKwsaFAID5O6Y9vcOvFmxTE/8l+rhx21l3XHxqCu41k4O1cmn2j6tfh
DpiH5emkDVuFUSCY5r2Sl+613I1wtRs4xZYeNWeaMMfsqHd0WP94d+5i55/3OA9s+hjaJlQJwbIi
xH3t5WTd9MYbovXdHqKwOP2Hlqwa5QLN6FiqyCzwg4SjDO4lTPZvD0n7rG1mJS2aOakWCtWGVYeX
6lqQrV5naiZCeNxTmTOmodOoZbYCjHjupBwshsZikA0YpTNaA92GXNIuJ+ewtENULi1NHRgUtBdI
SXJPERLvi1vrGQ6us0/XVMVHNVkQhXoolOXDAR8xNyGmb0a89XDG01oxypQvGgMoEVkQLkLrfDH6
qNDJMFzx2oCUGj+Xz4JzYb198M8yAfWbhHhvmL1Ad4I1YMCrdqE0hkaATFW1y/xbc8rOZmgJsD7n
b5FECl8AMonJmwPqLW7+Jxa7Z6T2N/wtSHOf/Md/Kxs/UzRgrGWWrEn/7uvwJp2DcfW55SsHTcwh
qhHEpuQNI8p7UhtydjbWhFwzW2rP7EWFAMviCBLdoXCRdZRVqWZ1wHjE5RRRAgRwZelYboXDEMa8
nGubO3yRXfiTVo/iIOk9I4IBl8stJm9MhOC+uQ+c2OyMA3naYStLZWBR5xnGLZpeem5E+R6U5DRn
J3Z5nH+Ynb5DZlWO55AOOSibYsohgullI9sZ5COrNFiqxf73WTkZ6itBNnP5qstoxQfgYzYKhin6
hLgjt8lTtRdi8gQkMHZ8uqYygR7iFz/FTnY4obl7BUmQH0yaqjrft6XkDmR2+BMjq7X4UlGQmYY4
1LPhN7LME1eqynIoFCdEbbmoOetxz8HdnJ1J5ZRBRkvf5xsVA045sI2RJ1HMk49jqk9xoLwrMVoG
TVVznSflAqkTWsx0/vr/22FfO1IDChTJWooRedYeV+g1l0byt5fITZcAOQSRZ37Qijg0QcKrXi+r
NbFgu1iHNTRUKA0k9jXeJ0JlaZtWV9cpv/DqmTwBzzbh5Lkt9Pm7YQjubMAx7gwWtQW/+tpOKQ5Z
mlS90WKx8kzzebjQ2utDEtaKAh4cQDCL9Y7vZpatYlIlP0e0CB2fMT5O1PhNH2B9m1uniE0bJqyg
cDKdl4Loys4N818HQHywtqX7i4Cyj5pUMm64GWe2eNAH5Bes4tHX0FuUomGgb9iBU5uJjPB0tGHa
cMgxYRwA2mG0xe8+ML/vuapx0AUuDx/hexrhP7YjTk0H7dem+j8wQv/FeM6h87AJcdxi7rQtRfln
wL/CLHxlm0EHROqpXyYvj7xGE1Idln9F0jJMcJsjq2mOFegnEOkFcQob//066+B7JHPNyGxjXr47
R/8pi5YMGx7Zmc9I04X0On5psatEvHAr9bHUlKm2PDoolexeZPwIeJitiCnJE8PMzopbu8DyqyC2
2q9BFoIqIjVkrDS27018vVqAeypUnYWF1j7R/3dNZhj+W1hQtMrpZz+CTPAOHo7F3dD6kjkuRgRn
fS8aVdwaj6xpjBEMVVySFy4pCJPqj68jNlHbTvtJF2XJaVm7ZWpUJzzZxXDPIlTS4w+SUcqdKROC
FtXGERwfTBgfit6a0jFwpnyVgsou49VAW+yG1KjSbJMsjL0OI0QbL1dDfyNrk7cwi7xg53vWIaDp
PbCKLV16pXmBDl/uPUvfAk6hwEgRYefRWnIcxBdOka+b6avuIiHIvQX0gkAFa+3P8p4ukQCuvxDN
RgLnJlb24haMGe+oRf1twcnSTE13oj2qzgPhbcCptZlYw6AZXcH3Fl4oBWqbTUub0V8QvIKcQK4z
Z4gt4A4BnG13cDGrG7M0WKx+aYOgPmMCTrEyzdGKPVDBK/Q2ttJqWgDKcnOTuojC0x9C+Rl/dgGL
EmK0SR1lky5AJTUPrzfzGZSYfzKYaCmQBadZmoXpt0xuzDQ1Pxh6qX25t0MB7r+8Nw02Sx0uvthG
Hce8vvsnlw/uCxoVD5pHjob/9nWOD66d99j31TBFN4ISquBgEEXfI3XtLUcTY5wfmhWdjXRx+0Jo
B+Sm/ctpWLJXgvOlljKVri9+xh6nuCQ9UUuLC5XBfFHDrrSmugizhAarUKd6xd3xDUlWfcfoZfzY
biLGZC+HAgz7Koc7XHH5bxD8php1GnJbqY/mqrwN9XM23HaZjkDQ1+2om73EnyFiRQAzZyLuKEWc
HlE0bx9P2QebO2SAtwWEIJXLn3Bsfx2vhWgGIXBdmh6hkPrb1XwfoG3hO6cHgeyCdTtn8uiCA5Rr
DoPmf9eN4kgDfYuh8ie65PZy/nP+3ozI1nV0Gp75AhsMZhCD4mjGrI5q0kFdo8Uz84k1OVxqg4TU
YEiCNsxNcAnR22nvvsEP6xP/KShFAq4WcuYQ0qhrBX1PmAZpl+binRfiWzKaovnEsA658h5qnPCf
+TjU4lC/wXTjw8x4WYQEBIqXL3lSzvGSonmDp5+EX8j94WRmCQaQv0m5eHR2bqoLNx5DGjTDFyWW
9X/1ug/Qq2C8SPLSijN+GzJ8KVKrTl9SyvsDQ1dKatxeBhTkHKawO1s318yU6r92pkP5FIpOfl1C
80CtDUZ23XF2A3pMsyYRDT7E3ou2oZiZlTislObEMCW6FY4hirw5ekWHujAE9ybK+VtyGgq+VVLH
rIYLILpHMRRB32YoHjGVjk2ZS1JbugYCbovN0whs9cDHpLlE02k2ood9UtW3TlO5S9g5LUxozFS1
Td2EUbB4TU49bMLfWGZEgEXANZNAj4Ev0tZBzz9Nd88Kc3A/N42IIUO3+L7Hx7sBXakNTDQ+I0+d
4mjdFBOa2U6G/cwrVh+1mxOYggmMdK/VnrOQmZf054l/Vsm+gr19dbmMbrRes9RFcwvrs0S+eDzV
aTTHeO/3AqSAuIWNgwDIZNTe9m1aA1C2mmic8UhyzGXPf5O3x1Qa4Ymhf3ZLENF9RCbXICFp5TfB
NlPhV78Twn0yr8PkIx+Xqf8Go5AVjot2Wpyf3CQABlT08ohXfgzPPhSCle3Ixre7XKJiqT2R16eJ
7Her91tRs8Ij3P1KzbtPvZFG9N07eG0n2wPar/8/QfYKXVFTeqlCdYPrMHcfUzuCUHKY9fvba6Hi
xb90xVyZiZLgQNwEJUPCgUdWewO5UkH3LgB5gySsqFl1S2j4mzP5K2Bia2kqNk0fI1qoNChKcOud
n87+u5598KEfooR9gwKNaXV7nXJHenheDXV1rwGDicKzgrZQD04wM/qM7Wf5bWQrxUgu90V98txc
YO/1Ef+xA+OLceX5xm9KEvvENjv6HaE6kYPKzXOMO92zv6hnwE+OBwym2ttUnkHzzT0Vki+8Csum
rzRvF853d+Oe5veH+PW8LqtIIhc4UQ8isujCC7EPBasCHJe/U85nzvjo2S4xZx54lbwN2PjQt+ia
6juMFXEjNanryw3ZAUPMpsMoXFsGLhdzd3FaC0qodCdkAlpDc4AN6cO9IqgP44emny0o4dt+mXjY
6yiWXCWLOlZMIFd5KT2amH52q1bO5fkzB1Q3/eUDalde1GRdAYZipgZRTbFbi5yMExLaKJxCHPVx
jVT8k49gEKUHFy+E5zY/5jX4gsf8fulrYKaXt7CbviuX5uEq1JUX7sFm1OvVv+mE90Q/8VHgxczC
E2HL0gYnYIlktcQEtgOFNqmqA9YtUkm0t3xKIdKMRfSO0tx9i+DnP5Z6q+KV84CnqVzKZdh1JQVN
ZKeSyZUY4o9BcJz3mUBerNfOtu7FSTek79aMIyT7aluPEbGP/srkD5YlZOTiMQfS45UGZmTMAwmE
kwuK4WgnZzTG68UMPCqvt7kS6cKMwggroYqKOPTaVC/1jLb7OcBJBz7fcAjO18IqF5EEN+qeoPik
RuDk0K6pkt2QZULUWnGtmnk1PkjH6E9m5Rdnna99wjFGBjPr4vX0u+GA4isbTm9HdLJvg+WnSt/e
mIhpygNdkVnp6tpQe9j1uQObp3q06qCaMnCfkyhzu7/QXXS7htbv8zUIzDbJXvWwmHkU1Mk8XPlJ
RAssuCH3m71pOOTkmBCIWNoJb1M5i0xCEM8ql2LYEgx7qmea1lC2pJFCBdcDuMySmwXsnumYLalm
GfiA6gl82o+ZFxtEX+fB6/eAWXSvLx6zocoL8Fs65mKyptuRWjN/ljfpD7dxByfVYikjt5TWuPHH
drhErTTVmyw/5xQGReJsVG8fMdQsaYvA3CZz/ibrNOSt3fTcG/n8PcEBGQu6WwOawasmZH9fxCo2
rU76mgoKWxfDwXS/yzpAGgpXx4FKHXHlrBnKcFwc9H4odLMXlHdXrtconJlmvBnSKTwvt8YdnYQe
og5CWA5tBK5k8eqGbpLSJWZs+01DYUrb0Ktr1mcEAsZaVpb1Y0wydFelIitSFUxrxSU9CXW/mVWI
1F9oNDiZ2fWebvp4XJES3QpEnEIgSB32whdxQu2ppUj9s591xdDYuAxIElAfKeZG8ov+566o8PCv
caK6ryHHNUdbEWClQ/tIUfLxq0HB1A4j1K2dMq8efkD44slZL9kQm9k56VPrt1DNEs4ZppK7M2OW
pUpSpOum2PhsiST2nSTT0o2HmJjanv7SWQXWlJYt7WCvQs3HI7wtIE7qBDHp6uRVuADaxRR/vzYy
BCtqKB8L6rbAboV5666SWFA7mcnFDZ1Z91CQid6eFEfSROsBTqhSb/flmJ3iLLdtMxQysI7Dxggw
Kaveog3Qv03MF+bWOi6X6co/BQB15yqq4LrU6zQ+75+UMama8PcynlXrjpZqddMV/2AoKDudfAAQ
TiYfnG0NZebTZfqc2vyrfZdhXNZHZP8p6mqYk5Eer/JbQnUNjlpo3GcP2sfuDk6jVdiLKM9jLecP
BaDvNuQXnzVmLUqejcT4Om+8tTiKDVoFWCftGCsDBw4fmM6P02LDkhE+9s/8YW0wKnI74LuHLL8N
jXFhMeo+8m50p5aqigOsLNtvgf/E0Pyvn6Hne/5dw3a3gvHL6gKpc4eqbUx/E1jUBWJKxWxULcyh
qonXaYNERF20/saSeIBr0S323GEDb1s1Wqfvx9s9q/MF5TFzP2A56TzoZXuEFWzd+ZOV0E/nR/hJ
oHUipuMPA4/BKqmVoDO+Y51Piy0qQbNlZZc7GmSmJSKNocAjn0CJLW1Jrx6J2OVXN4mENelkU4wj
gWMkwNWNtOSlykRIgH0snkR6XK06da99cXzefDs4gygiMUICGidbuZcsP+dv3RzLk88gRQNGZGy2
A604CQwSpi4ivEcjabv4/0Xm583nPpjZTDxLnf6CVZNlGXPU0+meZwSWn8oURxWIhYdV45+468lG
zvCWrS8jy6t3po3b+BVg/tWbOrsr7T5Js+vRswdsKqkmwIGyDm5zKpDnzAcrtLUzxuKJpVrLXrXa
2baCkQ4rBQ0kpDbu+TV/VqnPTjA8HP3D2fBFLKT4hafKbC81lGU9oPtMjE2/cbW0hXuNA2h3XTgj
ZtQBjsItpAWVK4XiiqHQ0L6a/+iBueDxKB6kwL9eFhbXhotUhXuVpPbCbgFW8Giz8dGw54CbUffB
djwC/hcZm2HeBcnTSuFiVxzcG1si87GZRUtRIuGmOsHnZ+DHYmkKTXHB0Rg8eh2P7BhPuMWjaf8l
kIViGLiVpIJDArM12LwrSmdSqcbTuFidvGD2/M4lvJQx/6xxzgedqVEfEUkCBsVnLGqajruOUuQz
xcI7PJdMoElSCkNfLEp3knnjROQegLAdWdLd69r177TO1WG4WJKmGBnq7fDZk95Ysu81MFDB1De9
xEN85jFIEDDf2xMMXjTSQklYhozQUMbXTlkpci7rSPKVAL/tSgFeI8OpUCTZUtA+QBVUKUPhryhB
Nb64MmwmbhBbg1CTTSQkJHSZaDuq39Fj75f3ZvjG3A2Ftc6mOs7h2VEI7x0PgiUJNatQFLpce9Tp
2Vi6kmx6Cm+7LvZhdJy1WwFxM37gcwSyV8n7CMJCLnhmuBziJ5vs5p3yCLm9sAipXk+CQ8rMwFe2
udldWIxG3elfkkuOK8V/D2ayzA15k2wuvZVmubk90MpTV7vBsCazAHGyj/xMNleQHX163fOYQzZh
hCj+opJTFwDDh6tR0l0jYPRZXhOcyRDyLrxcVdqDNoBGVRJCsNnE3hHNpYva+2ikyxNcVuP0wFGI
zvGlJVqW6LrVWc1Ml9SsK84sP8J0cXomJJK6UDle4f4alBdvoaCpmN2CcEZ6bG8Y6KjY5xahHVa1
gtiV5BmUx14JPDHKIBpXDZlwPWjSMAZCpn4n6mfHNYEO1mWv+3zU2oTn9C54J/Dftk/JzdMbwLC5
6CIrBodIcvLZmTZSVZffF2kBtaqG0cC9T7Po7N92y1lgEz793mBJR7ND0N8dXss57H/QQYJZ5gX0
d8LVMccZ435Vu3QgN+OVtRkoxmuljVwLQ4D0ljeZFKZg/3XZJRKSvcepgo57ZF8FKowHrBAcFhkc
FtJuVnz04MGM4SdH68FybOKKwVljb6gyTXMkZkmVzo5AP9qXltcLf3c3uUb5tci0CiVR5WvdEJU6
FUpz/XktiTmnLVh2eQFMZtly/itHtybn0PVmEPp23PxLtkdXE7c1XcGJ8lK8agDIRAc8GGhGs6pl
x8rJThF4X9eCSsdleygX+thXXrIQgY/Q2o7w1bFVHcoL4zbxlYIG6cTecrpOtCulqdQZ4wUpz/+A
hNOpfprA1r9ZEXQ0T4xjy8FwcoHMC/mJfSii8EeiZ4rB7k2dI7i/YVK9hMxW3rq65Gta93kH0bQM
tyBVhRQ/jGK7eDWh5PbCYSJ7ZUMddBARLIvxPcASitW27lnieG4RpqRp9BGafhC4WzYKeuwwO59o
ZFOquI/5ZsZbcjLCdIIIgdWYryWbQ08CAr0L/+ZHSP6kDLJnIKG7ytYg1veLkCgwEihIhFK2li98
QgSKB7pIu97iGtMDGCnz9AqBKHhEblg7YcUBV7fYor4DC77/IPeR/0vlVM9+FT8bRsdiAkyc9/Gt
T///lL9qM+gdDzFU4haSQBwVSWm/QFQtW6VsafNjfT3C67ngZ9jgAfBJyxMJqfwsGFoV3+3meMch
0XJJ83od7gEPg+4ymGRfKfOlOczBhOW1yO2bVHJhNrw7wJ3sDCXftCGs9RmN6ih9rNNe4l8keTP+
YDfaSfLgO/fnPC26kddRDz1H2vzjTuyuqfmrozpdNCtlghSAF2iVZrrklhiHx7o5QS/VqL3+80Ct
WTz2MJ21agxR6t8tNWxzSwRbgNyYEaAuO55DagLqiA+vdPheSSqKPfwVDYX/NnPPjbtjut8PHofJ
v3jfJp6F6ozrQyvy/qXANjVxzVsIXAvuu2NV3H90AaIpQo/DBLRpfTiBLTy9iuNZqNtTuJnFZIY1
TOGnI+h0Ci3T6d0AQPXwO/Q4ln5O5qGUKj/huvbzh1KfAt1Ymkw2tcwji9Flmg3qdoaS9xa93FL5
VC3kwU7bYCh/gonXiPOVuAZ99ner+Enl/6IsLIMSpnLrrIDZGdHR20WjP89MA/FEMW3BARjMmRq1
eQItszfC2K3D4WbomCtq8ZHbDYsfgNFiGmYuCqjOf+lR8hPd7qJZMhMEbIFYJt2qIw+43QyYcwSA
uV/vOaLzG8RAkQ3Pr7Cl9cD8E2j5Mq2No8ueZCqXequQ9itd0TJDRLrkrgR0wjJXb9zAUfGkC+WC
5DSkD8BYS/dKgUPGNDUkmk8LnEFSpw7YNeZh7GQ5pfKj92bG6A9owTWlbFhC4AxX4h/xLKPIg12p
0gMHwWVpidfxl/WgWuqIyyjTTmGNFHVHzZdTI2H5lWgN5SVdCx7OE61busoRJVhiPZd40jQw35Ln
MclxcjwS4MrCDnXQllf0GlDTwWaloAUOpXAzk3eHVN/k7/60DO2MAKf34C4Ne4wJh7gkegkvrQJM
aEFYU0F91dCFSLhI36GjhqepaNf3VAWzcMoo9JrmCdLDnugcCtyHL5CaVJhp3XmwAQRJoehF/Zcm
beflDThNGmxHdv07k7N8zoVTYxCxOwTpQ0hpoRAHA8u7D+KfCiXAY3o9iASPlvplsK5GA2bZ4Nmn
5kMOH35ADn6hQWR7vHQdVCQv0VGSNLCc50KKopC6z4xxtLJoBUyHfv15JGbwm7YuewWx44kD880b
Co+jooj0yZHiwuA2qnukIipT6Ja4o1ZK7fE9en8Yrt67koUaDJxUANFouMK6aVW9rUUEsUo3qY6I
GZqCSc+0P5kocRyfyM7TYkJuko1Gr6M5NSbLmAk4Z2M0RUM1DV96N05+QQklY/3DYGtYc04+B9oS
9np5Gr3UeYXriiSqUmsSI8QXq1jf/VNYPEF6mTTVhRUFdnaLGudcGtu0Ag3Zk9VjsKfKkP/u9PGk
U7GLIAPSTVntpFxLT4+dMlSisX5EbI/Q5BvSNMG8yjsp+avJ++YwAK3MsOxnlXu7tvUrDxAjlzdi
DvqkVVkzwyYVSI8tMfqbKK929yWpNELhRtT2rBjtO49efWbItYB1uGF4oXrVx1hnNH+UYZX8mk12
fFCp6h7mArBcLaM+heYi/x+zuiF4CvULSAVFjdFHmDqH07qu+C7aEAo/aK/2Ijv66j9PV6PpA4MA
6QOIlOYC/z6g+2spZ5ioaIl6K8hfI3FXGQAaOjJDxUO9EcOwSORf3MnmHBEeMm5tjS1DFTpR8p6G
YsK0UhZrefyERRcPv14FrzRUDkvtWyt+Z1z8wzWBad4+EIDVnk8sAiWdDZMPRAzCf0zYXrGvwRK9
wNyjh77+NdWP0FCkB7BqBbA/qj35Ub/p9blmVxppB0DozwKJQuD3GHVwx+Z7YNUw2dD4n2AVDXOy
IEQb5mnMoVjF43tSP+MHwl1FMM5ulN/6xbVtzSAJY5+STEa4DcemBLqcq6kjMzQWtKkrwXz1Wmxg
4i1MyK2nfB7RwETfy2zeoCrARL2enrSWUjjFJyBfCgeoZELumbbcYPPYIEf0odTxiX5TcA9ChOaM
RKtuqwpzkxEteqn//w2+tsDXXHf1yF8vAZjjfARn7TALjrmG5hmy9A+M/9KrC6UkRzAfvVDobUZk
utJuclr2bd08jFdBkcnaX+EcJ/EajB8HM6lRVqGwTC1ltqc4d11aGRFEqzAHdi/lD4UB7YG8eFbR
lObK4HSjRpnuX1zfSvSKeJ1TQ+T26SoFNTaAeL+PevQq4LnWim3sBQd7y/Tg6VNADaH7NO3OXwLv
yqFbDwilq+uLo5n5U9OVEDSYMYNvpUdNH5juVmc7KDgcy85pEaJw8UojMPYmZCEdS6Lx/LwTdsVv
tBBYNjMx5tLmOcSOQkBm+ap2eZHgapheUYu8fUtUeV17T00s50oc+QQjVq1CFRECYHxIrrlttZVx
/JyNMqJjuVEDo09zbNt/pm1V/4QB2DCm4WNMl1NHi3ZWV5Jbyv6RlRprD36Pvc4jXGNv+XlWkEyW
gPC1xinBmUw+Lr7GTUI4y9IxBxB5ZxiizjslQ+TkPAqln0rHk7yKj2n3z0Za9vKHuqOwgp4WrnUn
Dt/6NYGs9kui5G8U71Enp7ovy4yNt1/qaVGqnapM5OrhZ/NNbnc/n//zejLkhNJCO8r5acFkSPgP
qtxxQFXohETEalKa1FfBbA/QaQRSnCgimfSicqqFNo0Y+J+YFs1sXQG20/k5QyImPaOQl3w+xavB
QVHK5ewHNxQzLvFiOLzvXFsWF08SVyap9gL2iiw6ebrj4661dOag+isUNCl/fvifTDdafaGZ5Krc
tyv47FQGIFrDiu72Ze5oeWxGw0/sbVaUWH6eRWb16b0l4aBeEzDUHUKA8iT5KUGnYYubPjnPUuL4
9GH7sJIvwMPXEE/uJ4h4eXyqzRrEhJO6a7M/q6zkj7y2F92ow09rxdlGYKJN20zxRnk2Li1Lw0yV
YiDFj+0x/nOKWrLQzazzDhd7ZaMS81N+xmRvd0mBbgwdWJYysDKNKGfoYEArTKVaS772G0Obf/Aq
q2I7M4dB9aXakNRA3QcYlA8n+YGYxZhtbWsSfSOfR/B+2wSFBk+TDNydx2MaGVqc/kKq0+ueq4vW
BR1fFNbhdAkbQstsBMMXiQJW8mtPrtbhNb+scHHkNiMpmoaxwMFV2WwisqRWrDikmlojUixG8CZY
TkYHSfiWZyh0SBu76VMtP0O/cAb4iFtOQYDBUHpRjcnlKlTvl/umOHvxes4mx5UilBoLqjtxGyRR
kcWeK34UPTz8e02J0ZBoF8EXrYktbRlTSEo7AdqBsrcnnu9ITxqcqbzGOTq15C+qSID2jK9G0MMJ
hTu9qDSqRSHDGdikSq/+l+44W8dlG6xYOQ+Nc6BPCHM2W5uvXowyb12NS9IhFI+sIBg3m4tz+Ro9
QgV4fR5SCd2ZRRjV/vS7acujBBBiCBtYo1j+IR7aQ7dlzIx/Tcn+aP7/bU4EXs038dYbRKXNuJ98
crP+ca72sV4NUlZliSvdSHX8PCKiCce0Lvnjx229NW8vzGYV14PFxMOKhk9HwemDbfXe9ucS0EIK
g2JRPihmsfRpmxDv/+upYye4ixIbjckR1PvzBwH6E350Kb+em3MGkdoShN3n1EIROho3GHYAJLB6
sSDZnsLK1cRLynvVxlpwoC5PX94z01CpPNF3E64UxqLVkIy8cOfTl+UflhRygjLK3NuhRC1yX80s
z6R/hnHvilWO79/fH9FS5tTUybEyLSBa9U5ICtBlp7L2X2Wq1mbdU47QGyQC4gtDHJmKnh7Bnod3
35tJlEc=
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
