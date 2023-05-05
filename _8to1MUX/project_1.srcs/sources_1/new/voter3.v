`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 14:41:40
// Design Name: 
// Module Name: voter3
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


module voter3(S1,S2,S3,Z);
input S1,S2,S3;
output Z;
    wire [7:0] I;
    assign I=8'b11101000;
_8to1MUX u1(I,S1,S2,S3,Z);
endmodule
