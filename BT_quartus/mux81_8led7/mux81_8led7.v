// SW: ngõ vào select bo mux81
// SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8: ngõ vào data bo mux81
// M[2:0] : ngõ ra bo mux81
// HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7 : ngõ ra noi vào led 7 doan

module mux81_8led7(SW,SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7);
input [2:0]SW,SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8;
output [7:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;
wire [2:0]M;
mux81_3bit u1(SW,SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8,M);
giaima_8led7 u2(M,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7);
endmodule

module mux81_3bit(S,A,B,C,D,E,F,G,H,M);
input [2:0]S,A,B,C,D,E,F,G,H;
output reg[2:0]M;
always @(*)
begin
case(S)
3'b000: M=A;
3'b001: M=B;
3'b010: M=C;
3'b011: M=D;
3'b100: M=E;
3'b101: M=F;
3'b110: M=G;
3'b111: M=H;
endcase
end
endmodule

module giaima_8led7(M,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7);
input [2:0]M;
output reg[7:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;
always @(M)
begin
case(M)
3'b000: 
begin
HEX7 =8'hFF; // 
HEX6 =8'hFF; //
HEX5 =8'hFF; //
HEX4 =8'h89; //H
HEX3 =8'h86; //E
HEX2 =8'hC7; //L
HEX1 =8'hC7; //L
HEX0 =8'hC0; //O
end
3'b001: 
begin
HEX7 =8'hFF; // 
HEX6 =8'hFF; //
HEX5 =8'h89; //H
HEX4 =8'h86; //E
HEX3 =8'hC7; //L
HEX2 =8'hC7; //L
HEX1 =8'hC0; //O
HEX0 =8'hFF; //
end
3'b010: 
begin
HEX7 =8'hFF; // 
HEX6 =8'h89; //H
HEX5 =8'h86; //E
HEX4 =8'hC7; //L
HEX3 =8'hC7; //L
HEX2 =8'hC0; //O
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
3'b011: 
begin
HEX7 =8'h89; //H 
HEX6 =8'h86; //E
HEX5 =8'hC7; //L
HEX4 =8'hC7; //L
HEX3 =8'hC0; //O
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
3'b100: 
begin
HEX7 =8'h86; //E 
HEX6 =8'hC7; //L
HEX5 =8'hC7; //L
HEX4 =8'hC0; //O
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'h89; //H
end
3'b101: 
begin
HEX7 =8'hC7; //L 
HEX6 =8'hC7; //L
HEX5 =8'hC0; //O
HEX4 =8'hFF; //
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'h89; //H
HEX0 =8'h86; //E
end
3'b110: 
begin
HEX7 =8'hC7; //L 
HEX6 =8'hC0; //O
HEX5 =8'hFF; //
HEX4 =8'hFF; //
HEX3 =8'hFF; //
HEX2 =8'h89; //H
HEX1 =8'h86; //E
HEX0 =8'hC7; //L
end
3'b111: 
begin
HEX7 =8'hC0; //O 
HEX6 =8'hFF; //
HEX5 =8'hFF; //
HEX4 =8'hFF; //
HEX3 =8'h89; //H
HEX2 =8'h86; //E
HEX1 =8'hC7; //L
HEX0 =8'hC7; //L
end
endcase
end
endmodule

module TB_mux81_8led7();
reg [2:0]SW,SW1,SW2,SW3,SW4,SW5,SW6,SW7,SW8;
wire [7:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;
initial
begin
SW = 3'b000;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b001;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b010;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b011;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b100;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b101;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b110;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#100
SW = 3'b111;
SW1 = 3'b000;
SW2 = 3'b001;
SW3 = 3'b010;
SW4 = 3'b011;
SW5 = 3'b100;
SW6 = 3'b101;
SW7 = 3'b110;
SW8 = 3'b111;
#1000 $finish;
end
mux81_8led7 D(.SW(SW),.SW1(SW1),.SW2(SW2),.SW3(SW3),.SW4(SW4),.SW5(SW5),.SW6(SW6),.SW7(SW7),.SW8(SW8)
,.HEX0(HEX0),.HEX1(HEX1),.HEX2(HEX2),.HEX3(HEX3),.HEX4(HEX4),.HEX5(HEX5),.HEX6(HEX6),.HEX7(HEX7));
endmodule
