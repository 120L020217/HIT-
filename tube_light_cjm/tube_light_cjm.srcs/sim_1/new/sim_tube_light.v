`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/30 00:23:54
// Design Name: 
// Module Name: sim_tube_light
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_tube_light();

reg clk;
reg rst;
wire [7:0] led;

tube_light u0(clk,rst,led);
parameter PERIOD = 10;

always  #(PERIOD/2) clk = ~clk;

initial
  begin
    clk = 1'b0;
    rst = 1'b0;
  # 100;
  rst = 1'b1;
  # 100;
  rst = 1'b0;
  end
  
endmodule
