`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 14:23:52
// Design Name: 
// Module Name: _8to1MUX
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


module _8to1MUX(
    input [7:0] I,
    input S1,
    input S2,
    input S3,
    output Z
    );
    reg Z;
    always @(I[0] or I[1] or I[2] or I[3] or I[4] or I[5] or I[6] or I[7] or S1 or S2 or S3)
        begin
            case({S1,S2,S3})
            3'b 000 : Z = I[0];
            3'b 001 : Z = I[1];
            3'b 010 : Z = I[2];
            3'b 011 : Z = I[3];
            3'b 100 : Z = I[4];
            3'b 101 : Z = I[5];
            3'b 110 : Z = I[6];
            3'b 111 : Z = I[7];
            endcase
        end
endmodule


