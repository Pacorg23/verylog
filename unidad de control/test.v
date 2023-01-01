module test (
    input [7:0]a, input[7:0] b, output reg [7:0] c
);
        wire [7:0] D;
    always @(*) begin
    
        if (a[7:3]==5'b10110) begin
            D[7:0]<=a[7:0];
        end
        else begin
            c[7:0]=8'bzzzzzzzz;
        end
    end
endmodule