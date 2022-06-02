
// lon = A>B
// bang = A=B
// be = A<B
module ss2bit(E,A,B,lon,bang,be);
input [1:0]A,B;
input E;
output lon,bang,be;
wire X1,X2,X3,X4,X5;
ss1bit u1(E,A[1],B[1],X1,X2,X3);
ss1bit u2(X2,A[0],B[0],X4,bang,X5);
or u3(lon,X1,X4);
or u4(be,X3,X5);
endmodule

module ss1bit(E,A,B,lon,bang,be);
input A,B,E;
output bang,lon,be;
reg bang,lon,be;
always @ (*)
if(E == 0)
begin
bang = 1'b0;
lon = 1'b0;
be = 1'b0;
end
else
begin
if(A == B)
begin
bang = 1'b1;
lon = 1'b0;
be = 1'b0;
end
if(A > B)
begin
bang = 1'b0;
lon = 1'b1;
be = 1'b0;
end
if(A < B)
begin
bang = 1'b0;
lon = 1'b0;
be = 1'b1;
end
end
endmodule

module TB_ss2bit();
reg E;
reg [1:0]A,B;
wire lon,bang,be;
initial
begin
E = 0;
A = 2'b01;
B = 2'b10;
#100
E = 1;
A = 2'b01;
B = 2'b10;
#100
E = 1;
A = 2'b10;
B = 2'b00;
#100
E = 1;
A = 2'b11;
B = 2'b01;
#100
E = 1;
A = 2'b00;
B = 2'b01;
#100
E = 1;
A = 2'b01;
B = 2'b01;
#100
E = 1;
A = 2'b10;
B = 2'b10;
#1000 $finish;
end
ss2bit D(.E(E),.A(A),.B(B),.lon(lon),.bang(bang),.be(be));
endmodule