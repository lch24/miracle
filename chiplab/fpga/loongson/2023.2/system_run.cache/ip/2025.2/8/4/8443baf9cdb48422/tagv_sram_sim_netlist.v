// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 13 19:56:55 2026
// Host        : loong-arch-mini running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tagv_sram_sim_netlist.v
// Design      : tagv_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tagv_sram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
        .regcea(1'b1),
        .regceb(1'b1),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20368)
`pragma protect data_block
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
f4CyKfWKfhTxtR+BVzdW1besVA==
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
