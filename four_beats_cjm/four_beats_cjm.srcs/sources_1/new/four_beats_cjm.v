`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/13 11:40:47
// Design Name: 
// Module Name: four_beats_cjm
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


module four_beats_cjm(
    input clk,
    input start_rst,
    input start_set,
    output [3:0] y
    );
    wire a,b,c,d;
    d_cjm u0(clk,a,start_rst,1,b);
    d_cjm u1(clk,c,start_rst,1,a);
    d_cjm u2(clk,d,start_rst,1,c);
    d_cjm u3(clk,b,1,start_set,d);
    assign y = {d,c,a,b};
endmodule
