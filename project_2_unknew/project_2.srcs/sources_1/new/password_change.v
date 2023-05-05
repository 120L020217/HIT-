`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:26:50
// Design Name: 
// Module Name: password_change
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


module password_change(
    input SetPwd,
    input [2:0] state,
    output reg [3:0] Inkey1,
    output reg [3:0] Inkey2,
    output reg [3:0] Inkey3,
    output reg [3:0] Inkey4,
    input [3:0] key1,
    input [3:0] key2,
    input [3:0] key3,
    input [3:0] key4
    );
    initial 
    begin
      Inkey1 = 0;
      Inkey2 = 2;
      Inkey3 = 1;
      Inkey4 = 3;
    end
    always @(posedge SetPwd)
    begin
      if (state == 3)
      begin 
        Inkey1 = key1;
        Inkey2 = key2;
        Inkey3 = key3;
        Inkey4 = key4;
      end
    end
endmodule
