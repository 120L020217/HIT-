`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:01:14
// Design Name: 
// Module Name: digit_change
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


module digit_change(
    input OK,
    input Rst,
    output reg [1:0] digit
    );
    initial 
    begin
      digit = 0;
    end
    always @(posedge OK or posedge Rst)
    begin
      if (OK == 1)
      begin
        digit <= digit + 1;
      end
      else if (Rst == 1)
      begin
        digit <= 0;
      end
    end
endmodule
