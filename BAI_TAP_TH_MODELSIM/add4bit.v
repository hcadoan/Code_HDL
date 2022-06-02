
module add4bit(a,b,out);
input [3:0]a,b;
output [4:0]out;
wire [4:0]s;
wire n1,n2,n3;
assign out=s;
fa (a[0],b[0],1'b0,s[0],n1);
fa (a[1],b[1],n1,s[1],n2);
fa (a[2],b[2],n2,s[2],n3);
fa (a[3],b[3],n3,s[3],s[4]);
endmodule

module fa(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s = (a^b)^ci;
assign co = (a&b)|((a^b)&ci);
endmodule

module TB_add4bit();
reg [3:0]a,b;
wire [4:0]out;
initial
begin
a = 4'b0100;
b = 4'b0001;
#100
a = 4'b1100;
b = 4'b1001;
#100
a = 4'b0101;
b = 4'b1100;
#100
a = 4'b0001;
b = 4'b0111;
#100
a = 4'b0000;
b = 4'b1011;
#100
a = 4'b0110;
b = 4'b0101;
#100
a = 4'b1111;
b = 4'b0100;
#100
a = 4'b0100;
b = 4'b1111;
#100
a = 4'b1101;
b = 4'b0000;
#100
a = 4'b0101;
b = 4'b0101;
#1200 $finish;
end
add4bit U(.a(a),.b(b),.out(out));
endmodule