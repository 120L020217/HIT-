`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 13:49:48
// Design Name: 
// Module Name: cjm_fa_useip
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


module cjm_fa_useip(
    input ain,
    input bin,
    input cin,
    output sum,
    output cout
    );
    wire d,e,f;
    halfadder_0 u1(ain,bin,e,d);
    halfadder_0 u2(d,cin,f,sum);
    or u3(cout,e,f);
endmodule
