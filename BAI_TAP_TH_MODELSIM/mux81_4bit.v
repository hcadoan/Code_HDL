module mux81_4bit(S,A,B,C,D,E,F,G,H,Y);
input [2:0]S;
input [3:0]A,B,C,D,E,F,G,H;
output [3:0]Y;
mux81 u1(S,{A[0],B[0],C[0],D[0],E[0],F[0],G[0],H[0]},Y[0]);
mux81 u2(S,{A[1],B[1],C[1],D[1],E[1],F[1],G[1],H[1]},Y[1]);
mux81 u3(S,{A[2],B[2],C[2],D[2],E[2],F[2],G[2],H[2]},Y[2]);
mux81 u4(S,{A[3],B[3],C[3],D[3],E[3],F[3],G[3],H[3]},Y[3]);
endmodule

module mux81(s,x,y);
input [7:0]x;
input [2:0]s;
output reg y;
always @(*)
begin
case(s)
3'b000: y=x[0];
3'b001: y=x[1];
3'b010: y=x[2];
3'b011: y=x[3];
3'b100: y=x[4];
3'b101: y=x[5];
3'b110: y=x[6];
3'b111: y=x[7];
endcase
end
endmodule

module TB_mux81_4bit();
reg [2:0]S;
reg [3:0]A,B,C,D,E,F,G,H;
wire [3:0]Y;
initial
begin
S = 3'b000;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b001;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b010;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b011;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b100;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b101;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b110;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#100
S = 3'b111;
A = 4'b1000;
B = 4'b0101;
C = 4'b0111;
D = 4'b1001;
E = 4'b1100;
F = 4'b1110;
G = 4'b0001;
H = 4'b1011;
#1000 $finish;
end
mux81_4bit U(.S(S),.A(A),.B(B),.C(C),.D(D),.E(E),.F(F),.G(G),.H(H),.Y(Y));
endmodule
