module Parallel_Adder(A,B,Cin,S,Cout);
  input [7:0] A;
  input [7:0] B;
  input Cin;
  output reg [7:0] S;
  output reg [7:0] Cout;
  reg C[8:0];
  integer i;
  always @(*)
  begin
    C[0]=Cin;
    if (Cin==0)
      begin
        for (i=0;i<8;i=i+1)
        begin
          S[i]=A[i]^B[i]^C[i];
          C[i+1]=((A[i]&B[i])|(A[i]&C[i])|(B[i]&C[i]));
        end
      end
    else if (Cin==1) 
      begin
        for (i=0;i<8;i=i+1)
        begin
          S[i]=A[i]^B[i]^C[i];
          C[i+1]=((~A[i]&B[i])|(~A[i]&C[i])|(B[i]&C[i]));
        end
      end
    Cout=C[8];
  end
endmodule

