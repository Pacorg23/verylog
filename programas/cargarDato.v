module cargarDato(clk, enable, data, out);
input clk;
input enable;
input [13:0]data;
output reg [7:0] out;
always@(posedge clk) begin
if (enable) begin
case (data)
    14'b000001xxxxxxxx: out<=data[7:0];
endcase
end
end
endmodule