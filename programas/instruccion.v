module instruccion(instruccion, dato, salida, clk);
    input instruccion;
    input [7:0] dato;
    input clk;
    reg [7:0] almacen;
    output reg[7:0] salida;
        always @(posedge clk) begin
        if (instruccion==1) begin
            assign almacen = dato;
        end
        else begin
            assign salida =almacen;
        end
    end
endmodule