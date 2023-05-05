`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 19:15:05
// Design Name: 
// Module Name: mod12_cnt_cjm
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


module mod12_cnt_cjm(
    input clk,
    input start,
    output [3:0] y
    );
    wire a,b,c,d,e,f,g;
    jk_cjm u0(clk,1,1,start,1,a);
    jk_cjm u1(clk,a,a,start,1,b);
    jk_cjm u2(clk,d,c,start,1,e);
    jk_cjm u3(clk,f,c,start,1,g);
    assign c = a&b;
    assign d = (~g)&c;
    assign f = e&c;
    assign y = {g,e,b,a};
endmodule
