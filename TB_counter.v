`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 16:38:26
// Design Name: 
// Module Name: TB_counter
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


module TB_counter();
reg clk,rst;
wire [3:0]q;
counter k1(q,clk,rst);

initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
rst=1;#10;
rst=0;#50
$finish;
end
endmodule
