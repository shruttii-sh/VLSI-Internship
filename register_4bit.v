`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 16:04:56
// Design Name: 
// Module Name: register_4bit
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


module register_4bit(clk,d,q);
input [3:0]d;
input clk;
output reg [3:0]q;

always@(posedge clk)
begin
q<=d;
end
endmodule

