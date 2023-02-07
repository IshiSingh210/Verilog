module full_adder(x,y,A,B,C);
  input A,B,C;
  output x,y;
  assign x=(A^B)^C;
  assign y=(A&B)|C&(A^B);
endmodule
