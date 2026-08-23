module datapath(
input [3:0] A,
input [3:0] B,
input [2:0] sel,
output [3:0] result);

alu u1(A, B, sel, result);

endmodule


----------testbench-------------
`timescale 1ns/1ps

module datapath_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;
wire [3:0] result;

datapath uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    A = 4'b0101;
    B = 4'b0011;
    sel = 3'b000;
    #10;

    A = 4'b1001;
    B = 4'b0011;
    sel = 3'b001;
    #10;

    A = 4'b1100;
    B = 4'b1010;
    sel = 3'b010;
    #10;

    A = 4'b1100;
    B = 4'b1010;
    sel = 3'b011;
    #10;

    A = 4'b1100;
    B = 4'b1010;
    sel = 3'b100;
    #10;

    A = 4'b1111;
    B = 4'b1111;
    sel = 3'b101;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | A=%h | B=%h | SEL=%b | RESULT=%h",
             $time, A, B, sel, result);
end

endmodule
