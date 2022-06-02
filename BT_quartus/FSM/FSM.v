//Bai 5: hien thi lan luot chu hello
//c : current_state
//n : next_state

module FSM(ck,rs,y,c);
parameter tat = 3'b000;
parameter H = 3'b001; 
parameter E = 3'b010;
parameter L = 3'b011;
parameter L_ = 3'b100;
parameter O = 3'b101; 
input ck,rs;
output y;
output [2:0] c;
reg y;
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

module TB_FSM();
reg ck,rs;
wire [2:0]c;
wire y;
initial
begin
ck = 1;
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
#100 ck<=~ck;
FSM U(.ck(ck),.rs(rs),.c(c),.y(y));
endmodule