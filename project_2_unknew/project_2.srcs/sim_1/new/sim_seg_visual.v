`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:57:07
// Design Name: 
// Module Name: sim_seg_visual
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


module sim_seg_visual(

    );
    reg clk;
    reg [3:0] sw1;reg [3:0] sw2;reg [3:0] sw3;reg [3:0]sw4;
    wire [3:0]wm;wire [7:0] dm;
    seg_visual u0(clk,sw1,sw2,sw3,sw4,wm,dm);
    initial
      begin
      clk = 0;
      sw1 = 1;
      sw2 = 2;
      sw3 = 3;
      sw4 = 4;
      end 
    always #1 clk = ~clk;
endmodule
