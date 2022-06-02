module nhan4bit(a,b,p);
input [3:0]a,b;
output [7:0]p;
wire [10:0]co;
wire [5:0]s;
and and1(p[0],a[0],b[0]);
fa fa1(a[1]&b[0],a[0]&b[1],1'b0,co[0],p[1]);
fa fa2(a[2]&b[0],a[1]&b[1],co[0],co[1],s[0]);
fa fa3(a[3]&b[0],a[2]&b[1],co[1],co[2],s[1]);
fa fa4(1'b0,a[3]&b[1],co[2],co[3],s[2]);
fa fa5(s[0],a[0]&b[2],1'b0,co[4],p[2]);
fa fa6(s[1],a[1]&b[2],co[4],co[5],s[3]);
fa fa7(s[2],a[2]&b[2],co[5],co[6],s[4]);
fa fa8(co[3],a[3]&b[2],co[6],co[7],s[5]);
fa fa9(s[3],a[0]&b[3],1'b0,co[8],p[3]);
fa fa10(s[4],a[1]&b[3],co[8],co[9],p[4]);
fa fa11(s[5],a[2]&b[3],co[9],co[10],p[5]);
fa fa12(co[7],a[3]&b[3],co[10],p[7],p[6]);
endmodule
module fa(A,B,ci,co,s);
input A,B,ci;
output s,co;
assign s = (A^B)^ci;
assign co = (A&B)|((A^B)&ci);
endmodule
