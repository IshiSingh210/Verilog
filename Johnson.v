module Johnson(q,clk,rst);
output reg [3:0]q;
input clk,rst;
always @ (posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
q<={~q[0],q[3:1]};
end
endmodule