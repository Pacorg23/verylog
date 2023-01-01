
module contador(input clk, input rstn, output reg [7:0] out, input  [7:0]counterReg);
    wire rst = rstn;
    always @(posedge clk ) begin
        if (rst) begin
            out<=counterReg;
        end
        else begin
            out<=out +1;
    end
    end

endmodule
