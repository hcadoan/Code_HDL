module demux_18(I,S,A,B,C,D);
input [3:0]I;
input [1:0]S;
output [3:0]A,B,C,D;
demux14 u1(I[3],S,{A[3],B[3],C[3],D[3]});
demux14 u2(I[2],S,{A[2],B[2],C[2],D[2]});
demux14 u3(I[1],S,{A[1],B[1],C[1],D[1]});
demux14 u4(I[0],S,{A[0],B[0],C[0],D[0]});
endmodule

module demux14(I,s,Y);
input I;
input [1:0]s;
output [3:0]Y;
assign Y[0] = ~s[1]& ~s[0]& I;
assign Y[1] = ~s[1]& s[0]& I;
assign Y[2] = s[1]& ~s[0]& I;
assign Y[3] = s[1]& s[0]& I;
endmodule

module TB_demux_18();
reg [1:0]S;
reg [3:0]I;
wire [3:0]A,B,C,D;
initial
begin
S = 2'b00;
I = 4'b0100;
#100
S = 2'b01;
I = 4'b1010;
#100
S = 2'b10;
I = 4'b0011;
#100
S = 2'b11;
I = 4'b1110;
#400 $finish;
end
demux_18 d(.S(S),.I(I),.A(A),.B(B),.C(C),.D(D));
endmodule

