//c : current_state
//n : next_state

module FSM2(ck,rs,in,y,c);
parameter Start = 3'b000;
parameter S0 = 3'b001; 
parameter S01 = 3'b010;
parameter S011 = 3'b011;
parameter S0110 = 3'b100;
input ck,rs,in;
output y;
output [2:0] c;
reg y;
reg [2:0] c,n;
always @ (*)
begin
case(c)
Start : if(in) n = c;
       else n = S0;
S0 : if(in) n = S01;
       else n = c;
S01 : if(in) n = S011;
       else n = S0;
S011 : if(in) n = Start;
       else n = S0110;
S0110 : if(in) n = S01;
       else n = S0;
default n = Start;
endcase
end
always @ (negedge ck or negedge rs)
begin
if(rs == 0)
c <= Start;
else c <= n;
end
always @ (*)
begin
if (c == S0110) 
y = 1'b1;
else 
y = 1'b0;
end
endmodule

module TB_FSM2();
reg ck,rs,in;
wire [2:0]c;
wire y;
initial
begin
ck = 1;
rs = 0;
in = 0;
#100
rs = 1;
in = 0;
#100
rs = 1;
in = 1;
#200
rs = 1;
in = 0;
#100
rs = 1;
in = 1;
#550
rs = 1;
in = 0;
#125
rs = 1;
in = 1;
#250
rs = 1;
in = 0;
#300
rs = 1;
in = 1;
#150
rs = 1;
in = 0;
#100
rs = 0;
in = 0;
#125
rs = 1;
in = 1;
#2500 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM2 U(.ck(ck),.rs(rs),.in(in),.c(c),.y(y));
endmodule
