module decoder416(A,B,C,D,Y);
input A,B,C,D;
output [15:0] Y;
wire X;
not U0(X,D);
decoder3_8 U1(D,{C,B,A},Y[7:0]);
decoder3_8 U2(X,{C,B,A},Y[15:8]);
endmodule

module decoder3_8(e,S,X);
input e;
input [2:0] S;
output [7:0] X;
reg [7:0] X;
always @ (*)
begin
if(e == 0)
X = 8'b00000000;
else
begin
case(S)
3'b000 : X = 8'b00000001;
3'b001 : X = 8'b00000010;
3'b010 : X = 8'b00000100;
3'b011 : X = 8'b00001000;
3'b100 : X = 8'b00010000;
3'b101 : X = 8'b00100000;
3'b110 : X = 8'b01000000;
3'b111 : X = 8'b10000000;
endcase
end
end
endmodule

module TB_decoder416();
reg A,B,C,d,E;
wire [15:0]Y;
initial
begin
{d,C,B,A} = 4'b0000;
E = 0;
#100
{d,C,B,A} = 4'b0011;
E = 0;
#100
{d,C,B,A} = 4'b0000;
E = 1;
#100
{d,C,B,A} = 4'b0001;
E = 1;
#100
{d,C,B,A} = 4'b0010;
E = 1;
#100
{d,C,B,A} = 4'b0011;
E = 1;
#100
{d,C,B,A} = 4'b0100;
E = 1;
#100
{d,C,B,A} = 4'b0101;
E = 1;
#100
{d,C,B,A} = 4'b0110;
E = 1;
#100
{d,C,B,A} = 4'b0111;
E = 1;
#100
{d,C,B,A} = 4'b1000;
E = 1;
#100
{d,C,B,A} = 4'b1001;
E = 1;
#100
{d,C,B,A} = 4'b1010;
E = 1;
#100
{d,C,B,A} = 4'b1011;
E = 1;
#100
{d,C,B,A} = 4'b1100;
E = 1;
#100
{d,C,B,A} = 4'b1101;
E = 1;
#100
{d,C,B,A} = 4'b1110;
E = 1;
#100
{d,C,B,A} = 4'b1111;
E = 1;
#2000 $finish;
end
decoder416 D(.A(A),.B(B),.C(C),.d(D),.E(E),.Y(Y));
endmodule
