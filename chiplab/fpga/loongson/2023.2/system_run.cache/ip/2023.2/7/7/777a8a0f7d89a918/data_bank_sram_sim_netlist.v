// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 30 11:28:50 2026
// Host        : lch-LAPTOP-V8BK1R8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_bank_sram_sim_netlist.v
// Design      : data_bank_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_bank_sram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
uRG0e6gElF0Xz9Jl3s+LrbS/lgXzLZUSORZm25EEWcfzFHW9Ri73uRTrb4LGgKY3wbwSJY6elW1h
bgPsv1Zpumd0HBFjZUg6pCPiZ2Deqg4Af5W5HCC5Pe2YIOShWwAe4tgww8adqW90Vt64DACdePv/
or6pte0Ugw4UK8pa7nuqF3tYtBvmie/E+G31ZaStowgJjSwQs2aZ3RhRos61JNE7PD8INJJVELO0
sHDR8zMVXzSOUVss7ATgXspYazAz3wmBTl990nIKS3ZIHcT2AaQ1r/C7OmmMBZjLeVBB9qAdG+N/
yUX6zheNLNZYjPgMRRFSvj3sbbpqcf2DoYzG6Crfj/mcYvx1GPVvUvvWDaitogMPac7XMCD8Z7Rf
jiUwSsUHwj8r7fxCLbfPsLJmo/qmQaIjN1FTnSR8nTt98zzkN/hj5GB3iZzO7c2LfT485abWAqVC
Ox6pZQ7EUEPWdJWbG8OLI1OqW51/yaHAQodE/1byH5v+13ALZTrsOOCuc6KgSN8dsPrXhpJibRP9
4Ea83K195rRTIQlACKmGNxgaE+tY6a/5Ay9KIgflKsYilVf3ZER3PSKh0u7BIFZvuSeofrIw8x1o
tVXdsWAb6DjQjviFrkEujq9E3FNBDgPhNBZXyVcjKqx4WoxfjXeCvCG1IfQppyLzWzWSn2OIQ1ue
bdCsMGN1i7l8Mc8yMQgxNl7wFj8c1ZpYPcXCK28PKIhmBDHXWFbnj/xNzGU2+7EKJuNmYSuXRCie
pDS7d1dWMrWT96sQusFWXvGLjPlRILXagW3YEOvCdhN/s1JgUS9yT83QHEln1Su3WUq+ou1P4ORK
1r3k1wUWz0/p9Nu87kUtAvy3XIBttNHcjCmA5NGevtc8Hh/ZuqCpgI4yXfvrWSbEr6AUSVEnmG8b
yOVuv+XpExc6Gy6vJQUsOchlt0bubgoNue1yY2e7Gc30D3f+pNmHGeGgt/TFIqKDSD/0IWX5sRmx
tvxb1tKA40Mw233U/SA8ehB+Tkt0Z8aRL1gSdTzyJamv/icyqRAfnos0b3ByL/iKIadtmZAzF43U
RnS12C8vdlba/VHYcaemgNtSmMQt/rWg+9XybiVePhKMnHyUqWIwHyechukQv19XtQR2eu5wra1t
in0Bsdn69Mfx+BNA6APuUNE9Qha9LIkWnQSRFXtGp+MBiqfoyDAWOZJeveMRL94HE9MalrtKMI32
brUrYbzgQxBIN22kn+PMp1h3lOFUuUFOywCs0CF4i9dNlh3udK1orR176uskmxSmx+QNcZzvrrmL
L7aW3FKNmM8J7hl2t7e+z0rRPVOGXZQExZG7DBOjtlQBWhnY+4tDitG+XyHV95leMCn407JWRu0i
XAber26OHvzONKZoSbK11uHKfjxQvdw4s0AjyM5Pu8IS7MgGhC9goCMHtf6iICkluy9Tzn8qA8qi
v5ntlGpdXGY2Fk/XIVYsgIs9nR8qCEjmvUfxDsM6IHAPYC161XqSBnksRmyB93D75U2WLJl3Zvqs
R4ot2+dzXN6f8lmC+N0W4oioNFFRAVt0K7aCKoxUOfwNDR/tB6tJdJBHf3gJxKBKW3/FqqkGeJ+j
cPiV/vr5l4nekM/z+iFGUtBqZvKEHHT3k3F6GR0vRujus+RVi3ScqkSDUDE5Cz2QrVjFr1amzzTD
t+PuexzQfLyl9tTtpnYlT44nyURJraf5P6hTxIe6mTBFTtMPo96yB90aWgmG5uFz9wk5uBiya/a0
BWnjhxFjChLvd/IfPMeFVDD5JHG00rEaWvHqG5qt/ddnAWeOFL2NApmqezrMkDfppjDEApMHyAro
TGJnZs3UQuDKJwUGvc5uJ9fUXMcQDyG8CxsVjPmdvWYCWexmUbq2uweWqL48c+DHoffAdWNC1Iqw
kdsdbHB/mcbMN79USPdfwnhrVo+3WxcCaYBnxO32fHCQs++kbmFy00cw9Hr/z3K0PnZnV4ymxtq/
e8XgjwFTG3zRmCVT6lnvbj328Osq0eeRemZ4/0RSN+5ilOIbGLZIVAiFgNiQhfd+kxot9bcrxWjb
YNBAHlphkvXuBrp+cN/wzNdrdgdXrkoDX1HhJ666wW2H5ame4hjXMPgYhtoAvCg7OSHF6MvgrB46
+8CtZluC+4ivxZvuMYqCSLvLgC98ua4L4seW/7KEo88N4aJF7PVf4VsVaiY0Kw6v0TnpFmhL61LJ
MJbvDkfc6sW+k3l6cKt4rIfMAk+GbVJ4hOgnwQn/DwARDwg3sCgp1WdJuve/4lOeJNZYSPKCwOxm
1nacfOLFdquQDH3ZuJKc0X9AV3T7H9xuopfW28m1nPFkEcvECepQ0UI3cjvQV2Dqwj3FgQj7aR8y
b24j0fvXmM0w8p82qW6fIuESJhdR/tu9uxWri3MhBMUcXt5qdGKVjb+sLLNYyf1DUN3IToNlVIA+
NYAjPAhCB4jhSp0edthIXvX0aKyOV2/0Ngi3RFp+ND7eaJhP41CI82W+f9rKCt/2Usf55ZIZWENx
hFjbLZeZbV2cQVCOL6zKM8RL1LXcHNi/iEMN/tPvF/n4F/EnPTcTOU9UfkUDRr307x154s1oinjI
kFsXYzfeCRVdm/pWLwJOpfWk4j3tgq+uykAQIC5yXPpuiLPRDYtebNZ8LLQfvGveecyXhpqxucSg
vLDTQ6NOaiL7tdflF/RTrA/rI7Sx9pZJLhwCRfaz9+zhkFw6f6vTN4EJcUh1Kh6LUnGImbJBeDZA
/5esCxMVdMhyo3/EqrPNa7FIB3Sv75dVd1QfGDCD1G/HvljePahpxCwVfB70shAOTTbfiJDQEzmI
cHsMOVQxf6gjSwT+eprW8aZ2MtiwwNbRLPEs+cLWalVFdC6sgAlWjq+agnPAOZZIbpSpSNUBk/YW
j51zLKEmgS+RozEJ29s1LiYMPLcrUIz1b3zHIHcBNMnVT+G2w6HVD3WVHTbvU+3wxkDQN9oHOWaU
pft3YMhWy6ZqU1FN8V+0PjaB7H6RjETMWSRlJDi0lcOZemXQcgxBYF6S8wtNtcZ2M0Tq+IuS4BwR
ynECJvDIgSITandW/mQomBsvg/xcL5xRajIMuOWPzwB3zuB5duozOdJw7p5VbGgUG8MhjCUeFYVF
jwCfLEUcvsx42YRHV+yg+cKvkGj7t68e+qw9U+HsiLEofcGQ5qQABXFW8lDiN9c8jGXfzAIACGz/
jmka6em89sRUcv+tDQt1RPQsx1bKqbgXCcXXwKSYMG2FMMOJszPMQFPzhq32aqjv9w/EDQeZ34eJ
YXR94I4gtn5hlURFQxIL9R5v31jq3lSJaxgkl/WEkL9Z9iQqJYL37JQMa12vPgbJNYlY7HhjXh/b
gKQafVOAynVpXHJUVaAJpcW226IUPDJdkOnZ0G7zoVb4QW9uxdmvNc3e9sTSc4GuPJOnnDA8OEzE
4bayzhmPUGr+kIIOb57ABBQXvjNKdCH0KRiJ+iuTAOGzwLFeAkboPYq/BX4JeiToPm+qvxCmwM5z
PAfn0Z/h/UVi9E1bzzhGBrYF1m4ch7veK++peLFcSJVq30ZqqOyltAi05XbqhulCBnRnljIRQrWt
sN6W/Z062EsW7gA3eJ+mYBnoS1CWEt0bZPg4UamLX0IKOCrAy6XcUtTZCnBBZi/w+rH4uk2O9oqK
3PhltrKiB4W7ivmdO7S6SIehHRPfD8B1rTPtUAdcj8n5wCq9RIUROiHpu/AR9gq0GNnWBitwFWWk
VgjC0SladEWQHufVXzZnwzYSWYe9IegJlKsVRvIx2A/717ExwL5kXv8mb38C8m+IzyW8UTi1cDdI
X4hESy4qMxKBghWBuUVvc/qj0FaK6loSHluedDNdHLJH0LfJOMPHFdoeYr0r1UoYOEZBIl+s7AjI
fezNuBp9tXvSK4sZ87ME87nOkM9tnI7yMFgqs3c6uuXyTA8FGVq3CY31UPGd4Zy1zs0UlLHAVppk
9zE1G1R901yFY5bPlPRSsjEyJN57mc2JqYvjP2LCCZmk4wgB89nknivt7xRxryQYUenmolhfcJ71
8jmlqkZ41dPr9WwJnH6VnPsX3Q6HGvTNqrTSkouSkdHejpswIMEaH8r10U2X83Ct43LdR15/BYxn
cSKR3H4xydZ6Hb5CC0ZwWkEQYNpQgeMYZvmlAGJVcgHVZahZR3ZTQABzvdXo7byBVvSOKUB8g4ej
WBoTGb6XDD5HkfoGCbLks5u6StlH1/XbvaFd+87RBdgknjRAy+GBzpFpF3iKx+O1iqaDwbDpFhvS
CVh11B7YfEy4yONwdlnPmYUyfkwLc4kfJO1nVGiUUemBQGz+xrkOPeiEZuCgRwaM8zPsiUAe8Dx1
agk7a6YcaxpOqqNMAiCcwAAa4pNquEUM8vDxUVetNUmfO7Cbssv4gF97zKS7YXczEt6IM3oUcALr
ILUuJJcpyiOHqxTrwAxpk3/tQIDz5+w864PwpJCoNOjXb/cSxo5hu+rGphAeoSgnEVpXx1F1NNDn
HQpWCFplmAvpcyHOvHT02v4uKK4+ahzadR5mprLEJS7PYkqAoxSmte3DPdImjGhfXTBphxofWaPC
78himYtM+np5phP4uOCfPSHR2S8RbP7/EEL6YnfWBl1IAjzvFb9zCz+QxhaCAAaxdjQ+dJv6gzno
ujCzlWa7ZjLvPL9RLEU/B7DXAyZ5qRWNRBP+dOsR2T3m+6Nm54TsE1kYc5dslqKi5JIysrsgTDgG
6DkNXGVQcq4ajz/KjWvOqSm6V4QQvb/K7Sfcsg9OSQdzyvfDBlFvYSWW1oRxBkq1bP81NCQuYJgq
g50tbL6bzI+xqSfgE9+tjaWC07YNGsP6xuBTBn/XO9FEOMVtYDi5DsJcZiiaZ/dN5YGei5msq6f5
JZuCLSG7SW4UjDJE3x1s++aeUKF6qnmsykUzeLHKmUqrSd1IspP3u6G/4i21+tyIwfC4LKFoeXN3
szVm1UD5fLxwOQbB4I9KhFvhzpifjtDuXv+lGWNU/VtwfpjwjyvRHw3AFaS+p7piI+Jz5y5Rx45i
B2ds6FsCZhjPgruVlM1OBIl2Mt5KIjras3bwZIku5VYwm3OgSz3YiBd2Zssb1PCDCNbSsj9yi4DK
0UGaj/XTOWVnZfjYaF+ep50wvgBj2NygAWfAOm20U7biR7ALZg3lON8CfVI1+3m1A4kHUT/4vdpU
ZpDBQRqv8tzOSXwbiU32w+MdGx8yYB+Q0xbwpxUxnkNyW5k+j8ZHgAekc9XTP2gzYO7EM/trMqCN
b/jf8xh+zlThxZVYJkNxJmy6rszvk6EJP0CCSlRXgYbKuveMgDDLEoktEj/2kgo7ipBWAe8TQyFq
879Mq5zESHiGmOPNLdweydG9cj1ZCc6TdOYmxfZIDi9DwCW8UMqRgg7SXmrFWTdQfQQYuNryogEo
4VglxeeSbNmi+AcC2hTLzLDFw7t9BlM0PRbzR7/wDv8+2kOGtqjVybFjrmf0RBjnF+2Mf0MUjZok
1CEuPe0B01O/b8nF2aer61i0xp42ki5fsOCbdXrNa+CF5A5aPjH3QME9OM/VOb9oRgiQEp24k35P
uIlS0c7PAbkpQgjTQAnPSlcvcj5UwrYtMg+ETOlx85l78LBiMkKp24qUYfHcfvC9C7nPicbNuXhQ
HsFeuC2MtFxgnR5SMxiUxfiyFNcG18VdyZeoSlEUT1sMEYs06oh1ASOXL6gIpWyERvpMwhkboSfz
fyWUgzPpmlA13DCzoI0MWaP8PimFM62CwNdT1Kqgfpo21g90L/xImxhmdMqq5jrmhs7wN3b8JOVi
VHllS3+eG4UwhI3MUtDERTJru3/+Q4e9X+R0O/cvLfurQB+hGCWel4yatPta4M+MuIONSlUJ0hrZ
yaV/9Vf+EUN9Unrvpiyhs3BtWY2HY8FSTHZf+CvbF943uwEaiseD6CMX53NASVvy+/Yojr/NDqEp
gbpsSjFnOcpjujXWkx3l837AlCqpNumnNwcHNBxfCOBv1QTCk/UG7xpGtaKt96PbIVYaNTtDpVbU
ZFXAhJC/OebX6vJGraNwj6/EF5hslE+59u2zA23UDEJd6Rf11Oq4qAaDC8/9YHazKuyHyR5nouJ+
wEGmK920aiMwOqtDUP5pCeVC3ceT0Cgx1rX/PtZ7oR5dZobFpwRPGuppzUV+exwF84OUzeCWIxq2
0QwhFXiO5DuCRwzvXpS/ZoElkveK75k+EEf9FTbdjO0vPT/dm5l8Uw18wEyYJivWUG0Xvcj55xFH
JD4Q2AAp6kA8rS1z2gFiiPPrpPYgGdIMZw31QsKAni3jDEHXsDWILTpKpbnXPEABLdKO/Ljiryez
3j/PzMNJrOoFe30uy+lDF+mzeC+MNj8N50ESt/tii6ntO8UCCtOzHk6M1mAOthMF4oqXy/PdVnFi
h2Bc/G+4wAs3HsiCWHj7yGZBuLlPNM1CbK3GdeGDFlPHv7x+2C/EnmXSu2mF20979Wg1yqH2voas
wVlhg7dHw7nzfq9yYCkxAAT5BFnUSZVqJMKZmkRTizQPN/2m3Df4NOKvNJAR9pcHZQCDR7p2ACs3
W4Usb5M3w24oExPjr3ZYdxbi7iuEuB55aF9iHBy/TElDc0mI717ymD61A1T4DwykDjD7aRrELHr/
9vC0BHMk23drWyAzAP3ToqEiWXjfc6TcHBFonc0NnnlZCJdJ3GEYmRoSc+7oWLEsQ/oEcS1YT2It
AiLcYMZA5QSftMLyqgsQ065wXtdh5eOCLSuNDGNXmrlKnpptu5YFpTt/bETTQK5iSKnvCI74eGpM
di/BBmZQzhWtr2lnLFQva0ggzS6Ukg6f0YsGj1qjkA5a3PIR9dcRqPlpPPdUQ9EvPOEuNFgV5MHc
+hMfqyqTh1zYdqQljljKcH1oMrsLbCqZD+AAxPZk1WtXqivBllFhHLc9xPxlbQXaX7I1euciRg2F
RsPGYVpigb5t7AMZwLtXN2/IESUYiY7mvGCx2kI7MrDljUHAzRisv48EaVHfI6EnmlflQK9S8HzR
003k9Ysb1l4aHH+vbo5njciMqnSGhbROKu1z5sub7fIFMGMxgo3n51T2FvzMXxSrQYRao5UEbI8L
s+CEzt+Hhj9tWnna69G1xLmgK0RcCSkXlSYRRtzsM+aYj1JsTY3Tzf2wfC5j7g82iW04lREGRVEN
juN3g9PzE1XJCo8t6xYeAi4ndwmg+trW29X/3VuD1nR+MWemyVAfHfKHuZdI5bkNAblSor6Op/Xg
F87TNP3MtLZ5PNoj7rCoCjnzjDFMkKEO2auUDHXX9ZDKFhXari9XjRWrO5KxhZ50QnYy60dIF0c3
vEf3xoGI+g4q5+wYnaWXAQO6lUS1ukTVl+NLI6f3AQHAHKsLkbEoaulqC80uRJWDdrQWiV7DNfIn
z/VbMLX42/mGj/CT0L3JPWflkMk6DOkrnXtIqmIICarCwPOOFn0tuKDu+op9zN+JorjWufWmtU7i
cT9+l2jdluxdjAosDFSt9RAR7SXu2VS3D/yZy3ESOyXQMfF+nmaQASVZdFOCsGOII4M/QjRAUQzX
lUczUBtV9wo0tK5/VYZEvQetbb48vQt9evvNdAazAc8DQnHHL14I/ShYA3HoEqCnAtf7B6PAwNkS
suHpvSb5zqqeX/bdjIFe0lCAcaC44Wq5t21brWmDuQ/DJjhsTWEbxlAWnY64QMFN+I/nBWamSC/Z
TwGCOZjJ57eFW0hJcCOKn4uzpSVWTwiPHXbwIGIELdRBfaUXI1GQytHHhuyxWn202+z1YTQpQEOe
iJE5iiau0fdTVHnw+FAK3RrqaO4RDsVz0gtnaMbn0CtQrciOX8JsPOmJdIv3wHHGsqDJWNrhZ0YZ
wd8O7ZMiPvP4OyERqV5Z5YUAEtIcPTx8+DPe1rM3KTT/73bSBvMlSlK2HHANdoVrmX2niHk6EDEm
CqPiCUGfFytELfvbRLTBiGujTh9Zw+LJCUmdpp9sI26IlYvuCDzdhU3mAYehzuQD/KqHva48NoPG
5Ry4rgVoVvieYDRkoXSBxuh/bHOc1h1fiYYzc/EcbUcE7pxgjMGawTzkirKhbadt0EOeMcpCse/8
sFWbu8bs5K/wAAUfAh0cRVBrrmiaQTP/3Ogj0GAOtkSZZUoMbr0jZJx9jh2jlVYQ0WNZYtoO+Y5B
cl5xbERDlwurKiGqee8zoefxn05IfE2XCXmVsUGfTCrLa/8XIezPIAcPfSn2caQfTNgzjPE2PJ9u
f0ItDwsMBnqfp71MAmfBJ1visDuXYYdosv/GA2YFju2pax1TG5BItnFibMzu5D7M97XK+K4YnwKI
jLdEkNBOxf6CCscyU+iajA2RPR0uWRJ1soCQCNrWfP1IO9TJ10AGYe/SnHmK01Em5DgDR4oZZWV6
7aCFhnPj2ROh+J1aAXXFRCx094kIeCU8SIRdoZbC2SZefW+k+os8H2b7mtM7y4gZDwAhDlrNPPBl
Vg6FmavmO0IPoxLNEUJaa+GMyGmHjC+xEjood8WI6U9ECpwPasAYg/De6l0vjk/wb53Kc+oV2p2l
pwvqaF9YtmdblXn8gaK6HsCYQLhZ0kDUO5Fpy7hVEFJSwAjc2g+MckcNdllllzhBsLY2/ECmffhO
bhm9lf3Oou6rxsDcspWCcjykTwZanMv4O3XZa9Zug0tRSFgkh/7MahoA8SARE1TI1d5s816Axp70
eyIh3TNFce4dW5xzs1QEu4pRnNCkGneKkSkyyYJaasXqNy3BTjeIu0WeBV7ykFAtywTZclqbCueK
qm0HR7zZJo3gyJjqZyLF3rnytAaDDwwxBIr1Cacpvn6Epo+cW/6xk/ilfPi2XeUtloorfbjuwNeX
fVdWz8lyjkynRbnQHNAWqIkkt/4owPaWJZClWf6r5zYLOpci61m2KFtDC3oeR1Gutl4AFQACQYkM
CgowG/8nkAamtcnX/lJdCpEHTdkJ8yIUS3ufdhzcEQOXFmXJcvXfvxr9+kjy+qID5bMIMyUnSslK
V+6//NnMPkFPgQ0EWtZv394w0cutntFvupCGGpl/Q2RvmR+vg4KNJ/cZARxTBO4tKD//J1TRHYFg
u8oSF2cLBCdgC7jOmUvuoyofRzJWyHapp2LWmf1zbMTubxEF9Ocp/SHddr+4KN7o+fk1iyQeEXe4
n9NIXFUQDsKonFBIzjrRdYcgR7WtrxGKPhsnPqiIxRdBM7ecZXWSxHy1+N/bCWpwQsfijDEaeoCs
jPQbiJ/o1tFo4v+vEHyRCZ/xoIDXmZOasJcOks1JS5Bg4St9Vwrq0SMQBGh6jAdWZ813gp6Qmn7W
opVbCCBm6xTAJbBQIljL2bYZKq/sfJ/KJmdl9L5LpH/xAgn9aAZj623ZNyQrW47Nw8qcuFFa/v+7
7Cv0AmpZVDv2gwDw0PDBsPxKCkB+8JwjoXVRM/cMPDC6UHQj+17JBLKYGnvoRMFqknM6fim6Eg2L
zSVkDVX52tV4XgldYmLeAboxWfsWMaB6QOPl+QwdRVH/CxbE56axPIlcL3q+CmH7rXNW215yvfw7
5frQTJNZHxEF5mj7qZPJAHUJpORkDjDoXeaFNKqddhPGP9N8KjgwZe6jPVSYFDovXi9e2g3BZzdF
l2I3oee6xLHZSq0poAQ/g9cw1yztDrH64CkBL8qe9AuzF0PnwYTxaWYIR1m/qlMKmQva/XZSV5Ea
WX0doj8jEB/nU9LW3y96pViPCoNUqNoZLFdBDv8liuS9x/YhB0bAlH9XC8zqNCVpBELRLsrYNNqZ
2yT4IDg5QJQHepVq4JuJym8NChYC5hLFMXBFrt7LO8SwxJz5W/LDnM8+VxI4pN7ONqBQ//0XntK0
zi/dv8hbBpbtf30Mr4i6P/AEtGPw/w+cABKqeamS9QLgttBaLJ7ZwZkVIlwxR60CTpqMNjjczIZt
Xc4KjjKHJ9q5VJSPJOeUu57VGboNAZSScfW2lBbrQSziNJVdkAiqm2Un3I1n8SvEJdw0GmMy0g0G
mOFgSb+C8hpXVPCKYY5e1L+XYIztGZ9mrqV1jiteL2zlHM/2JHDcqZCdvvd3AmF5wtxkv7WoG5bi
J1WoYnaG64zfN0AO9tIBLLKV/Gj/LsTYOtjGgDOTWr9EJR747b+jdy5JHMOmHn3zbm7T10iP3TaT
HnHclWoH5wTcwKFnSEkfcN3vo12FibB8K++n3/oRwC250u6ILN6chw6BS6QrVGGMa+e3KHtXIkge
Vmm+/sjkM36GCk7PuP5mEKlSHLWumESs8GBRcCB9mZvGieEa6tg0dEgSh65aDR9e79MHqdn/s9u/
XZGsb9gDMQfi/YcA2Mg7HjpGGfPJ19ckhEhD+3UdHM8XDmm5FiKi1lN30OuyvJN0pKhLsd8xMcIJ
R6HwChhmLtpLyXiCk1y58u3czTh6iRancZyWLunBswWOqabXdwpTsMH2wXuodd9UeRmv2+MiL38+
obu9LTrkrwSwA+xH+wf+1eq2h/S4tsOizXFG7DnvAt2ZCkWY8y6SaKIp7K4XpbCdOX+RnCo+L0mC
6hMjT2vd8fe4ngFLfTm2pb+nJ0HdXwR6Gd4O1yoQJ5JO/lApIECq1HRYNXQhderANXfZZUVj6VaV
aFR/aqy+/HyYpzKVUzIk2sZdTUKsW0c+ym2HoFSk7w932karAssbaQVfmiYbaDcDeTz4IbBIq/DS
4Mdh27hMk0U9dJ+xcyuFk+12cpi8OS7QJuFyITB7RtgseYfaHV2skq4dD7TkxMTRU4MPvEC+oTSQ
maOpCybfQRNxSVjofEvMqvlBDX3+pOgXcTUvTmdOZSQHQrIajxl2TqzIJHyNCZkIwS+Yoir3P1ZE
l5JUnfjjCIuYP+8N8meSXwU2oH7g9LIHBy2h+fPan0Z+Eslj/W8TW+K2JrADo+6/SyoeQyp8gUpp
XoAm/MNrlm7xEGGBDhOCiLiJYzgnlOQJXX72gJY9zjc3oiymEGy/CTnIpgar3VV82a13ouYjLWpP
t5Lc2ADqI8uWTKgrGc2+Cq1sBxrl5c6+ZW9IXkRmVJ376Jk1yTZdXGbWpqp9j3QnyXf6AUmiNUSA
bV2FmfWSTTAjnLQtGc6x6DVEgdKdA4u85cs+zROWKbFbc3YXrPrQSaSEDlLik8buX4MgHghh3sJY
7joPKe+1mKjHJ4UQEKTgnYGCwrZDSmt4Bd/0/w+su+hmC8bkTORZNOrk+3Q82+GEzDTb9dH9Y2zH
uG08wEq0dpgVrGdPsTDvNrF9vS5vrA8zOJZ853DeGGe1GEofLKDjeDciSUA+ZzTCFlm84tu2SSR5
X+IsmsVbOpHeXpZEr2sKvnn3XOsa5hWf5VM8viYA1e+aPRwZWCjLiCYWdwjJWC63znqL0ke7TzFY
zq/nGfOsUQAuzv1xcqTVo7fyXdiDyBfWE3vXwwAHoM3RaYJDI85p2e9BKeybfpZ97syVUkzSCr3J
9hZ47SB7ks7xEc1evNSUDZofT061t2jepjxmxPsMlsCj1h/dQJy0q1iPOEAYAXwlZMOzcBw0u88j
W3GvK3HIKvMiASFibpCiThAzYO10JXKSqb5eav3VoXR5x5WRKIUC5UTl79hRD6drMS8mnEg6oUzn
B9T4NmAJaEZdf04xu2VrvSK6gAe60LGb8NiNxL++jEhCUHP/JY2hQpBGsjnO5C+ReWZWaSdrno4u
ygm9/Y+zJUVWfo2PkkfDU7/Xm6DsF1MALljnWu+4pfvnqaYgLlzNy+q6vNhoApGaRfLY2SOoqMGm
XJJyPQVczdtBeZmmqVCTT8P/PHWIzjXlESJiKujeKpWtn0DJ0jO56Gt+3vytqpaWWAChuFRsmzie
E4x12GlnKBt8rKrfBgKb5qPOJVHPh4/e1wZ4hZbtEDJ0suDGExF5mqigsvxFBVqiqWUNyI1U1hIr
cN8jWdTZjWOAEqDiz30kfge3jAtGffdXTGut+DHPDsw05hAtpAXw2Hg2Q2KhXJhzJ6+K/8yCwMS8
KGr7gi/WhCzL0dieMGCIYTPvhvABGsiAhnHtAcwifKZPO8I11f6RsGHOgdDkIVwLHionFWW8OPG2
yCpi2BfOuBp827TwIPP3NLIXXdhJvt5z9m7+XEUAX9nw4k+jPoeHKfJHKfonGX7UwHzTrSHAmckw
9t6p6dBhniU6cyM3qspa8N+0hVTGkGt/QdvX4ah5bDXqCwqztkovKZ0A3/RmJPdnW44Fijus2ZsA
+UnyNROqbwGTe9Im51G+PuA14iT/T7qJA4C0BHhkYZ8v0sWBse6JbF81xTgSdG+OsEyRV2TGZaH3
hJuoQJrx0Xp9vf89Jvh6Bi5Xlee0chHqgbeV1qxWiHr5siC/HMklt0icq7zuzpW3+DPBqqRMhfHu
zHoB0J9sLuSS63cAucmVEnzK+aovjn1JmhMPQlh9Sq3syf3IVr02xXXtOB6QKx8Ff2zGN+lHFj/H
aOK0AngSxiI49jxqTFdCM8A45xE+dYiYgFx0iEwuoX5OHnWQVcbYecVMpZtZGK8iAWaSiVLQ4ubr
zkPu1TGqzpRadLJ5dRh8XC4FsOhFh/vwSF9oZAI2/FcT+g1FiEWRsIAJheuvVfX3bQIe7GBU5rKO
dcoy1TB+HDXfsncuZ4HtZj/LsfHu87ToHo5t94yaj8NKjk3wo/95wn92EGdWREQYgtiMw/+tR9Og
fO83bGwtglQlc3SHMl8nMuNOA2rK2Z8Kx79LJLu/OOEY9E8L3XTIFjI1nq+PdGDRpsCyPnVeG1dj
u8MIz/fMEM6HAKzNPo6bq0kWzWdP6ncN6n2D7nZvdGDQ4FTn4ho9pziyXK+pJekYA3ECgnu/G79w
nrd9Y8enTEo+qHI1jTtN4gI/A/cOdISTNGyiX5ZSKWAz0u/LxLROeXNIPhO0ktOtXtl4owjgbxVJ
lWla1QeefmKJU+cFNO6cWkucwYI+D1i+nFGMKL04U6LB55ogvL1u2VCdLETTk8xej4nCQh9irqBf
2PIYwMh2+eQ8dw+96qDdb3lvTfdOrOlglNYVKH9PsgXt/D/fdp/omh3T+ebnuuZ6eR7MbNEd2q+5
7GUtbTgXxt8sZ6V+p3Xm5KxCwT4IetzQBVDEjJCgoexcC3UbROkqfBSDVEu9a1zJqa7xUta6dX1G
nCVwt1jhzbPCiIgt7wWmETXzVOKpe6yveLqCJH11YSDRF242unvqzsTh0Tk3Bv7ZF+5p/6Xafk3W
hYtMVuDTiWkl52QYpyIVCfK47IQlXQynQBR04AMHvRp/U6B/NsjL9/fsjHtfHiwLxQ+aA7c1oXF8
rUevpoSAa9lzk8i4/JDCqqe2ag2vBTNCSjjrShDXzBnE9HI7c9v0PcG8J7kp3HhygV/DN7+09JXS
Mz+EYGfZodhctx19e29SrwC/YfToJx4yhFIjyDXrRPKYCaBPf5b3RGbW6oWYp+5AUIkfl5C0AaeZ
FXwcDKk4My8507O+Bq1MbrdVdBqdbUZNgV29qWUvXEH7X1xiH7jF4Skc49oevbqRgbUkDF1ZA8rd
qHXRX8QxRXYBJFHSEwXC+XUtnTlQQ0n/AXoSsMInTm3vZ6rkGlQdQGLpRR2+zTPzojGu8UhuranV
QVygNPN2QHswme+Y/eI8sVVJHqz0InxbNsg5Kj8Y+cwGdCgfWAQAmVn+ToixyxbIG0aYR2cHxIEV
d6ZTfC4BbCqr7GVYpRXWs2aL+sL6PvNrnIzqXKPtsNYqLKwQAVsIQ1/8CZb1Eq4w5v4htVAlPT6x
FfI/VmPGqaHZjZGDSM3btEQDs7RtklkGJLp3+U8/EIc4e4JWHo6xl49sT57d8OE90KY1eBTOu5Ex
ct/4YJlvS45nBGPgqFaSo0qqV1DI05jNm5LHZ7NY9mfT7ntD3nJolSxyxTv5i1MC+q+ZlbJIj3Js
OAZirXOkt9DNHZVvwuAR+UrEajtD2po+H6mom0D6bhlyWh4EgrXUGX6HFFy6mjThFtTFD4YNZ+2e
pn9YKmFChm3n1rUWQ7qfH4EW0kbimPpAbtOVB4pqe5VU1Q/7JOpNaa0DQ4lbghF3pVTaAbpxlPwB
06kj57fHq5uud+OUJfGZ0/ht3wQ+F/p8vbUnNqiKDrrZPJ3u0QJ44sg5//cUpEpIV3dEGkhMOK6z
M9qy9uHhqcqZe9Zz/DaPwqm8Pv/7ciugP95iMfjRmw14r+jn0KTHWGBKDw+tadwQ9rr0ndD711WY
EbFZMOq3IGa4G/3sKCXBsST0tPmRhQBkQZPgfV9rHiUDbYIEFmczTzG4es03+Z1+wpinlxnMtrDX
VMNAL4+v/zjpQL4/VeYZ1m6AO/tyNWmvHnPZ6S09Gw+EdauD5fIAKeTOU5JRD+95Y8/nmIDTtEp4
MVqS8obSM12IqWcOglcm5+BGf5Nx/7a3Z58URjqPnBfPywGr36P1myb8OnkjIs9bZp6uHnKHVmNZ
hWryHpPXzODLaVL1LMKu47Jbt16Jbm9FPBetfc9yYB1P5ylsQ/pR0m8d3NH/lMmkTpZ0bjasAMs5
U46upsHJOTJGAyB8dLIWHbMDn3IrltKQMf2NBwYnNqwh/6D8PRAf7143Gdsiv7s+nQC/UtZH0bIQ
veJYXzt5RjcRW/WwPXMvdHjutqPHiRrGFu7+nx4oCQ2oG+1308UNiLHikNs9Fx9LSg8y1QPMvQDm
Twpd4IuLZAqagbga2cJPiwQem59DhZMxHyORcEdjU5WgNsis4obADSnBVKB5Jjw4CYxzvx8i4TRw
HTsZCfEHy6c15bscWnMzpryL346go4KwQM4KNN/nKl+eNbpkCKUIYwqfKAqi1L6e9Fb22JxcmG6r
Zx8TodBbLvypiXlmt0D5bQupVU4on0BP51hhUxDpp49DqQ2fGyGLL+dc1da/jf401qq4yOX4U1rr
OxHzzpq0/n2Xj6EaFWcL2MCZdRmZI1AMQHkoHSuh1PI1AWIWM302ZNPtpzp3nJYZTy0FoXkDa509
JVQ44pyqLoGchOxWQA5H5cgbIEQPJAqNdlUPSt3zRZYWyAjIpN1UUfZ4gHnbtzXy083hB/9mauGH
vMkZRMsspLomXFidpuQv+qOnbc9RVPQuk5YWCEQR+X46oiN50xXGIHsPFxV+eZZjtsQLBdV1n1nP
ArSvF3wNXlSnXRd3Pts/N81m33yQDD2ToK4TwyTCAcuQz8lx+5NdZ19LrOBawgA3uXsZxujkTAZR
+n+omaEBj38tvl/RvhNQqRH0TdzWVKPxl19+7Ztx7fkUnS3P5SZI1SJDvk0uWKKs9uIhEU3Qu00C
884WgnErkv64AeIOrufsZ0arGkBp+w7MqwjhojXVMqR83tTCMnnHY3pYX8i97kw0csqQjDOXpTqz
UAItw2ImC/5YGm4twXqDYN61YfH6emXRTsfHjOmpgwBFvE/S+qPz9KMU/uRTvTrarw3bTpwZAcvB
+v10q8C8P2IAXUwFGTsZO167Y1P7nZ5M77UNWeALpLvTWVqP64J7kKDR9ls2Mff5I5qWW3GvcSXn
wZpfqXuKNlhLF5DFbfkIaNc/eoPtrjpxkp6V19hO8lttUxZ/Dtvbr2Ir2lzYnFICDkv8kUAeTRXj
fhUXe3FOJ+CPgeMiO+LnU6/e5V5t3SdRezpnxr3RtLRsKvF2vLgu1E7Ir9yUTAv6CcWPc/ME0OCn
ELjb4pVUoxNxnHRz2NWAdLVlSURs3+8q9GHzBs/OwYF8gxaTnHw0vcVHN8K8YmVMEjoQDGT69Wh6
s4uJj7xwaKdOJptwExKHjF/Rka1pTEYLBsyhehDK/Opdg6iRi/A6Q1EoPy52J7NQq9KoRZ+CfbuQ
f97XmuBaWmcUqPdnMM6+P9dJJQjeuylFu/CRybVTvnW9Zf+rARF8MSIowkmVUgb3joBsdEiToJOL
ug4ozj9jSXrZHa2Vna8wB7gsEmiTXTbjZZV0/irO2vs+13fMx6eDSUOozJJs7il9sPebTjKFGxnr
SzsV7y/+YZZFgu8xXrSkaNl6gYL8s2cwkm1rOpgSuj/SbZnPYb6q4MOUxILndT310eaQ6HCf8VYu
WrTiaUZ+9bF+EkbYH+J0ST3Mx3UnveFWhDs50uKrBDzH+xwETsPfrU5MRkUOXU8PuODRnAi5elgU
R4ftW3daZyCkGBsk3ANhuuUxowSvJpsf52nzP4jL7qm7Wh7yqQdC+770rAKBz0zcxhHT/c0vhMaJ
Fo0D98q20fv4iPD2AB2EjfOrvdY4r/T7dANhqX5VQ1uKUk3zBOk5kFrJFUtSsFgkLJzJGhYLByHq
lGXf38ETExkj48leVkUl5zJQFQcgZG5F+GTbQSY1JVvD5yEGKa3jNkAxtI7FzFznHvU2vGU5g035
TO4D649tdDNupI1UWHQyztWmBMtcidSqfQ2c72PHUInOR9fKF8UijNwt3J45UXIR9/9T8iywezMQ
iiK+KkTifrwZXq9/ldqW6qEf/WNksXBWs9zDQi9xyI+hdLNhnhx3pywtbXV3TkVtTWMBNQKtSN67
dDcRNnZwYgtUwvsw1f3AHZ8iywKWMV+IKFoRa28zTpm8P7C4cwxau8YP+0HDy+L0vyvanEMTSaV7
iJYkF3HmSzDluPp0z0n2SkHZjhoUGR5U2mL+maUUeBYBcdYxWZiwNLGJzvqKqDOQZcBCjiHd1HDN
Qefzj+wftOWK+OVihoG8/3+kuWbShDD5lUHLPWE5OJp9k1aUpuSdSmWXHlgnv5Se/h/1a7T5K2IX
XtVoFJCx+Kk6Q15/iHYgb54t6P10LZXGUY3fXJJaFaA310AfYAriTDieP8s1tjAT1uUIWYnAqdrr
b1gfUk4en3s7x5vARuczdClz3T441dpKP7Ccts6Fn5H7B7CrUoj3q4dCtOSetIldXl0PJGj4Rt9Z
Eeb13zuFdEeodwLzyz3tZgxPzNcexG+3ou8d38dtrW4IYVZ+ZraPYv+3Z5QstGPBZpqmjd4daq8F
EV1IqPYIzuOuo2ktudwxuxDA7R9s+7YvoTxFjCCmbC0mRZ7/skZ8YsdbDjRyIkRrox6NLORqvJDN
PdKeIpTSUbSUOLTMkoWxsQz25Z+FNCiO0hhVj52vjfjkF/dqkCOStqKiA7yxdot8DUixjrDBTL+v
vA2LHrWpCjHAikVqXFbA0Me5OqlRSGyogiWGO2X421I3iNPH96OMsxTIIV4QH19WUE5z/v/J+X0U
Gn01NIRIIsBGq1eHRC+wjVk13OOCjlx5S5oWqraGN8MlaTr1YmPRGjncJfy+65zukmx3GfA9MkuT
7bMiZP2Agp+SaniZYcHlfsQ43j7jIP4GmqWwwCPnOd7FqDQbJI4v++LudMLDcEOeq5STl9/P6aOD
qWVNlYa8xxZ2sTeQq/+a+MIASy4VEXwbPsrvJUAjb/YnN0fLgzdihX3+g+r0Insq1rr9D0snfbjo
syf+AJHeBCknInZLDcLqn6nEVraTnxj26B3I2SZlOhMKki4BwniBOz1klXU/7SttBbnYlHjfex3i
+pI+MOCnnLWnK6b3oa15mAqxjHvPlvX1UgBYVjLRNLK6EDoYCaxx7n39WnK4UvgPeiI5wJWWsDLC
OhldoLQ7GmmFdTn8ZKwdB6XQv78ip3D+Wcd9Hg8N840nGidrk2OsnwKBaW8/Bvf3ueB65aXiSGKE
qDegjfrl5G3BIqeyOkP0nG861ngovwCfl9gItFibEKyxzNAfeoYoOj1tT8bxL50PK/VN6GdSNIec
Qdv68jCPrB2/eK1CJDAZcMJ2lsWhzeBwsn5Qk2+ReTwWEzewOqT/St3pUv7NvHq4GBkmBTIUqOda
v7UmpCVfEbtiblhAipQfJKbGppl26Vrtfx/Cawn5Io1EvTuXO1S4/DSuIg9Hw2GQiFQmno8/1iLN
/xgmDDSP4kdDr/CqBXI3K+lqwNnvl9U69oCh8DhR/w5a2LP/58ijGbirTS/C+eIcWdVEhN1RYjXu
2Ff5RgJiLp90uPje6rbW9sqTD94ryJB7iGyFjG8HtNEWBRQBU0qLiYHUpV/XLLXFLHEwqQn5VQbg
4aHTp7kZR8mP+QY4CWTQnqnouQ333eNsPJ9yRw0STmMEb5/qPxJExiAW0m99hmKAG9O2KKoPKbr8
00My0lnLiRXPIACCiTqtkBqCpjQTizzuDgysjgpDIBxi1rMDoFyqvEZHDTTRPKqnQuHfOus3G3ik
3aAcekxoV7GcOAOsJTYYndEw/lPBOvBNCgjN1U8OuFt3WKyb30xLTEr1Abfez/NqVeyF6GA68GMM
WsZpCU8qZHjBGyO5A9ERUORHv3nio7FSxND85widgfyKc9Nh4YFvYj4S0PA9NVYpogrTqGsfYF1S
9TxpI8OyWeRVyn5gl/n2lJv06iNkLbTy1vnSoU5akHENivzcPPC+je9GYYh95eQHftjD70TP+uoy
2CY+NOYZw+Viu9hlhC5QR/u+Z9ymYKaZeo0l9Kuw0X1B5MJAGNkz3z3KpKw2BFwHJAN0GeSMtDIS
bUp8uEsBRF/Z5bnzz8IbTTWtHHiRPnSMR92k4MbJ26Ym+eT7aaLFhbqFqSFGnL5DC8JwwRwDA9Au
xMOHuT+qcV4vW5b/4zBrlzdFWFE76RR66n/pqU6VoJ2iNPs4sqmhVmx8kMXM5LvXLwkmKZThpU4F
65/PJv7UlnmFurHpTaiyXvb9lUxJXAg9z9yjloZ6H6kLZNVSfvyTqdn/OYASfUkv46bSC8DTsdTM
gzlmHbpzHw0iMYFnXFFKMj3beEyrcU0f6OhmIwKybjgAcQvVyoQ+bDRKunsr+96+DVgkMUNOS6Nh
z5NBwIdsdXblPvt8b7P4eqOZcDJqqXm2nmWTd2OIQf3XnbyOCAxGm+R8DfIYUvpcojFqTDMGbfWu
6W3VuvPrx0lONNSfHukj+yjq0JD7l/kHwWiaa1YcOxGckkOYkCz6gkMRf1M6F/CVjudhMahJ1zr1
Fq0+i2e1p+nOLawRU3K2p4M5hm3kS4jcJgg00APl7KHDAXahmgu+vOtGvBfsdRVWzu5Meazd8R6R
0kaw39L0FgV88/nE9VbZOrlYY4u5PzLZUwCQAtCQIdLzis9N6B6OBgjFyKf4wioFrXZaJ1CXZ38c
a9xMrKnQmeV0Bg0wOXEKPuaMQmfcr6xCSTNcL/fAPNN8mVA3HW/3yAugnvbPDK9tXzKbK//4Zuu7
WmRjHP38vv+2o33QxVAdiRalCNJbgKkZ6TJx0WtlWpnxJOsIrMkxABxaL00/Q9zSt+RKKr0EVOHk
+c31lJNdvg4u+uVb8usB9oKgju2BBgAAfzRSIm8wn6s5qZ/EFXIesSE7nuy66n+rLLdsQfg+5p5G
6KRgAEshswmA4GjfH6lC2QdhEZZQyu697NBHVE7N06QUCn+NZ0PNi4xm37GUDdiQXMcaKVdX/CbN
aachUFPhLynmwre+B0Bfy6bNz6w/F09WkvyVwmEgDw2V+dqD2QsQhpHph486u7NjLCpnijOno9v6
5ZaU64UUUi2bzFHyeFUp9vfAcG9i2s0PSi1DdCkjvGwXMt0+NBO+5Sw/tq+c9cBC8D6M7SqjIeV4
xo0LqOTf+fVozi/ciVvBiYRkovVP5A2M5M6fRBdgkCprQmkydQ2ZZ+DEUcKLWEVRT/YaUI3fmvqE
s7clrwvR+BxizK+J3NhJHF7viMkZqmoFZg7DNWzSlEEKjmLzZD/OPrJTSI7UQhm90ULw6WDMrG+W
xZ0L7A76uKimlDF4xM7cN736M7JrTB0O8dxb0StDMmH1OqlUuvj/gLw807PLjHSr2yXY7COF8sTt
zdKSn3Js5mS+YOHs67X9+2+fsEEFJMNBIQanz9kPu437qjVFCM0C0uVc+55RWEuEAKwz1DeaQO3j
0iecQwxt1uI9yj6kvaslk4O9LD5n15OAc7JwW9UjLh6Ofh8p7jJ0hid6xUQkf+SO60nTHahohs4j
3fM6/s+01qAIg/UxtcAcu8Gn1gcv8CebanPkpzihlNybCeXC+sn1Y6JPMWBJvuxp6b7Ih1Yosqbo
ILOS9Wg3NswnGc2TDDPITYbTcTxNVeymwlK/jA9MGx2yPv+tboWrykqLxfa4BpyAhqiyr4J5RaXx
GUqX6x5f0jvTbpGItbm4ISVP3MZtEQqI9ygjktMkdTH5fEi3dVKJXljSWWygMtSenFF38NAtQiyV
/mJ4cBMBGklN5m2LCZt6PM7zH6l9xchMs503rfveGPcbNVArZ3AnXLz5vg0Jo9j9vJqM7EKjLK26
vGAYYcUxGuKygAQfU939yNbSxeaxm8LrVG/EGI4y+pwxLS+EdlEieDnlOipDWoNpY9Ei2LiibXuJ
suy8G465rFYCAHt0u5PrWiMxmUNI4uPF+LFyFo3stj5SMXXJuyyP39+t2LA5IDtpQgY/MXarPXyj
zI+huE/JAjpi9/bI8HmBvwGo4PQ2XUvz+DVj7DxQSlDlzUOdcE2K1fVhnc8+m+XsdksQSaKH8D0e
TW/Dw+0ssyW129NvZ+snchCl6OUAn2o8OYRMSXrJMFDnFLs7O0bWrSPls8YpJVXoPHRq9OKJVI00
YPNVkj5X8gUcnbWhlK5Z7fOdCnowPhIHzmbzBdifwJM1Ihc9kivsXgtYOCN/KOL+JkW4X78RPkXg
N/ZiS8c6CCvszFhQYyUppogG8DGbfSbdOTDI0G4sa7q1Rq8nigAwr16ZKIIAd6Uxj8UXhy8pg6Z4
9aXyZ3bAZZBa94aynGTIhozetEx/jm6oUCOYoVoYdJ+PS7TpjCkylPVhAHqKOt3UuL4EASbslZWp
aVD9nqoIImKNFt4hIFjl2YO/F5ahLdwhLfKRKFPAPmr9ykK61cK3RsNgfJBr1WukGefPA+ktigEg
Tmz351sQOYz0S23zgNKDRXwRtZPYwmIxnJxgJM3HfgWPAB+213wKfc+PWRomQzzKHhuDI2v8nPtp
DvNgORAqQCGBAoqJKa0QpSjqIj87IQ9qexLS3DkRQ2KfgTHeXra/9gheaqQSiB6XyFT/WZzT0ZH0
e6j5K2eG8tCvHV2ThD/F6bc/c8WKnexZg/z3nKctT8yZYndwE8AGPMJwQP4a1IxpqfXDh5eWLZSW
QTZ0UsgkMeMGi3HaEFJW4KqYTG2bJjBBK/h6ajGDkuGwIXp/cMZP6NX1PJIIlh4gLTPNNlOusOIT
2H836thfeY2TP4iP7RjRq3iOGP+p0oOHTvB2L/JiYt09Ih/V/EAGNTawyLdxyVPGWnvzJIQ7eZ/f
7OE9x0NzVtRDsvbL9rrwk/dD4Hjao9A7KwacIQfQze6s2I4Kb/kCvhhQ2sjYv6i9thjr8U1oLHIE
tMHpITygj+VeG1LZ29OZeUtt8th8DvdwfOK7mmYf65EB/S3huyHL4GXyahRmS6LXZ+wRroo7ifA5
1YZLudhJP6hjdZ8e/HfcoMhqTRR0CsQMLNunGg2MLh0qzMw0gutnVi6ZupFZzpwEX/0SzWC6tML2
0X0RuWYQe/ihtccsbQvltsgawXfK3r2d6tcnLz9T7aR3eOhZPPFf06u/eJTHONLljORmplurlVw7
Fb20f2W2tVlZc7/dOidq9Oyo+SGL4YOMUgW0Y2K1vBC2yecGZrGkXyrrehV3tthShtS48+ZtnJ4H
vDdW2098/iYrQMXyqJ7pZp4PMe6ZjT4mIvubFsC7zCqM1w8fu5eU9UbEkTEXCEDw6TS9o2kNU2VT
nb2RmOpGOhsTfP+sof+Tgsnr+qS5rqJrTKBKRN+kAh1dPwRuCQeYU3Kvioy2N4Ma9joSf+v05oJb
TbV8toPA/MVF+b3QPpM894+Es0Q4z8ltVvn9PnNg9PeaVfwdCi+is2m8mZ6O4+FH01AAcD1lbHDx
EfsJtpxZkFoMpuU+fSWhpqqo4zfpJg6BYlPD+sEQqoFZ9wYkAP8exLOAMqUXxvK3IF7S9nFVgQLf
6DGY7M6KMkVtTjviEUEajtNQAkUZv/hRJVsK0vpnGPFWyhhzPNAm2EWD2Zjsz04K67UrwPrNEPym
YJITC4G7ogRbNaW1q58rGszL8sSzWGjePzV2s8SX5GW3Yb86dJIK/r+OuIXPm13RH6emIjw4bkrS
N8ieuRC0i45Q6Vw2Sbvq2yfrzLaohY1VuAOTiyBCqBR9gG9AEhqA+iTYlX0qBmWVun86ZqvZxawq
Q4TWNad3HkmCoUQWKKx+MwJ3WjqnU2rf4ELQTNLyF3Ltx2/zCyYwfT8QgcvqcLmpYmkG2G5Fw/d1
z93GNXYoWr29NWiGI9Zv+CaN6WTIFLdDCjH7mbTDPTiREcaB6baqjOUMxUTsAaRBlpQedYnuFkkO
X+KZVycBZ4Yy4EmbB8hAuxh89RD82SGDOulHkUDhZpssQ/P6uLAEIXqBeJPoBbswDQDVVF2P9/z0
WOfEOu1Q/RUaqoQlZtbw8SUtFOqlvmrV/Yyqyv0iPxOgy+tIDpF6gvn4bu4OU/LNbWjDqIVEsVH1
vxeOuc536FO+n5Ro+KDa0TPvcmUyWRXypuRgE3tbDJ5c30/UaBerjX8VP+63PNWlKoxokh+tm6iW
X1GULX+zyAL9OE7ry3iAmtrHRDXS0zs0zTupeNgrlB4wa/SCJIlLIvOXfY3PZ44hpMhUjr8+e3kD
EAMPRUjHrT3YaCrcDDS36I1Hjf306xKTzTh9s3Ct/8rAIjydcTeMKnrFaYsX1NHjpwaSyHcHL7rs
9mGuBKG8PAFilUNnZN0RsNauY5hsjJTWOMFK4CInIDowGOw6Be1ID8nCnC4tHro6ZGEdotio8B/u
rSuOPsbaYGqhY3Pp/kGq+/2Tzcc03hY+aBKVH1GdaRbnlYiR0Goa7lvD0gW/Y6HQBOSZfWsMcZuP
xzd1npIG16Z77/Ta52sxRiqNMX8d2zasOqGwmwA7hblvwF6BjOI+WfD8HvR4IHe7LP5cbkkjh/uL
o0uw+ZDITZ2pEVQVLD/79CvQ/bgTLtl2KrVNcBhKQalaQXqVjx9rUqhTn12VQ36d5sXhof3qOLL8
Jh6YYqEiQiKh3cA5iPENoSUVviJAtKhXhL9DHnvdBa8tJECzcvspRsz3Q/T6uG4mSqRB5wFXI+lK
pDn+wY09wz843S4oRqVOa4ggSIQjfsRr4BhEJ66ti5WTBmAU+3FyntAYKH/wASSb0224/c01/UHC
UxVY+nexLSnBn1AEv55Ex2qOTKLJrYaH661Et1A5ZYFqFAmcHvqXghIwZyUPqxgiHf0fm4c/72g/
G/9KQC14ddjlJjJ9Rgw0a1FqnjcVB0diVOuStDikTu+a3KJMdBzkwuqQ6AFgCcydqn5JK+27iE43
vZLXApcAUpZZtT5zqvXyVv77pCzGUwVl0t5dhhMKI4cwFsGfEWkIrq64QYXOjyjYg/uEHKe9L8lx
gL6u8McWRGIO/zvUWXidk5eiUbG+4TVeIv9RnA2KuGcJdJlzP/tk7AGVYuDNmPhERDRs1JP6+nbW
CF6m6mvtSv7CtTWa3J1U42cZKVsrRp2K+ksxsGjLjsbBPmyZsF0tBbowVT6ryx+fDA5cPX6xVbLZ
/HKc72ibqBDXEXM0HXyUQ1Go5j0Bt7Sv4K4l+dL5tYaAWxeWymxY9T1YIStc9Tk9+HvJcAKac8EI
3Dl1+ZkNpadFZbbih9KCOtv1UTfitdCSUvi/+8XcLG9pZe4xpBH5wcSrwv/NPH/5Pj/xwsDtGPEq
H9M1yClijgkC477bdtuWmHiGpYBiGbCUqpirlDZR5qOw1Hk5Gg7+CF2FfDdx15E6MGyfPr7HRhIr
MtiXUQj3/zqGL8jmV56oSpVxH85hsODNRYoSx+XDNo97T/xoYz9MwMiRy5hPqXnfEwDFwGKC5yTQ
GujYmxyL3wRbe5LMuKzwfrFWjbJN8oVxAjlTntDoFN88RjfEXwt5dYKbwJ/Z4gTsORBRW3yoGJtv
7QyQoUHlPWyYq9dMaNl7srRVIYPxJJP61cbieqJpwBmtuL0aQrBpgBjlQ4wScOW5W4idI2EF2wmS
wRWlwWDeB4pmqUpug2q9Bkbeia11kLbPJI6Chk2QLfp69ImMXvszhfvSB+ZpdC+V5rWfV0edjsA7
VN+YmueWjaAt2/8xgxg8Zz+X6FD6F3s+pm5m6L81A06SoxLFmBhk/Bd9rd7HxTEMHjdqY0+w1598
ItYuNShli7LWXSBfssRaWSSm2P69FVGXUm53kVbGK/n0PDC48uMlA3BgS1DPQJ0juXHGEr7DG2d0
der1MAxQ5dwLYJoF/i+GLgxfOWKPlvYF2Esw3YUVTFB3QYh/o9vdTIy0TfRuiu0K64yy9ic0fVu8
nR1WediW+EUJJZDDb4PElmxHQLyxnFevQKP8kqyyMmOS6hvpBcw22HXSH0Yy5hlTxZfHSSIZKVpq
Z3H79VzuQvNEhsdKtYfz0Mc3ptWZNP9YUJcC7kLLFQDnZLHd6oUrTF1XX+N41jgG6Trt+tp43SOn
VoTNTyJnoVNEbpASMtVwCTjGcJzBG+m4avqK7/LuSCyZz4J/ZkouZu4fNSbXFnYlOdcpB+wy7jkP
Lfc7YUeOGuRlj0N0m93c3FFKNECx6i+Gn4Xlnflsqk9NIA7mt1dm/W3LAkixzKyZjOiOGyWwWdG1
IkFE2DozuccicOS3HgOZjxrhH8zQCwEhPAeh4N95f/73OtLHRxzDnUX7rWReuSCC0w+sCCDWxI40
kSoQYYdQYTLzv9e50Rr8VUiskyqqPW9w6/qr9w/71bJaEuGAmYCOLvrMKVjzSlir0kMueVybjB8V
w5kElO+jkQ8eO8pIzeH0CDw0Uvm1iLViBlzmNyf8IGfZg2Vj84B2hHpMKfRe4YyRNYzkJLOADSFb
f5gYXyV2RgLhN2d+X7MhJCBszAB+zl0ao0gmer6vZen5s72OvQ5FPtAYZ2cTr1ddxKmlhiDnE7rw
FjwD/GRFgSZVV5LIfuGLkKDCqd+gkt5sqRHZoizJo1ZtiYcpXcn4ZBhp7OeZV7+rC+XsLOYStirc
NV4qMajbfqoJyhBW31lSMbNx3N7z3kifu5/mPcAXfXEcxwEe5eRQII4C2TdeDoHv10NQBkPmOnWj
tJEqIOJFkEWVBDRUSRhjFMAnIwbydjzjW/9mLHA419LjYSqoDsC+FAEZWZq3ufOIgYC3boFMhfJM
As+WfWb6NIbFmg4pf5CZt9T8NVZhBIBVYvz+sPbWg5O09kyXffUsea9y+WFjG2mHqoInuki4xBhf
6/3/zxIK0x5nbWw/Z2y8pffmlbHxwjVobRRMFduSIuFmYxtQtmVLTH6Qn8748jEJTfMXdVCpa0We
scfrxDeQ5icktbd+8pe4MpS0yb94gBewzFlO+BUZ9CCXd3IBvb0GkCCP2LIZijIfEhuZo8EBsYDw
+hbfaei7nOzI7E39TkM0CNlAdnUdbHAGZJqz6aj25EJ1uVQ07Me76O3fskMxkAKvAY/jqF1pVZwZ
dDNeQA7V/Yox9OVELqK5boK7vCQ0XOOSAAxJ/mGn69DAhbDxTxLoQFO4kYpVmMiS890zNGVnTTwc
lqsD2nLzOk/Hl8sYgr86z6+Om1/pinf6uGmLiNvZ2DtcuZdZSENsxOuthvNPF8XWE3pUQX5BOsA3
VLlvqP+LXFclpjmA0Occvn95uYr4dPbfJlwoghLtVPrC8uj/DMsDKchCNwm8chKK9XuaF4PBmbNp
SdCyGpMkZHuGLtkgNUAgTYQI2kVE5KOgI5OC560fs1CquTjYYKRSiHGRNxB4YSFsQmBXPHI97YJm
Jxe2mOa1AbmTaT1BbHX9Im+Jnf1aHgwXRzwyjZ913noN7lI+JB3ce6fz6YuMeWBbfSoJxelZPE7C
X/fHVf+4Ymu8jDxrMmUhR+DHu9iwBPfhB6S68ZH/7EoGKJU0Ki68drkam4iZMMeV4GmlkBJjFkuK
iWpQK+lpH0UHNygS5EAkAav9uDq3EyCZ7KCStdMTqK4sxPd/BvEO6KiFsoNcgTsCmRsxeTxhOYnx
NBBUv0HxCCeWWj4JhaOkQyvc04m14ageL2ZJSyin0j/a4FD0W8OkQ5LAEqbHdVs6krXUzaaG2WHI
uQjTu0t4xlqXhysrAEihQrxBrrvckoWMWxRSBmVpgJg9vGqk3XLJFFZOf4JJ0yfhn4oOY9xP0hUS
G9heHJ2Avkl7QfltkhDh3Wq9IXKpGz/s52UcBQOLleO+c769xIS7jXufPleAe/O0yz3QstQHaj2K
AtZ8lIs8P8yHlNv52mePCU4bmRfQJF8o+JFagtmUTOk/i6Z6aw7x/gFkUc8xwf6BpTrKN7CRjOVp
dzRuH97DJtQeTgfyVp3WelyP5ZwVqE1/r1Cu97hxcfq9TcWvbQ3hvWsq8Up7hpoFPRXsT0DYfGqN
3baH6RjmvakJUje9sNZm+5SePA9IUmUXznjLynYsSbk2UCf40HD0/sZNulVeW2YIVp1djRP+JUcB
WvRKasRLflYVaUWS9ZzT5ihBEXxibiM0lK6FCLiaFbvVe6Vqd60=
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
