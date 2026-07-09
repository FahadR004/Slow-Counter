module counter (
    input  logic       clk,
    input  logic       rst,
    output logic       tick
);
    
logic [7:0] q;

always_ff @(posedge clk) begin
    if (rst) 
        begin
            q    <= 8'h00;
            tick <= 1'b0;
        end 
    else if (q == 8'hff) 
        begin
            q    <= 8'h00;
            tick <= 1'b1;
        end 
    else 
        begin
            q    <= q + 8'd1;
            tick <= 1'b0;
        end
end

endmodule
