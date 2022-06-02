module mux51(u,v,w,x,y,s,m);
input u,v,w,x,y;
input [2:0]s;
output m;
wire n1,n2,n3;
mux21 u1(u,v,s[0],n1);
mux21 u2(w,x,s[0],n2);
mux21 u3(n1,n2,s[1],n3);
mux21 u4(n3,y,s[2],m);
endmodule

module mux21(a,b,s,Y);
input a,b,s;
output Y;
assign Y = (~s&a)|(s&b);
endmodule

module TB_mux51();
reg u,v,w,x,y;
reg [2:0]s;
wire m;
initial
begin
{u,v,w,x,y} = 5'b10110;
s = 3'b000;
#100
{u,v,w,x,y} = 5'b10110;
s = 3'b001;
#100
{u,v,w,x,y} = 5'b01101;
s = 3'b010;
#100
{u,v,w,x,y} = 5'b01011;
s = 3'b011;
#100
{u,v,w,x,y} = 5'b10000;
s = 3'b100;
#100
{u,v,w,x,y} = 5'b00111;
s = 3'b101;
#100
{u,v,w,x,y} = 5'b10101;
s = 3'b110;
#100
{u,v,w,x,y} = 5'b11011;
s = 3'b111;
#1000 $finish;
end
mux51 D(.u(u),.v(v),.w(w),.x(x),.y(y),.s(s),.m(m));
endmodule
