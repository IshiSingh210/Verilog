module ALU_1_bit(a, b, op, Y); 
      input a, b;
      input [1:0] op;
      output [2:0] Y;
      reg Y;
      always@(a or b or op)
          begin
               case (op)
                  2'b00:  Y = a&b;   // AND
                  2'b01:  Y = a|b;   // OR
                  2'b10:  Y = a^b;    // XOR
                  2'b11:  Y = a+b;    // addition
               endcase
      end
endmodule