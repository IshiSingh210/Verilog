module deMUX(D,A,B,C,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);
  input D,A,B,C;
  output Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;
  assign Y7=D&A&B&C;
  assign Y6=D&A&B&~C;
  assign Y5=D&A&~B&C;
  assign Y4=D&A&~B&~C;
  assign Y3=D&~A&B&C;
  assign Y2=D&~A&B&~C;
  assign Y1=D&~A&~B&C;
  assign Y0=D&~A&~B&~C;
endmodule








