`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 13:57:02
// Design Name: 
// Module Name: sim_cjm_fa_useip
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


module sim_cjm_fa_useip();
reg ain,bin,cin;
wire cout,sum;
initial
    begin
        ain = 1'b0;bin = 1'b0;cin = 1'b0;
    end
always #20 {ain,bin,cin} = {ain,bin,cin} + 1;
cjm_fa_useip cjm_fa_useip1(ain,bin,cin,sum,cout);
endmodule
