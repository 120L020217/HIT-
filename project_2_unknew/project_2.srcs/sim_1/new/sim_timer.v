`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 19:37:09
// Design Name: 
// Module Name: sim_timer
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


module sim_timer(

    );
    reg clk;
    reg [2:0] state;reg InputPwd;
    wire [3:0]timer1;wire [3:0] timer2;wire [3:0] resttime;
    timer u0(clk,state,InputPwd,timer1,timer2,resttime);
    initial
      begin
      clk = 0;
      state = 0;
      InputPwd = 0;
      #1000 state = 1;
     // #5000 InputPwd = 1;
     // #1000 InputPwd = 0;
      end 
    always #1 clk = ~clk;
endmodule
