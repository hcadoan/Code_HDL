module mux21_8bit(A,B,S,Y);
input [7:0]A,B;
input S;
output [7:0]Y;
mux21 u1(A[7],B[7],S,Y[7]);
mux21 u2(A[6],B[6],S,Y[6]);
mux21 u3(A[5],B[5],S,Y[5]);
mux21 u4(A[4],B[4],S,Y[4]);
mux21 u5(A[3],B[3],S,Y[3]);
mux21 u6(A[2],B[2],S,Y[2]);
mux21 u7(A[1],B[1],S,Y[1]);
mux21 u8(A[0],B[0],S,Y[0]);
endmodule
module mux21(a,b,s,y);
input a,b,s;
output y;
assign y = (~s&a)|(s&b);
endmodule
module TB_mux21_8bit();
reg [7:0]A,B;
reg S;
wire [7:0]Y;
initial
begin
A = 8'b00000000;
B = 8'b10000001;
S = 1;
#100
A = 8'b00000000;
B = 8'b10000001;
S = 0;
#100
A = 8'b01001001;
B = 8'b00010001;
S = 1;
#100
A = 8'b01001001;
B = 8'b00010001;
S = 0;
#100
A = 8'b10011000;
B = 8'b00000000;
S = 1;
#100
A = 8'b10011000;
B = 8'b00000000;
S = 0;
#600 $finish;
end
mux21_8bit D(.A(A),.B(B),.S(S),.Y(Y));
endmodule

