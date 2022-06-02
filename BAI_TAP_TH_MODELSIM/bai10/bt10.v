module bt10(A,y);
input [4:0]A;
output y;
reg y;
integer i,count;
always@(*)
begin
if(A>1)
begin
count = 0;
for(i=2;i <=(A/2);i=i+1)
begin
if(A%i==0)
count=count+1;
end
if(count==0)
y = 1'b1;
else
y = 1'b0;
end
else
y = 1'b0;
end
endmodule

module TB_bt10();
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
A = 5'b00010; 
#100
A = 5'b01100;
#100
A = 5'b00101;
#100
A = 5'b11000;
#100
A = 5'b01011;
#1000 $finish;
end
bt10 D(.A(A),.y(y));
endmodule
