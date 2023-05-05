`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 20:38:29
// Design Name: 
// Module Name: status_change
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


module status_change(
    input InputPwd,
    input SetPwd,
    input Lock,
    input [3:0] timer,
    input flag_correct,
    output reg [2:0] state
    );
    initial 
    begin
      state = 0;
    end
    always @(posedge InputPwd or posedge SetPwd or posedge Lock or negedge timer[0])
    begin
      if (timer == 0 && state == 1) begin
        state <= 4;end
      else begin
        if (InputPwd == 1)
        begin
          if (state == 0) begin
            state <= 1;end
          else if (state == 1)
          begin
            if (flag_correct) begin
              state <= 2;end
            else begin
              state <= 4;end
          end
        end
        else if (SetPwd == 1)
        begin
          if (state == 2) begin
            state <= 3;end
          else if (state == 3) begin
            state <= 2;end
        end
        else if (Lock == 1)
        begin
          state <= 0;
        end
      end
    end 
endmodule
