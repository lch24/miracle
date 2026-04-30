// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 30 11:38:24 2026
// Host        : lch-LAPTOP-V8BK1R8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20512)
`pragma protect data_block
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
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
