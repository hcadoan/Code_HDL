module hello(SW,HEX0,HEX1,HEX2,HEX3,HEX4);
input [3:0]SW;
output reg[7:0]HEX0,HEX1,HEX2,HEX3,HEX4;
always @ (SW)
begin
case (SW)
4'b0000: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b0001: begin
HEX4 =8'h91; //Y
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b0010: begin
HEX4 =8'h8C; //P
HEX3 =8'h91; //Y
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b0011: begin
HEX4 =8'h8C; //P
HEX3 =8'h8C; //P
HEX2 =8'h91; //Y
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b0100: begin
HEX4 =8'h88; //A
HEX3 =8'h8C; //P
HEX2 =8'h8C; //P
HEX1 =8'h91; //Y
HEX0 =8'hFF; //
end
4'b0101: begin
HEX4 =8'h89; //H
HEX3 =8'h88; //A
HEX2 =8'h8C; //P
HEX1 =8'h8C; //P
HEX0 =8'h91; //Y
end
4'b0110: begin
HEX4 =8'hFF; //
HEX3 =8'h89; //H
HEX2 =8'h88; //A
HEX1 =8'h8C; //P
HEX0 =8'h8C; //P
end
4'b0111: begin
HEX4 =8'hFF; //
HEX3 =8'hFF; //
HEX2 =8'h89; //H
HEX1 =8'h88; //A
HEX0 =8'h8C; //P
end
4'b1000: begin
HEX4 =8'hFF; //
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'h89; //H
HEX0 =8'h88; //A
end
4'b1001: begin
HEX4 =8'hFF; //
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'h89; //H
end
4'b1010: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b1011: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b1100: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b1101: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b1110: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
4'b1111: begin
HEX4 =8'hFF; // tat led
HEX3 =8'hFF; //
HEX2 =8'hFF; //
HEX1 =8'hFF; //
HEX0 =8'hFF; //
end
endcase
end
endmodule
module TB_hello();
reg [3:0]SW;
wire [7:0]HEX0;
initial
begin
SW = 4'b0000;
#100
SW = 4'b0001;
#100
SW = 4'b0010;
#100
SW = 4'b0011;
#100
SW = 4'b0100;
#100
SW = 4'b0101;
#100
SW = 4'b0110;
#100
SW = 4'b0111;
#100
SW = 4'b1000;
#100
SW = 4'b1001;
#100
SW = 4'b1010;
#100
SW = 4'b1011;
#100
SW = 4'b1100;
#100
SW = 4'b1101;
#100
SW = 4'b1110;
#100
SW = 4'b1111;
#2000 $finish;
end
hello D(.SW(SW),.HEX0(HEX0));
endmodule