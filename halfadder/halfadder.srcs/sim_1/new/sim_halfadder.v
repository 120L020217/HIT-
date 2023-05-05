`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 11:38:18
// Design Name: 
// Module Name: sim_halfadder
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


module sim_halfadder();
reg ain,bin;
wire cout,sum;
halfadder u1(ain,bin,cout,sum);
initial
    begin 
        ain = 1'b0;bin = 1'b0;
    end
always #20 {ain,bin} = {ain,bin} + 1;
endmodule
