//bai 9: 
//c : current_state
//n : next_state


module FSM2(ck,rs,stop,x,d,v,HEX,c);
parameter blue = 5'b00000;
parameter red = 5'b00001; 
parameter S0 = 5'b00010;
parameter S1 = 5'b00011; 
parameter S2 = 5'b00100;
parameter S3 = 5'b00101; 
parameter S4 = 5'b00110;
parameter S5 = 5'b00111; 
parameter S6 = 5'b01000;
parameter S7 = 5'b01001; 
parameter S8 = 5'b01010;
parameter S9 = 5'b01011; 
parameter S10 = 5'b01100;
parameter S11 = 5'b01101; 
parameter S12 = 5'b01110;
parameter S13 = 5'b01111;
parameter S14 = 5'b10000;
parameter S15 = 5'b10001;
parameter S16 = 5'b10010;
input ck,rs,stop;
output x,d,v;
output [7:0]HEX;
output [2:0] c;
reg [7:0]HEX;
reg x,d,v;
reg [2:0] c,n;
always @ (*)
begin
case(c)
blue : if(stop) n = red;
     else n = c;
S0 : n = S1;  
S1 : n = S2;
S2 : n = S3;
S3 : n = S4;
S4 : n = S5;
S5 : n = S6;
S6 : n = S7;
S7 : n = S8;
S8 : n = S9;
S9 : n = S10;
S10 : n = S11;
S11 : n = S12;
S12 : n = S13;
S13 : n = S14;
S14 : n = S15;
S15 : n = S16;
S16 : n = blue;
default n = blue;
endcase
end
always @ (posedge ck)
begin
if(rs == 1)
c <= blue;
else c <= n;
end
always @ (*)
begin
case(c)
blue :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
red :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'hFF;
end
S0 :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
S1 :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
S2 :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
S3 :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
S4 :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
S5 :
begin
 x = 1'b1;
 d = 1'b0;
 v = 1'b0;
 HEX = 8'hF8;
end
S6 :
begin
 x = 1'b0;
 d = 1'b0;
 v = 1'b1;
 HEX = 8'hA8;
end
S7 :
begin
 x = 1'b0;
 d = 1'b0;
 v = 1'b1;
 HEX = 8'hA8;
end
S8 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S9 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S10 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S11 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S12 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S13 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S14 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S15 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
S16 :
begin
 x = 1'b0;
 d = 1'b1;
 v = 1'b0;
 HEX = 8'h90;
end
endcase
end
endmodule

module TB_FSM2();
reg ck,rs,stop;
wire [7:0]HEX;
wire x,d,v;
initial
begin
ck = 0;
rs = 1;
stop = 1;
#100
rs = 0;
stop = 1;
#200
rs = 0;
stop = 0;
#2000
rs = 1;
stop = 0;
#425
rs = 0;
stop = 0;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM2 U(.ck(ck),.rs(rs),.c(c),.stop(stop),.HEX(HEX));
endmodule
