module nhancong_3bit(A,B,C,P);
input [2:0]A,B,C;
output [6:0]P;
wire [5:0]x1,x2;
nhan3bit u1(A,B,x1);
luythua u2(C,x2);
add6bit u3(x1,x2,P);
endmodule

module luythua(a,y);
input [2:0]a;
output [5:0]y;
assign y = a*a;
endmodule

module nhan3bit(a,b,p);
input [2:0]a,b;
output [5:0]p;
wire [4:0]Co;
wire [1:0]s;
wire [7:0]n;
and n0(p[0],a[0],b[0]);
and n1(n[0],a[1],b[0]);
and n2(n[1],a[0],b[1]);
and n3(n[2],a[2],b[0]);
and n4(n[3],a[1],b[1]);
and n5(n[4],a[2],b[1]);
and n6(n[5],a[0],b[2]);
and n7(n[6],a[1],b[2]);
and n8(n[7],a[2],b[2]);
fa u1(n[0],n[1],1'b0,p[1],Co[0]);
fa u2(n[2],n[3],Co[0],s[0],Co[1]);
fa u3(1'b0,n[4],Co[1],s[1],Co[2]);
fa u5(s[0],n[5],1'b0,p[2],Co[3]);
fa u6(s[1],n[6],Co[3],p[3],Co[4]);
fa u7(Co[2],n[7],Co[4],p[4],p[5]);
endmodule

module add6bit(a,b,y);
input [5:0]a,b;
output [6:0]y;
wire c1,c2,c3,c4,c5;
fa u1(a[0],b[0],1'b0,y[0],c1);
fa u2(a[1],b[1],c1,y[1],c2);
fa u3(a[2],b[2],c2,y[2],c3);
fa u4(a[3],b[3],c3,y[3],c4);
fa u5(a[4],b[4],c4,y[4],c5);
fa u6(a[5],b[5],c5,y[5],y[6]);
endmodule

module fa(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s = (a^b)^ci;
assign co = (a&b)|((a^b)&ci);
endmodule

module TB_nhancong_3bit();
reg [2:0]A,B,C;
wire [6:0]P;
initial
begin
A = 7;
B = 2;
C = 4;
#100
A = 4;
B = 6;
C = 2;
#100
A = 1;
B = 3;
C = 6;
#100
A = 6;
B = 5;
C = 1;
#100
A = 0;
B = 7;
C = 3;
#100
A = 4;
B = 2;
C = 0;
#600 $finish;
end
nhancong_3bit U(.A(A),.B(B),.C(C),.P(P));
endmodule