`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:08:30
// Design Name: 
// Module Name: status_yog
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


module status_yog(
    input [2:0] state,
    output reg red,
    output reg green,
    output reg alarm,
    output reg [3:0] locker1,
    output reg [3:0] locker2
    );
    initial 
    begin
      red = 1;
      green = 0;
      alarm = 0;
      locker1 = 12;
      locker2 = 13;
    end
    always @(state)
    begin
      case (state)
        3'b000: begin  
        red = 1;green = 0; alarm = 0;
        locker1 = 12;locker2 = 13; end
        3'b001: begin  
        red = 1;green = 0; alarm = 0;
        locker1 = 12;locker2 = 13; end
        3'b010: begin  
        red = 0;green = 1; alarm = 0;
        locker1 = 10;locker2 = 11; end
        3'b011: begin  
        red = 0;green = 1; alarm = 0;
        locker1 = 10;locker2 = 11; end
        3'b100: begin  
        red = 1;green = 0; alarm = 1;
        locker1 = 12;locker2 = 13; end
      endcase
    end
endmodule
