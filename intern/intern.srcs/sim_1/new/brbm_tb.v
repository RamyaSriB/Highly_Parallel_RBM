`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2019 06:00:10 PM
// Design Name: 
// Module Name: brbm_tb
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


module brbm_tb;
reg [3:0]a;
reg clk;
wire [3:0]w4;
wire [3:0]w5;
brbm uut(a,clk,w4,w5);
initial
begin
a<=4'b1011;
clk<=0;
#60 a<=4'b0110;
#20 a<=4'b0001;
#20 a<=4'b1100;
end
always #10 clk=~clk;
endmodule
