`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:44:07
// Design Name: 
// Module Name: sim_seg_div
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


module sim_seg_div(

    );
    reg clk;
    wire clk_2000;
    seg_div u0(clk,clk_2000);
    initial
    begin
      clk = 0;
    end 
    always #1 clk = ~clk;
endmodule
