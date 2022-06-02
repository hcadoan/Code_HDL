module add8bit(a,b,out);
input [7:0]a,b;
output [8:0]out;
wire n1,n2,n3,n4,n5,n6,n7;
fa u1(a[0],b[0],1'b0,out[0],n1);
fa u2(a[1],b[1],n1,out[1],n2);
fa u3(a[2],b[2],n2,out[2],n3);
fa u4(a[3],b[3],n3,out[3],n4);
fa u5(a[4],b[4],n4,out[4],n5);
fa u6(a[5],b[5],n5,out[5],n6);
fa u7(a[6],b[6],n6,out[6],n7);
fa u8(a[7],b[7],n7,out[7],out[8]);
endmodule

module fa(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s = (a^b)^ci;
assign co = (a&b)|((a^b)&ci);
endmodule

module TB_add8bit();
reg [3:0]a,b;
wire [4:0]out;
initial
begin
a = 120;
b = 20;
#100
a = 140;
b = 43;
#100
a = 200;
b = 112;
#100
a = 255;
b = 100;
#100
a = 233;
b = 137;
#100
a = 49;
b = 120;
#100
a = 56;
b = 114;
#100
a = 150;
b = 150;
#100
a = 210;
b = 30;
#100
a = 28;
b = 112;
#1200 $finish;
end
add8bit U(.a(a),.b(b),.out(out));
endmodule