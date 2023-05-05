`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:18:38
// Design Name: 
// Module Name: users_input
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


module users_input(
    input Num0,
    input Num1,
    input Num2,
    input Num3,
    input [1:0] digit,
    output reg [3:0] key1,
    output reg [3:0] key2,
    output reg [3:0] key3,
    output reg [3:0] key4
    );
    initial 
    begin
      key1 = 15;
      key2 = 15;
      key3 = 15;
      key4 = 15;
   end
   always @(Num0 or Num1 or Num2 or Num3)
   begin
     case (digit)
       2'b00: begin
         key1 = Num0;end
       2'b01: begin
         key2 = Num1;end  
       2'b10: begin
         key3 = Num1;end 
       2'b11: begin
         key4 = Num1;end 
     endcase
   end
endmodule
