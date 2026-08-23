module alu(
input [3:0] A,
input [3:0] B,
input [2:0] sel,
output reg [3:0] Y

);

always @(*) begin
case(sel)
3'b000: Y = A + B;
3'b001: Y = A - B;
3'b010: Y = A & B;
3'b011: Y = A | B;
3'b100: Y = A ^ B;
default: Y = 4'b0000;
endcase

end

endmodule



-----------------testbench-----------------
`timescale 1ns/1ps

module alu_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] sel;
    wire [3:0] Y;

    alu uut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y)
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

endmodule
