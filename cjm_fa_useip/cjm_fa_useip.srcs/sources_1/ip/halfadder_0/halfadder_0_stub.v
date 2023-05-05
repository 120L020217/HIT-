// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Oct 23 13:44:59 2021
// Host        : LAPTOP-RK6SIO5B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/2018.3/myworkplace/cjm_fa_useip/cjm_fa_useip.srcs/sources_1/ip/halfadder_0/halfadder_0_stub.v
// Design      : halfadder_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "halfadder,Vivado 2018.3" *)
module halfadder_0(ain, bin, cout, sum)
/* synthesis syn_black_box black_box_pad_pin="ain,bin,cout,sum" */;
  input ain;
  input bin;
  output cout;
  output sum;
endmodule
