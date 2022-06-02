module bai9(A,y);
input [4:0]A;
output y;
reg y;
always@(*)
begin
if((A%2 ==0)&&(A%3 ==0))
y = 1'b1;
else
y = 1'b0;
end
endmodule

module TB_bai9();
reg [4:0]A;
wire y;
initial
begin
A = 5'b00000; 
#100
A = 5'b00001;
#100
A = 5'b00011;
#100
A = 5'b00110; 
#100
A = 5'b01100;
#100
A = 5'b10000;
#100
A = 5'b11000;
#100
A = 5'b01110;
#1000 $finish;
end
bai9 D(.A(A),.y(y));
endmodule

