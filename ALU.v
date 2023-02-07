module alu (op,a,b,x);
  output reg [7:0] op;     
   input [7:0] a,b;    
   input [3:0] x;   
always @(*)
begin
 case (x)
   4'b0000 : begin op = a + b; $display("Addition operation"); end
   4'b0001 : begin op = a - b; $display("Subtraction operation"); end
   4'b0010 : begin op = a * b; $display("Multiplication operation"); end
   4'b0011 : begin op = a / b; $display("Division operation"); end
   4'b0100 : begin op = a % b; $display("Modulo Division operation"); end
   4'b0101 : begin op = a & b; $display("-+Bit-wise AND operation"); end
   4'b0110 : begin op = a | b; $display("Bit-wise OR operation"); end
   4'b0111 : begin op = a && b; $display("Logical AND operation"); end
   4'b1000 : begin op = a || b; $display("Logical OR operation"); end
   4'b1001 : begin op = a ^ b; $display("Bit-wise XOR operation"); end
   4'b1010 : begin op = ~ a; $display("Bit-wise Invert operation"); end
   4'b1011 : begin op = ! a; $display("Logical Invert operation"); end
   4'b1100 : begin op = a >> 1; $display("Right Shift operation"); end
   4'b1101 : begin op = a << 1 ; $display("Left Shift operation"); end
   4'b1110 : begin op = a + 1; $display("Increment operation"); end
   4'b1111 : begin op = a - 1; $display("Decrement operation"); end
   default:op = 8'bXXXXXXXX;
 endcase
end
endmodule

