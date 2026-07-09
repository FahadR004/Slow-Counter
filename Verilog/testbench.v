module testbench;

reg clk, rst;
wire [7:0] state;

top dut(
    .clk(clk),
    .rst(rst),
    .state(state)
);
initial 
    begin
        clk = 1'b1;
        forever #5 clk = ~clk;        
    end
initial 
begin
    $dumpfile("dump.vcd");
    $dumpvars(1, testbench);
    rst = 1'b1;
    @(posedge clk); #1;
    rst = 1'b0;
    repeat(300) @(posedge clk); #10;
    $finish;
end
endmodule