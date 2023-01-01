module mux(input [7:0] A, input [7:0] B, input sel, output reg [7:0] C);
    always @(*) begin
        if(!sel) begin
            C[7:0]<=A[7:0];
        end
        else begin
            C[7:0]<=B[7:0];
        end
    end
endmodule