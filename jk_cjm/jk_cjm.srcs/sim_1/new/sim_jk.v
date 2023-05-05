`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 20:10:49
// Design Name: 
// Module Name: sim_jk
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


module sim_jk(

    );
    reg clk,j,k,rst,set;
    wire q;
    jk_cjm u0(clk,j,k,rst,set,q);
    always #10 clk = ~clk;
    initial
    begin
      rst = 1'b0;
      set = 1'b1; 
      clk = 1'b0;
      j = 1'b0;
      k = 1'b0;
      #100 rst = 1'b1;
      #100 set = 1'b0;
      #100 set = 1'b1;
    end
    always #30 {j,k} = {j,k} + 1'b1;
endmodule
