module registro(load, save, saveValue, salida, salidaSiempre);
    input load, save;
    input [7:0] saveValue;
    reg [7:0] valor;
    output reg [7:0] salida, salidaSiempre;
    initial begin
        valor=8'b00000000;
        salida= 8'b00000000;
        salidaSiempre=8'b00000000;
    end
    always@( save  or valor ) begin
        if (save) begin
            valor<=saveValue;
            salidaSiempre<=valor;
        end
    end
    always @(*) begin
        
        if (!load) begin
            salida=8'bzzzzzzzz;
        end
        
        else if (load) begin
            salida<=valor;
        end
    end
endmodule