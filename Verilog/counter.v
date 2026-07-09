module counter (
    input clk, rst,
    output reg tick
);

reg [7:0] q;

always @(posedge clk) begin
    if (rst)
        begin
            q <= 8'h00;
            tick <= 1'b0;            
        end
    else if (q == 8'hff)
        begin
            q <= 8'h00;
            tick <= 1'b1;            
        end
    else 
        begin
            q <= q + 1;
            tick <= 1'b0;            
        end

end
endmodule
