module POS(F,f,w,x,y,z);
  input w,x,y,z;
  output F,f;
  assign F= (~w|x|~z) & (~w|~x|z) & (x|y|~z) & (w|x|~y|z);
  assign f= (w|~x) & (~x|~z) & (w|y|z) & (~w|x|z) & (w|~y|~z);
endmodule



