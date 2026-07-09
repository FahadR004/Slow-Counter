module top (
    input clk, rst,
    output [7:0] state
);

wire tick;

counter tick_gen (
    .clk(clk),
    .rst(rst),
    .tick(tick)
);

slow_counter slow_cnt (
    .clk(clk),
    .rst(rst),
    .tick(tick),
    .state(state)
);

endmodule