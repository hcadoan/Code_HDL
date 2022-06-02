
module ffbt1(ck,rs,q);
input ck,rs;
output [4:0]q;
reg [4:0]q;
always @ (negedge ck)
begin
if (rs == 1'b1)
q <= 5'b00000;
else
begin
q <= q + 1;
if(q == 5'b10100)
q <= 5'b00000;
end
end
endmodule

// model testbench //
module TB_ffbt1();
reg ck, rs;
wire [4:0]q;
initial
begin
ck = 0;
rs = 0;
#100
rs = 0;
#1000
rs = 1;
#1200 $finish;
end
always @(ck)
#50 ck<=~ck;
ffbt1 U(.ck(ck),.rs(rs),.q(q));
endmodule