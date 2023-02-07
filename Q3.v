module Q3(A,B,C,x,y,z);
  input x,y,z;
  output A,B,C;
  assign A=x&y | x&z | ~x&~y&~z;
  assign B=~x | ~y&~z | y&z;
  assign C= ~z;
endmodule


