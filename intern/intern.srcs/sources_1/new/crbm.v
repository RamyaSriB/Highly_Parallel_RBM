`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 06:15:39 PM
// Design Name: 
// Module Name: crbm
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


module crbm(
input [3:0]w4,
input [3:0]w5,
input clk,
input rst,
output reg [3:0]w8
);
reg [3:0]w6;
reg [3:0]w7;
reg [3:0]p;
  always@(posedge clk)
  begin
  if(rst)
  begin
  p<=4'b0000;
  end
  w6=(w4*w5);
  w7=w6+p;
  p=w7;
  w8=p; 
   end
endmodule
