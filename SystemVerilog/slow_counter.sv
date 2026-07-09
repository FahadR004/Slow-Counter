module slow_counter (
    input  logic clk,
    input  logic rst,
    input  logic tick,
    output logic [7:0] state
);

always_ff @(posedge clk) begin
    if (rst) 
        begin
            state <= 8'h00;
        end 
    else if (tick) 
        begin
            state <= state + 8'd1;
        end
end

endmodule
