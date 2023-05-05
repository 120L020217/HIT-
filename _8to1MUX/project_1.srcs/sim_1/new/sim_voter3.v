`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 14:33:23
// Design Name: 
// Module Name: sim_voter3
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


module sim_voter3();
reg S1,S2,S3;
wire Z;
voter3 v1(S1,S2,S3,Z);
initial
    begin 
        S1 = 0;S2 = 0;S3 = 0;
    end
always #20 {S1,S2,S3} = {S1,S2,S3} + 1;
endmodule
