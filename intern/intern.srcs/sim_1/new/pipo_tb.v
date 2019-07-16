`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2019 10:48:13 AM
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb;
reg [3:0]a0;
reg [3:0]a1;
reg [3:0]a2;
reg [3:0]a3;
reg clk;
wire [3:0]q0;
wire [3:0]q1;
wire [3:0]q2;
wire [3:0]q3;
pipo uut(a0,a1,a2,a3,clk,q0,q1,q2,q3);
initial
begin
a0<=4'b1011;
a1<=4'b0010;
a2<=4'b1001;
a3<=4'b1110;
clk<=0;
end
always #10 clk=~clk;
endmodule
