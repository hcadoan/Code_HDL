
//Bai 5: hien thi lan luot chu hello
//c : current_state
//n : next_state

module FSM5(ck,rs,y,c);
parameter tat = 3'b000;
parameter H = 3'b001; 
parameter E = 3'b010;
parameter L = 3'b011;
parameter L_ = 3'b100;
parameter O = 3'b101; 
input ck,rs;
output [7:0]y;
output [2:0] c;
reg [7:0]y;
reg [2:0] c,n;
always @ (*)
begin
case(c)
tat : n = H;
H : n = E;
E : n = L;
L : n = L_;
L_ : n = O;
O : n = tat;
default n = tat;
endcase
end
always @ (posedge ck or posedge rs)
begin
if(rs == 1)
c <= tat;
else c <= n;
end
always @ (*)
begin
case(c)
tat: y = 8'hFF;
H: y = 8'h89;
E: y = 8'h86;
L: y = 8'hC7;
L_: y = 8'hC7;
O: y = 8'hC0;
endcase
end
endmodule

module TB_FSM5();
reg ck,rs;
wire [2:0]c;
wire[7:0]y;
initial
begin
ck = 1;
rs = 1;
#100
rs = 0;
#1400
rs = 1;
#125
rs = 0;
#2000 $finish;
end
always @(ck)
#100 ck<=~ck;
FSM5 U(.ck(ck),.rs(rs),.c(c),.y(y));
endmodule