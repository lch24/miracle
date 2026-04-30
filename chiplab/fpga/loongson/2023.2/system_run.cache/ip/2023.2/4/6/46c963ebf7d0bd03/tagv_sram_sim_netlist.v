// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 30 11:28:50 2026
// Host        : lch-LAPTOP-V8BK1R8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tagv_sram_sim_netlist.v
// Design      : tagv_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_sram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20320)
`pragma protect data_block
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
Qf1tbY4MGm5wKEHkWAaO/48a/X7o2Gwyyc9DTA==
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
