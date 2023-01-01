`include "byteAdder.v"
`include "MultiplicadorByte.v"
`include "ByteSub.v"
module ALU(A, B, c, ALU_out, sel,  flag);
    input [1:0] sel;
    input [7:0] A, B;
    input c;
    wire  [7:0] ALU_suma, ALU_resta, ALU_mul;
    output reg [15:0] ALU_out;
    wire sumaFlag, restaFlag;
    output reg flag;
    byteAdder F0(.A(A), .B(B), .c(c), .O(ALU_suma), .o({8'b00000000, sumaFlag}));
    byteSub F1(.A(A), .B(B), .c(c), .O(ALU_resta), .o({8'b00000000,restaFlag}));
    MultiplicadorByte F2(.A(A), .B(B), .O({mulFlag, ALU_mul}));
    always @(*) begin
        case (sel)
            2'b00: 
            begin
                ALU_out=ALU_suma; flag=sumaFlag;
            end
            2'b01: 
            begin
                 ALU_out=ALU_resta; flag=restaFlag;
            end 
            2'b10:
            begin
                 ALU_out=ALU_mul; flag=mulFlag;
            end
            2'b11: ;

            default:; 
        endcase
    end

endmodule
