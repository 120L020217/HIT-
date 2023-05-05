`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:53:52
// Design Name: 
// Module Name: seg_visual
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


module seg_visual(
    input clk,
    input [3:0] sw1,
    input [3:0] sw2,
    input [3:0] sw3,
    input [3:0] sw4,
    output reg [3:0] wm,
    output reg [7:0] dm
    );
    initial
    begin 
    dm = 15;
    wm = 4'b0001;
    end
    wire clk_2000;
    reg [3:0] disp_dat;
    reg [1:0] disp_bit;
    initial 
    begin
      disp_dat = 15;
      disp_bit = 0;
    end
    
    seg_div u0(clk,clk_2000);
    
    always @(posedge clk_2000)
    begin
      if (disp_bit == 3)
        disp_bit <= 0;
      else 
        disp_bit <= disp_bit + 1;
      case (disp_bit)
        2'b00:
          begin
            disp_dat <= sw1;
            wm <= 4'b0001;
          end
        2'b01:
          begin
            disp_dat <= sw2;
            wm <= 4'b0010;
          end
        2'b10:
          begin
            disp_dat <= sw3;
            wm <= 4'b0100;
          end
        2'b11:
          begin
            disp_dat <= sw4;
            wm <= 4'b1000;
          end      
      endcase 
    end
    always @(disp_dat)
    begin
      case(disp_dat)
        4'b0000:dm = 8'hfc;
        4'b0001:dm = 8'h60;
        4'b0010:dm = 8'hda;
        4'b0011:dm = 8'hf2;
        4'b0100:dm = 8'h66;
        4'b0101:dm = 8'hb6;
        4'b0110:dm = 8'hbe;
        4'b0111:dm = 8'he0;
        4'b1000:dm = 8'hfe;
        4'b1001:dm = 8'hf6;
        4'b1010:dm = 8'hfc;
        4'b1011:dm = 8'hce;
        4'b1100:dm = 8'h1c;
        4'b1101:dm = 8'h9c;
        4'b1110:dm = 8'h02;
        4'b1111:dm = 8'h00;
      endcase
    end
endmodule
