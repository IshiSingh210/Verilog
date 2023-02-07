module MOORE(sequence_in,clock,reset,detector_out);
input clock; // clock signal
input reset; // reset input
input sequence_in; // binary input
output reg detector_out; // output of the sequence detector
parameter  S0=3'b000, // "S0" State
S1=3'b001, // "S1" State
S2=3'b011, // "S2" State
S3=3'b010, // "S3" State
S4=3'b110;// "S4" State
reg [2:0] current_state, next_state; // current state and next state// sequential memory of the Moore FSM
always @(posedge clock, posedge reset)
begin
if(reset==1) 
current_state <= S0;
// when reset=1, reset the state of the FSM to "S0" State
else current_state <= next_state; // otherwise, next state
end 
// combinational logic of the Moore FSM// to determine next state 
always @(current_state,sequence_in)
begin
case(current_state) 
S0:begin
if(sequence_in==1)
next_state = S1;
else
next_state = S0;
end
S1:
begin
if(sequence_in==0)
next_state = S2;
else
next_state = S1;
end
S2:
begin
if(sequence_in==0)
next_state = S0;
else next_state = S3;
end 
S3:
begin
if(sequence_in==0)
next_state = S2;
else next_state = S4;
end
S4:begin
if(sequence_in==0)next_state = S2;
else next_state = S1;
end
default:next_state =S0;
endcase
end// combinational logic to determine the output// of the Moore FSM, output only depends on current state
always @(current_state)
begin 
case(current_state) 
S0:   detector_out = 0;
S1:   detector_out = 0;
S2:  detector_out = 0;
S3:  detector_out = 0;
S4:  detector_out = 1;
default:  detector_out = 0;
endcase
end 
endmodule