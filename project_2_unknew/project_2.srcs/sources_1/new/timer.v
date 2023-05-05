`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 19:02:45
// Design Name: 
// Module Name: timer
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


module timer(
    input clk,
    input [2:0] state,
    input InputPwd,
    output reg [3:0] timer1,
    output reg [3:0] timer2,
    output reg [3:0] resttime
    );
    initial 
    begin
      timer1 = 1;
      timer2 = 0;
      resttime = 10;
    end
    reg [31:0]time_cnt = 0;//计时器分频模块的计数变量
    parameter maxcnt = 50000000;
    reg clk_1;
    initial
    begin
      clk_1 = 0;
    end
    always @(posedge clk)
    begin 
      if (state == 1)
        begin
          if (time_cnt == maxcnt)
            begin
              clk_1 <= ~clk_1;
              time_cnt <= 0;
            end
          else 
            begin 
              time_cnt <= time_cnt + 1;
            end
        end
    end
    always @(posedge clk_1 or posedge InputPwd)
    begin
      if (InputPwd == 1)
      begin
        resttime <= 10;
        timer1 <= 1;
        timer2 <= 0;
      end
      else 
      begin
        resttime = resttime - 1;
        timer1 <= resttime[3] & resttime[1];
        timer2 <= resttime;
      end
    end
endmodule
