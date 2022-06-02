module FSM_cau1(ck,rs,s,y1,y2,c);
parameter start = 3'b000;
parameter S0 = 3'b001; 
parameter S01 = 3'b010;
parameter S011 = 3'b011; 
parameter S1 = 3'b100;
parameter S10 = 3'b101; 
parameter S100 = 3'b110;
input ck,rs,s;
output reg y1,y2;
output [2:0] c;
reg [2:0] c,n;
always @ (*)
begin
case(c)
start : if(s) n = S1;
     else n = S0;
S0 : if(s) n = S01;
     else n = S0;
S01 : if(s) n = S011;
     else n = S10;
S011 : if(s) n = S1;
     else n = S10;
S1 : if(s) n = c;
     else n = S10;
S10 : if(s) n = S01;
     else n = S100;
S100 : if(s) n = S01;
     else n = S0;
default n = start;
endcase
end
always @ (negedge ck or posedge rs)
begin
if(rs == 1)
c <= start;
else c <= n;
end
always @ (*)
begin
case(c)
S011 :
begin
 y1 = 1'b1;
 y2 = 1'b0;
end
S100 :
begin
 y1 = 1'b0;
 y2 = 1'b1;
end
endcase
end
endmodule

module TB_FSM_cau1();
reg ck,rs,s;
wire y1,y2;
wire [2:0]c;
initial
begin
ck = 0;
rs = 1;
s = 1;
#100
rs = 0;
s = 1;
#200
rs = 0;
s = 0;
#500
rs = 0;
s = 1;
#100
rs = 0;
s = 0;
#350
rs = 0;
s = 1;
#400
rs = 0;
s = 0;
#130
rs = 1;
s = 1;
#225
rs = 1;
s = 0;
#100
rs = 0;
s = 1;
#2500 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM2 U(.ck(ck),.rs(rs),.c(c),.s(s),.y1(y1),.y2(y2));
endmodule