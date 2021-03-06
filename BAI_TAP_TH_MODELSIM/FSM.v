
//Bai 1: phat hien chuoi 1011
//c : current_state
//n : next_state

module FSM(ck,rs,in,y,c);
parameter Start = 3'b000;
parameter S1 = 3'b001; 
parameter S10 = 3'b010;
parameter S101 = 3'b011;
parameter S1011 = 3'b100;
input ck,rs,in;
output y;
output [2:0] c;
reg y;
reg [2:0] c,n;
always @ (*)
begin
case(c)
Start : if(in) n = S1;
       else n = c;
S1 : if(in) n = c;
       else n = S10;
S10 : if(in) n = S101;
       else n = Start;
S101 : if(in) n = S1011;
       else n = S10;
S1011 : if(in) n = S1;
       else n = S10;
default n = Start;
endcase
end
always @ (posedge ck or posedge rs)
begin
if(rs == 1)
c <= Start;
else c <= n;
end
always @ (*)
begin
if (c == S1011) 
y = 1'b1;
else 
y = 1'b0;
end
endmodule

module TB_FSM();
reg ck,rs,in;
wire [2:0]c;
wire y;
initial
begin
ck = 1;
rs = 1;
in = 0;
#100
rs = 0;
in = 0;
#100
rs = 0;
in = 1;
#200
rs = 0;
in = 0;
#100
rs = 0;
in = 1;
#550
rs = 0;
in = 0;
#125
rs = 0;
in = 1;
#250
rs = 0;
in = 0;
#300
rs = 0;
in = 1;
#150
rs = 0;
in = 0;
#100
rs = 1;
in = 0;
#125
rs = 0;
in = 1;
#2500 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM U(.ck(ck),.rs(rs),.in(in),.c(c),.y(y));
endmodule