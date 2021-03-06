
module FSM_cau3(ck,rs,s,y,c);
parameter start = 3'b000;
parameter S1 = 3'b001; 
parameter S10 = 3'b010;
parameter S101 = 3'b011; 
parameter S1010 = 3'b100;
parameter S10101 = 3'b101; 
parameter S101011 = 3'b110;
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
S10 : if(s) n = S101;
     else n = start;
S101 : if(s) n = S1;
     else n = S1010;
S1010 : if(s) n = S10101;
     else n = start;
S10101 : if(s) n = S101011;
     else n = S1010;
S101011 : if(s) n = S1;
     else n = S10;
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
if(c == S101011) y = 1'b1;
else y = 1'b0;
end
endmodule

module TB_FSM_cau3();
reg ck,rs,s;
wire [2:0]c;
wire y;
initial
begin
ck = 0;
rs = 0;
s = 1;
#100
rs = 1;
s = 1;
#100
rs = 1;
s = 0;
#100
rs = 1;
s = 1;
#100
rs = 1;
s = 0;
#100
rs = 1;
s = 1;
#200
rs = 1;
s = 0;
#350
rs = 1;
s = 1;
#400
rs = 1;
s = 0;
#80
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