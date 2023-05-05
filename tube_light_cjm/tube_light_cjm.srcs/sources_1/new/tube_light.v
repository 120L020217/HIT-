`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/29 20:51:16
// Design Name: 
// Module Name: tube_light
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


module tube_light(clk,rst,led);

  input clk;
  input rst;
  output [7:0] led;
  
  reg [23:0] cnt_reg;
  reg [7:0] light_reg;
  
  always @ (posedge clk or posedge rst)
      begin
          if(rst)
          cnt_reg <= 24'h000000;
          else 
          cnt_reg <= cnt_reg + 1'b1;
      end 
  
  always @ (posedge clk or posedge rst)
      begin 
          if(rst)
          light_reg <= 8'h01;
          else if(cnt_reg == 24'hffffff)
          begin
              if(light_reg == 8'h80)
              light_reg <= 8'h01;
              else
              light_reg <= light_reg << 1;
          end
          else 
          light_reg <= light_reg;
      end
  assign led = light_reg;
endmodule

