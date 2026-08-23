module traffic_light(
input clk,
input reset,
  output reg [2:0] light);

parameter RED = 3'b100, YELLOW = 3'b010, GREEN = 3'b001;

reg [1:0] state;

always @(posedge clk or posedge reset) begin
if (reset) begin
state <= 0;
light <= RED;
end else begin
case(state)
0: begin state <= 1; light <= GREEN; end
1: begin state <= 2; light <= YELLOW; end
2: begin state <= 0; light <= RED; end
endcase

end

end

endmodule


----------------testbench------------------
`timescale 1ns/1ps

module TB_traffic_light;

reg clk, reset;
wire [2:0] light;

traffic_light uut (
    .clk(clk),
    .reset(reset),
    .light(light)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10;
    reset = 0;
    #60;
    $finish;
end

initial begin
    $monitor("Time=%0t reset=%b light=%b", $time, reset, light);
end

endmodule
