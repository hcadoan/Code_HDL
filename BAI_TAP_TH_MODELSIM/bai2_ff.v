module bai2_ff(E,CK,CLR,q);
input E,CK,CLR;
output [3:0]q;
wire x1,x2,x3;
T_ff u1(CK,E,CLR,q[0]);
and a1(x1,E,q[0]);
T_ff u2(CK,x1,CLR,q[1]);
and a2(x2,x1,q[1]);
T_ff u3(CK,x2,CLR,q[2]);
and a3(x3,x2,q[2]);
T_ff u4(CK,x3,CLR,q[3]);
endmodule

module T_ff(ck,t,rs,q);
input ck,t,rs;
output q;
reg q;
always @ (posedge ck or negedge rs)
begin
if (rs == 1'b0)
q <= 0;
else
if (t == 1'b0)
q <= q;
else
q <= !q;
end
endmodule

// model testbench //
module TB_bai2_ff();
reg CK, E, CLR;
wire [3:0]q;
initial
begin
CK=0;
CLR=0;
E=0;
#200
CLR=1;
E=0;
#100
CLR=1;
E=1;
#300
CLR=0;
E=0;
#1000 $finish;
end
always @(CK)
#50 CK<=~CK;
bai2_ff U(.CK(CK),.CLR(CLR),.E(E),.q(q));
endmodule
