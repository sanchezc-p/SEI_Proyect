// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jan 18 10:47:32 2025
// Host        : LenovoPablo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/pablo/OneDrive/Escritorio/Master Granada/1 1
//               cuatri/Proyecto_V3_FINAL/Proyecto_V3_FINAL.srcs/sources_1/bd/design_1/ip/design_1_delayed_reset_0_0/design_1_delayed_reset_0_0_stub.v}
// Design      : design_1_delayed_reset_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "delayed_reset,Vivado 2019.2" *)
module design_1_delayed_reset_0_0(i_clk, o_reset)
/* synthesis syn_black_box black_box_pad_pin="i_clk,o_reset" */;
  input i_clk;
  output o_reset;
endmodule
