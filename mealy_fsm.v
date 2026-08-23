module mealy_fsm(
input clk,
input reset,
input in,
  output reg out);

reg state;

always @(posedge clk or posedge reset) begin
if (reset) begin
state <= 0;
out <= 0;
end else begin
case(state)
0: begin
if (in) begin
state <= 1;
out <= 0;

end

end
1: begin
if (in)
out <= 1;
else begin
state <= 0;
out <= 0;

end
end
endcase
end
end





  ---------------------testbench-------------------
  module TB_mealy_fsm();
    reg clk;
    reg reset;
    reg in;
    wire out;

    mealy_fsm uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end


    initial begin
        reset = 1;
        in = 0;
        #10;

        reset = 0;

 
        #10 in = 1;  
        #10 in = 1;   
        #10 in = 0;   
        #10 in = 1;   
        #10 in = 0;  
        #10 in = 1;   
        #10 in = 1;   

        #20;
        $finish;
    end



endmodule
