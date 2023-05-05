`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 19:40:26
// Design Name: 
// Module Name: sim_mod12_cnt
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


module sim_mod12_cnt(

    );
    reg clk;
    reg start;
    wire [3:0] y;
    mod12_cnt_cjm u0(clk,start,y);
    initial
    begin 
      clk = 1'b0;
      start = 1'b0;
      #20 start = 1'b1;
    end
    always #10 clk = ~clk;
endmodule
