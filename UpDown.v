module UpDown(Q,up_down,clk,rst);
output [3:0]Q;
input up_down,clk,rst;
reg [3:0]Q;
always @ (posedge clk or posedge rst)
begin
if (rst)
Q <= 4'b0;
else if(up_down)
Q <= Q+1;
else
Q <= Q-1;
end
endmodule
