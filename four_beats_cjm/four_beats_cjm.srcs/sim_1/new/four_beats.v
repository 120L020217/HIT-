`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/13 11:55:32
// Design Name: 
// Module Name: four_beats
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


module four_beats(

    );
    reg clk,start_rst,start_set;
    wire [3:0] y; 
    four_beats_cjm u0(clk,start_rst,start_set,y);
    always #10 clk = ~clk;
    initial
    begin 
      clk = 1'b0;
      start_rst = 1'b0;
      start_set = 1'b0;
      #30 
      start_rst = 1'b1;
      start_set = 1'b1;
    end
endmodule
