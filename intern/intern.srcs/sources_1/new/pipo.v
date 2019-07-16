`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2019 10:30:28 AM
// Design Name: 
// Module Name: pipo
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
module dff(d,q,clk,rst);
input [3:0]d,clk,rst;
output reg [3:0]q;
always @(posedge clk)
begin
if(rst==1'b1)
q<=4'b0000;
else 
q<=d;
end
endmodule
module pipo(
input [3:0]a0,
input [3:0]a1,
input [3:0]a2,
input [3:0]a3,
input clk,
output [3:0]q0,
output [3:0]q1,
output [3:0]q2,
output [3:0]q3
);
dff d1(a0,q0,clk,1'b0);
dff d2(a1,q1,clk,1'b0);
dff d3(a2,q2,clk,1'b0);
dff d4(a3,q3,clk,1'b0);
endmodule
