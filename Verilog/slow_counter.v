module slow_counter (
    input clk, rst, tick,
    output [7:0] state
);

reg [7:0] q;

always @(posedge clk) begin
    if (rst)
        begin
            q <= 8'h00;
        end
    else if (tick)
        begin
            q <= q + 1;
        end
end

assign state = q;


endmodule