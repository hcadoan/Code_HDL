//Bai 3: phat hien 2 chuoi 001 va 110
//c : current_state
//n : next_state

module FSM3(ck,rs,i,y1,y2,c);
parameter Start = 3'b000;
parameter S0 = 3'b001; 
parameter S00 = 3'b010;
parameter S001 = 3'b011;
parameter S1 = 3'b100;
parameter S11 = 3'b101; 
parameter S110 = 3'b110;
input ck,rs,i;
output y1,y2;
output [2:0] c;
reg y1,y2;
reg [2:0] c,n;
always @ (*)
begin
case(c)
Start : if(i) n = S1;
       else n = S0;
S0 : if(i) n = S1;
       else n = S00;
S00 : if(i) n = S001;
       else n = c;
S001 : if(i) n = S11;
       else n = S0;
S1 : if(i) n = S11;
       else n = S0;
S11 : if(i) n = c;
       else n = S110;
S110 : if(i) n = S1;
       else n = S00;
default n = Start;
endcase
end
always @ (negedge ck)
begin
if(rs == 1)
c <= Start;
else c <= n;
end
always @ (*)
begin
if (c == S001)
begin 
y1 = 1'b1;
y2 = 1'b0;
end
else if (c == S110)
begin 
y1 = 1'b0;
y2 = 1'b1;
end
else
begin 
y1 = 1'b0;
y2 = 1'b0;
end
end
endmodule

module TB_FSM3();
reg ck,rs,i;
wire [2:0]c;
wire y1,y2;
initial
begin
ck = 1;
rs = 1;
i = 0;
#100
rs = 0;
i = 0;
#100
rs = 0;
i = 1;
#200
rs = 0;
i = 0;
#100
rs = 0;
i = 1;
#550
rs = 0;
i = 0;
#125
rs = 0;
i = 1;
#250
rs = 0;
i = 0;
#300
rs = 0;
i = 1;
#150
rs = 0;
i = 0;
#100
rs = 1;
i = 0;
#125
rs = 0;
i = 1;
#2500 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM3 U(.ck(ck),.rs(rs),.i(i),.c(c),.y1(y1),.y2(y2));
endmodule
