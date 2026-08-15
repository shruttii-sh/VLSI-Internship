`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 16:12:12
// Design Name: 
// Module Name: TB_register_4bit
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


module TB_register_4bit();
reg [3:0]d;
reg clk;
wire [3:0]q;
register_4bit k1(clk,d,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
d=4'b0000;#10;
d=4'b0001;#10;
d=4'b0010;#10;
d=4'b0011;#10;
d=4'b0100;#10;
d=4'b0110;#10;
d=4'b0111;#10;
$finish;
end
endmodule
