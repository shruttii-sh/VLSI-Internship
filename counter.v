`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 16:34:42
// Design Name: 
// Module Name: counter
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


module counter(q,clk,rst);
input clk,rst;
output reg[3:0]q;

always@(posedge clk)
begin
if(rst)
q=4'b0000;
else
q<=q+1'b1;
end
endmodule
