`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/13 11:43:12
// Design Name: 
// Module Name: d_cjm
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


module d_cjm(
    input clk,
    input d,
    input rst,
    input set,
    output q
    );
    reg q;
    always @ (posedge clk or negedge rst or negedge set)
    begin
      if (!rst)
        q <= 1'b0;
      else if (!set)
        q <= 1'b1;
      else 
        q <= d;
    end
endmodule
