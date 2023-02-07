module deMUX_4(D,A,B,Y3,Y2,Y1,Y0);
  input D,A,B;
  output Y3,Y2,Y1,Y0;
  assign Y3=D&A&B;
  assign Y2=D&A&~B;
  assign Y1=D&~A&B;
  assign Y0=D&~A&~B;
endmodule


