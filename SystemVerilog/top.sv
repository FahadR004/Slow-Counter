module top (
    input  logic clk,
    input  logic rst,
    output logic [7:0] state
);

logic tick;

counter tick_gen  (.*);   
slow_counter slow_cnt  (.*);

endmodule
