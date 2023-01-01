`include "byteAdder.v"
`include "MultiplicadorByte.v"
`include "ByteSub.v"
`include "orByte.v"
`include "nandByte.v"
`include "norByte.v"
`include "andByte.v"
module ALU(A, B, c, ALU_out, sel,  flag);
    input [2:0] sel;
    input [7:0] A, B;
    input c;
    wire  [7:0] ALU_suma, ALU_resta, ALU_or, ALU_nand, ALU_nor, ALU_and;    
    output reg [15:0] ALU_out;
    wire [15:0] ALU_mul;
    wire sumaFlag, restaFlag;
    output reg flag;
    orByte F0(.A(A), .B(B), .C(ALU_or));
    nandByte F1(.A(A), .B(B), .C(ALU_nand));
    norByte F2(.A(A), .B(B), .C(ALU_nor));
    andByte F3(.A(A), .B(B), .C(ALU_and));
    byteAdder F4(.A(A), .B(B), .c(c), .O(ALU_suma), .o(sumaFlag));
    byteSub F5(.A(A), .B(B), .c(c), .O(ALU_resta), .o(restaFlag));
    MultiplicadorByte F6(.A(A), .B(B), .O(ALU_mul));
    always @(*) begin
        case (sel)
            3'b000:
            begin
                ALU_out=ALU_or; flag=0;
            end
            3'b001:
            begin
                ALU_out=ALU_nand; flag=0;
            end
            3'b010:
            begin
                ALU_out=ALU_nor; flag=0;
            end
            3'b011:
            begin
                ALU_out=ALU_and; flag=0;
            end
            3'b100: 
            begin
                ALU_out=ALU_suma; flag=sumaFlag;
            end
            3'b101: 
            begin
                 ALU_out=ALU_resta; flag=restaFlag;
            end 
            3'b110:
            begin
                 ALU_out=ALU_mul; flag=0;
            end
            2'b11: ;

            default:; 
        endcase
    end

endmodule
