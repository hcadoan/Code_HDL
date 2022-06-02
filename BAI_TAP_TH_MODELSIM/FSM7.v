
//bai 7: d?ch FPGA t? trái qua ph?i
//c : current_state
//n : next_state

module FSM7(ck,rs,HEX3,HEX2,HEX1,HEX0,c);
parameter tat = 3'b000;
parameter S0 = 3'b001; 
parameter S1 = 3'b010;
parameter S2 = 3'b011;
parameter S3 = 3'b100;
parameter S4 = 3'b101;
parameter S5 = 3'b110;
parameter S6 = 3'b111;
input ck,rs;
output [7:0]HEX3,HEX2,HEX1,HEX0;
output [2:0] c;
reg [7:0]HEX3,HEX2,HEX1,HEX0;
reg [2:0] c,n;
always @ (*)
begin
case(c)
tat : n = S0;
S0 : n = S1;
S1 : n = S2;
S2 : n = S3;
S3 : n = S4;
S4 : n = S5;
S5 : n = S6;
S6 : n = tat;
default n = tat;
endcase
end
always @ (posedge ck)
begin
if(rs == 1)
c <= tat;
else c <= n;
end
always @ (*)
begin
case(c)
tat : 
begin
HEX3 = 8'hFF;
HEX2 = 8'hFF;
HEX1 = 8'hFF;
HEX0 = 8'hFF;
end
S0 : 
begin
HEX3 = 8'h88;
HEX2 = 8'hFF;
HEX1 = 8'hFF;
HEX0 = 8'hFF;
end
S1 : 
begin
HEX3 = 8'hC2;
HEX2 = 8'h88;
HEX1 = 8'hFF;
HEX0 = 8'hFF;
end
S2 : 
begin
HEX3 = 8'h8C;
HEX2 = 8'hC2;
HEX1 = 8'h88;
HEX0 = 8'hFF;
end
S3 : 
begin
HEX3 = 8'h8E;
HEX2 = 8'h8C;
HEX1 = 8'hC2;
HEX0 = 8'h88;
end
S4 : 
begin
HEX3 = 8'hFF;
HEX2 = 8'h8E;
HEX1 = 8'h8C;
HEX0 = 8'hC2;
end
S5 : 
begin
HEX3 = 8'hFF;
HEX2 = 8'hFF;
HEX1 = 8'h8E;
HEX0 = 8'h8C;
end
S6 : 
begin
HEX3 = 8'hFF;
HEX2 = 8'hFF;
HEX1 = 8'hFF;
HEX0 = 8'h8E;
end
endcase
end
endmodule

module TB_FSM7();
reg ck,rs;
wire [2:0]c;
wire [7:0]HEX3,HEX2,HEX1,HEX0;
initial
begin
ck = 0;
rs = 1;
#100
rs = 0;
#1000
rs = 1;
#125
rs = 0;
#1500 $finish;
end
always @(ck)
#50 ck<=~ck;
FSM7 U(.ck(ck),.rs(rs),.c(c),.HEX3(HEX3),.HEX2(HEX2),.HEX1(HEX1),.HEX0(HEX0));
endmodule
