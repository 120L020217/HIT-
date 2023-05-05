`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 21:37:20
// Design Name: 
// Module Name: electronic_coded_lock
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


module electronic_coded_lock(
    input clk,
    input InputPwd,
    input SetPwd,
    input Lock,
    input OK,
    input Rst,
    input Num0,
    input Num1,
    input Num2,
    input Num3,
    output wire red,
    output wire green,
    output wire alarm,
    output wire [3:0] wm1,
    output wire [3:0] wm2,
    output wire [7:0] dm1,
    output wire [7:0] dm2
    );
    wire [3:0] timer;wire flag_correct;wire [2:0] state;
    wire [1:0]digit;
    wire [3:0] Inkey1;wire [3:0] Inkey2;wire [3:0] Inkey3;wire [3:0] Inkey4;
    wire [3:0] key1;wire [3:0] key2;wire [3:0] key3;wire [3:0] key4;
    wire [3:0] timer1;wire [3:0] timer2;wire [3:0] resttime;
    wire [3:0] locker1;wire [3:0] locker2;
    status_change u0(InputPwd,SetPwd,Lock,timer,flag_correct,state);
    digit_change u1(OK,Rst,digit);
    password_change u2(SetPwd,state,Inkey1,Inkey2,Inkey3,Inkey4,key1,key2,key3,key4);
    check u3(key1,key2,key3,key4,Inkey1,Inkey2,Inkey3,Inkey4,flag_correct);
    timer u4(clk,state,InputPwd,timer1,timer2,resttime);
    status_yog u5(state,red,green,alarm,locker1,locker2);
    users_input u6(Num0,Num1,Num2,Num3,digit,key1,key2,key3,key4);
    seg_visual u7(clk,key4,key3,key3,key1,wm1,dm1);
    seg_visual u8(clk,timer2,timer1,locker2,locker1,wm2,dm2);
endmodule
