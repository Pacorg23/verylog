module decodificador( ent, sal, dis);
input [2:0] ent;
input dis;
output reg [7:0] sal;
    always @(*) begin
        if (!dis) begin
        case (ent) 
            3'b000:
            begin
                 sal=8'b00000001;
            end
            3'b001:
            begin
                 sal=8'b00000010;
            end
            3'b010:
            begin
                 sal=8'b00000100;
            end
            3'b011:
            begin
                 sal=8'b00001000;
            end
            3'b100:
            begin
                 sal=8'b00010000;
            end
            3'b101:
            begin
                 sal=8'b00100000;
            end
            3'b110:
            begin
                 sal=8'b01000000;
            end
            3'b111:
            begin
                 sal=8'b10000000;
            end
        endcase
        end
        else begin
            sal=8'b00000000;
        end
    end
endmodule