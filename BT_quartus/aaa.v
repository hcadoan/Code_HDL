
module aaa(ck,rs,s,y,c);
parameter start = 3'b000;
parameter S1 = 3'b001; 
parameter S10 = 3'b010;
parameter S100 = 3'b011; 
parameter S1001 = 3'b100;
parameter S10010 = 3'b101; 
input ck,rs,s;
output reg y;
output [2:0] c;
reg [2:0] c,n;
always @ (*)
begin
case(c)
start : if(s) n = S1;
     else n = c;
S1 : if(s) n = c;
     else n = S10;
S10 : if(s) n = S1;
     else n = S100;
S100 : if(s) n = S1001;
     else n = start;
S1001 : if(s) n = S1;
     else n = S10010;
S10010 : if(s) n = S1;
     else n = S100;
default n = start;
endcase
end
always @ (posedge ck or negedge rs)
begin
if(rs == 0)
c <= start;
else c <= n;
end
always @ (*)
begin
if(c == S10010) y = 1'b1;
else y = 1'b0;
end
endmodule

module TB_aaa();
reg ck,rs,s;
wire y;
wire [2:0]c;
initial
begin
ck = 0;
rs = 0;
s = 1;
#100
rs = 1;
s = 1;
#200
rs = 1;
s = 0;
#500
rs = 1;
s = 1;
#100
rs = 1;
s = 0;
#350
rs = 1;
s = 1;
#400
rs = 1;
s = 0;
#130
rs = 0;
s = 1;
#225
rs = 0;
s = 0;
#100
rs = 1;
s = 1;
#2500 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM_cau3 U(.ck(ck),.rs(rs),.c(c),.s(s),.y(y));
endmodule