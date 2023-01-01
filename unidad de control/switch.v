module switch (
    input [7:0] A, input enable, output reg [7:0] B
);
    always @(*) begin
        if(enable) begin
            B[7:0]=A[7:0];
        end
        else begin
            B=8'bzzzzzzzz;
        end
    end
    
endmodule