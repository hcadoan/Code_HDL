module IC74LS151(E,S,I,Z,Y);
input E;
input [2:0]S;
input [7:0]I;
output Z,Y;
reg Z,Y;
always@(*)
begin
if(E == 1)
begin
Z = 0;
Y = ~Z;
end
else
begin
case(S)
3'b000 : 
begin
Z = I[0];
Y = ~Z;
end
3'b001 : 
begin
Z = I[1];
Y = ~Z;
end
3'b010 : 
begin
Z = I[2];
Y = ~Z;
end
3'b011 : 
begin
Z = I[3];
Y = ~Z;
end
3'b100 : 
begin
Z = I[4];
Y = ~Z;
end
3'b101 : 
begin
Z = I[5];
Y = ~Z;
end
3'b110 : 
begin
Z = I[6];
Y = ~Z;
end
3'b111 : 
begin
Z = I[7];
Y = ~Z;
end
endcase
end
end
endmodule
module TB_IC74LS151();
reg E;
reg [2:0]S;
reg [7:0]I;
wire Z,Y;
initial
begin
E = 1;
S = 3'b000;
I = 8'b11111110;
#100
E = 1;
S = 3'b001;
I = 8'b00000001;
#100
E = 0;
S = 3'b000;
I = 8'b00000001;
#100
E = 0;
S = 3'b001;
I = 8'b00000010;
#100
E = 0;
S = 3'b010;
I = 8'b00000100;
#100
E = 0;
S = 3'b011;
I = 8'b00001000;
#100
E = 0;
S = 3'b100;
I = 8'b00010000;
#100
E = 0;
S = 3'b101;
I = 8'b00100000;
#100
E = 0;
S = 3'b110;
I = 8'b01000000;
#100
E = 0;
S = 3'b111;
I = 8'b10000000;
#100
E = 0;
S = 3'b000;
I = 8'b11111110;
#100
E = 0;
S = 3'b001;
I = 8'b11111101;
#100
E = 0;
S = 3'b010;
I = 8'b11111011;
#100
E = 0;
S = 3'b011;
I = 8'b11110111;
#100
E = 0;
S = 3'b100;
I = 8'b11101111;
#100
E = 0;
S = 3'b101;
I = 8'b11011111;
#100
E = 0;
S = 3'b110;
I = 8'b10111111;
#100
E = 0;
S = 3'b111;
I = 8'b01111111;
#2000 $finish;
end
IC74LS151 D(.E(E),.S(S),.I(I),.Z(Z),.Y(Y));
endmodule
