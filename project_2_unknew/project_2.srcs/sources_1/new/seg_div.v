`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:39:28
// Design Name: 
// Module Name: seg_div
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


module seg_div(
    input  clk,
    output reg clk_2000
    );
    initial 
    begin 
      clk_2000 = 0;
    end
    reg [14:0]div_cnt = 0;
    parameter maxcnt = 25000;
    always @(posedge clk)
    begin 
      if (div_cnt == maxcnt)
        begin
          clk_2000 <= ~clk_2000;
          div_cnt <= 0;
        end
      else
        begin
          div_cnt <= div_cnt + 1;
        end
    end
endmodule
