`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:55:51
// Design Name: 
// Module Name: sim_electronic_coded_lock
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


module sim_electronic_coded_lock(

    );
    reg clk;
    reg InputPwd;reg SetPwd;reg Lock;
    reg OK;reg Rst;
    reg Num0;reg Num1;reg Num2;reg Num3;
    wire red;wire green;wire alarm;
    wire [3:0] wm1;wire [3:0] wm2;wire [7:0] dm1;wire [7:0] dm2;
    electronic_coded_lock u0(clk,InputPwd,SetPwd,Lock,OK,Rst,red,green,alarm,wm1,wm2,dm1,dm2);
    initial 
    begin
      clk = 0;
    end
    always #1 clk = ~clk;
endmodule
