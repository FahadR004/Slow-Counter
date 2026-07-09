module testbench;

logic       clk;
logic       rst;
logic [7:0] state;

top dut (.*);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    rst = 1'b1;
    @(posedge clk);
    #1;
    rst = 1'b0;

    repeat(300) @(posedge clk);
    #10;
    $finish;
end

endmodule
