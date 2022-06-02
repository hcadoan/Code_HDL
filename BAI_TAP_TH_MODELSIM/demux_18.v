module demux_18(D,S,Y);
input D;
input [2:0]S;
output [7:0]Y;
wire E;
not N1(E,S[2]);
demux_14 u1(D,E,S[1:0],Y[3:0]);
demux_14 u2(D,S[2],S[1:0],Y[7:4]);
endmodule

module demux_14(A,E,X,I);
input A,E;
input [1:0]X;
output [3:0]I;
assign I[0] = ~X[1]& ~X[0]& A & E;
assign I[1] = ~X[1]& X[0]& A & E;
assign I[2] = X[1]& ~X[0]& A & E;
assign I[3] = X[1]& X[0]& X & E;
endmodule

module TB_demux_18();
reg [2:0]S;
reg D;
wire [7:0]Y;
initial
begin
S = 3'b000;
D = 1;
#100
S = 3'b001;
D = 1;
#100
S = 3'b010;
D = 1;
#100
S = 3'b011;
D = 1;
#100
S = 3'b100;
D = 1;
#100
S = 3'b101;
D = 1;
#100
S = 3'b110;
D = 1;
#100
S = 3'b111;
D = 1;
#1000 $finish;
end
demux_18 d(.S(S),.D(D),.Y(Y));
endmodule
