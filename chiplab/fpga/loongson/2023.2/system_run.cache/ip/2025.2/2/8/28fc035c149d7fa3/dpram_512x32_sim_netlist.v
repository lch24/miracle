// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 13 19:56:55 2026
// Host        : loong-arch-mini running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20560)
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
