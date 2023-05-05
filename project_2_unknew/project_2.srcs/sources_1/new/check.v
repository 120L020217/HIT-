`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 20:31:27
// Design Name: 
// Module Name: check
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


module check(
    input [3:0] key1,
    input [3:0] key2,
    input [3:0] key3,
    input [3:0] key4,
    input [3:0] Inkey1,
    input [3:0] Inkey2,
    input [3:0] Inkey3,
    input [3:0] Inkey4,
    output reg flag_correct
    );
    initial
    begin
      flag_correct = 0;
    end
    reg a,b,c,d,e,f,g,h,i;
    always @(key1 or key2 or key3 or key4)
    begin
      a = (key1) ^ (Inkey1);
      b = (key2) ^ (Inkey2);
      c = (key3) ^ (Inkey3);
      d = (key4) ^ (Inkey4);
      e = |a;
      f = |b;
      g = |c;
      h = |d;
      i = e || f || g || h;
      flag_correct = ~i;
    end
endmodule
