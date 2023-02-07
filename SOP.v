module SOP(F,f,w,x,y,z);
  input w,x,y,z;
  output F,f;
  assign F= (w&~x&z) | (w&x&~z) | (~x&~y&z) | (~w&~x&y&~z);
  assign f= (~w&x) | (w&~x&~z) | (x&z) | (~x&~y&~z) | (~w&y&z);
endmodule

