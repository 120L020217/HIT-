`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 19:17:12
// Design Name: 
// Module Name: jk_cjm
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


module jk_cjm(
    input clk,
    input j,
    input k,
    input rst,
    input set,
    output q
    );
    reg q;
    always @ (posedge clk or negedge rst or negedge set)
    begin
      if (!rst)
      begin
        q <= 1'b0;
      end
      else if (!set)
      begin
        q = 1'b1;
      end
      else  
      q <= (j&(~q))|(~k&q);
    end
endmodule
