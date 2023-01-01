`include "byteAdder.v"
`include "MultiplicadorByte.v"
`include "ByteSub.v"
module ALU(A, B, c, ALU_out, sel,  flag);
    input [1:0] sel;
    input [7:0] A, B;
    input c;
    wire  [7:0] ALU_suma, ALU_resta;
    wire [15:0] ALU_mul;
    output reg[15:0] ALU_out;
    wire sumFlag, restFlag;
    output reg  flag;
    byteAdder F0(.A(A), .B(B), .c(c), .O(ALU_suma[7:0]), .o( sumFlag));
    byteSub F1(.A(A), .B(B), .c(c), .O(ALU_resta[7:0]), .o( restFlag));
    MultiplicadorByte F2(.A(A), .B(B), .O(ALU_mul));
    always @(*) begin
        ALU_out=16'b0000000000000000;
		flag=0;
        case (sel)
            2'b00: 
            begin
                ALU_out={8'b00000000, ALU_suma}; flag=sumFlag;
            end
            2'b01: 
            begin
                 ALU_out={8'b00000000, ALU_resta}; flag=restFlag;
            end 
            2'b10:
            begin
                 ALU_out=ALU_mul; flag=0;
            end
            2'b11: ALU_out=16'b1111111111111111;

            default:; 
        endcase
    end

endmodule
