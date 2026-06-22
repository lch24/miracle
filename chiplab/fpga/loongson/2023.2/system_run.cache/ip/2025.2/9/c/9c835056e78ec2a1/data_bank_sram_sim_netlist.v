// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed May 13 19:56:55 2026
// Host        : loong-arch-mini running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_bank_sram_sim_netlist.v
// Design      : data_bank_sram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_bank_sram,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19808)
`pragma protect data_block
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
pctouSHkrqEVM0D3oxVhBxJgUbt30uqNuzlYAWY=
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
