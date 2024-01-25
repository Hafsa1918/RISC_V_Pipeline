module F_pipe(clk, reset, enable, PC, PCF);

input clk, reset, enable;
input [31:0] PC;
output reg [31:0] PCF;

always @ (posedge clk)
begin
if (reset)
PCF <= 0;

else if (enable)
PCF <= PCF;

else
PCF <= PC;

end

endmodule
