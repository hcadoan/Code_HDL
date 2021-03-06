module nhan4bit(a,b,p);
input [3:0]a,b;
output [7:0]p;
wire [10:0]Co;
wire [5:0]s;
wire [14:0]n;
and n0(p[0],a[0],b[0]);
and n1(n[0],a[1],b[0]);
and n2(n[1],a[0],b[1]);
and n3(n[2],a[2],b[0]);
and n4(n[3],a[1],b[1]);
and n5(n[4],a[3],b[0]);
and n6(n[5],a[2],b[1]);
and n7(n[6],a[3],b[1]);
and n8(n[7],a[0],b[2]);
and n9(n[8],a[1],b[2]);
and n10(n[9],a[2],b[2]);
and n11(n[10],a[3],b[2]);
and n12(n[11],a[0],b[3]);
and n13(n[12],a[1],b[3]);
and n14(n[13],a[2],b[3]);
and n15(n[14],a[3],b[3]);
fa u1(n[0],n[1],1'b0,p[1],Co[0]);
fa u2(n[2],n[3],Co[0],s[0],Co[1]);
fa u3(n[4],n[5],Co[1],s[1],Co[2]);
fa u4(1'b0,n[6],Co[2],s[2],Co[3]);
fa u5(s[0],n[7],1'b0,p[2],Co[4]);
fa u6(s[1],n[8],Co[4],s[3],Co[5]);
fa u7(s[2],n[9],Co[5],s[4],Co[6]);
fa u8(Co[3],n[10],Co[6],s[5],Co[7]);
fa u9(s[3],n[11],1'b0,p[3],Co[8]);
fa u10(s[4],n[12],Co[8],p[4],Co[9]);
fa u11(s[5],n[13],Co[9],p[5],Co[10]);
fa u12(Co[7],n[14],Co[10],p[6],p[7]);
endmodule
module fa(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s = (a^b)^ci;
assign co = (a&b)|((a^b)&ci);
endmodule

module TB_nhan4bit();
reg [3:0]a,b;
wire [7:0]p;
initial
begin
a = 5;
b = 2;
#100
a = 3;
b = 4;
#100
a = 5;
b = 5;
#100
a = 10;
b = 6;
#100
a = 11;
b = 12;
#100
a = 10;
b = 4;
#100
a = 15;
b = 15;
#100
a = 11;
b = 8;
#100
a = 9;
b = 3;
#100
a = 12;
b = 2;
#1200 $finish;
end
nhan4bit U(.a(a),.b(b),.p(p));
endmodule