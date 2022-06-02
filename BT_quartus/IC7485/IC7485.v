//chú thích:
//+ ngõ vào nối chồng: ALBin = A>B
//                   AnBin = A<B
//                   AbBin = A=B
//+ ngõ ra:  ALB = A>B
//         AnB = A<B
//         AbB = A=B      
       
module IC7485(A0,A1,A2,A3,B0,B1,B2,B3,AlBin,AnBin,AbBin,AlB,AnB,AbB);
input A0,A1,A2,A3,B0,B1,B2,B3,AlBin,AnBin,AbBin;
output AlB,AnB,AbB;
reg AlB,AnB,AbB;
always@(*)
begin
if(A3>B3)
begin
AlB = 1;
AnB = 0;
AbB = 0;
end
else if(A3<B3)
begin
AlB = 0;
AnB = 1;
AbB = 0;
end
else
begin
if(A2>B2)
begin
AlB = 1;
AnB = 0;
AbB = 0;
end
else if(A2<B2)
begin
AlB = 0;
AnB = 1;
AbB = 0;
end
else
begin
if(A1>B1)
begin
AlB = 1;
AnB = 0;
AbB = 0;
end
else if(A1<B1)
begin
AlB = 0;
AnB = 1;
AbB = 0;
end
else
begin
if(A0>B0)
begin
AlB = 1;
AnB = 0;
AbB = 0;
end
else if(A0<B0)
begin
AlB = 0;
AnB = 1;
AbB = 0;
end
else
begin
if((AlBin==1)&(AnBin==0)&(AbBin==0))
begin
AlB = 1;
AnB = 0;
AbB = 0;
end
else if((AlBin==0)&(AnBin==1)&(AbBin==0))
begin
AlB = 0;
AnB = 1;
AbB = 0;
end
else if((AbBin==1)|(AlBin==0)&(AnBin==0)&(AbBin==1))
begin
AlB = 0;
AnB = 0;
AbB = 1;
end
else if((AlBin==1)&(AnBin==1)&(AbBin==0))
begin
AlB = 0;
AnB = 0;
AbB = 0;
end
else if((AlBin==0)&(AnBin==0)&(AbBin==0))
begin
AlB = 1;
AnB = 1;
AbB = 0;
end
end
end
end
end
end
endmodule
module TB_IC7485();
reg [3:0]A,B;
reg AlBin,AnBin,AbBin;
wire AlB,AnB,AbB;
initial
begin
A = 4'b0101;
B = 4'b1011;
{AlBin,AnBin,AbBin} = 3'b101;
#100
A = 4'b1100;
B = 4'b0111;
{AlBin,AnBin,AbBin} = 3'b011;
#100
A = 4'b0101;
B = 4'b0010;
{AlBin,AnBin,AbBin} = 3'b001;
#100
A = 4'b1011;
B = 4'b1101;
{AlBin,AnBin,AbBin} = 3'b100;
#100
A = 4'b0100;
B = 4'b0111;
{AlBin,AnBin,AbBin} = 3'b111;
#100
A = 4'b1010;
B = 4'b1001;
{AlBin,AnBin,AbBin} = 3'b101;
#100
A = 4'b0011;
B = 4'b0010;
{AlBin,AnBin,AbBin} = 3'b010;
#100
A = 4'b1010;
B = 4'b1011;
{AlBin,AnBin,AbBin} = 3'b101;
#100
A = 4'b0101;
B = 4'b0101;
{AlBin,AnBin,AbBin} = 3'b100;
#100
A = 4'b1100;
B = 4'b1100;
{AlBin,AnBin,AbBin} = 3'b010;
#100
A = 4'b0110;
B = 4'b0110;
{AlBin,AnBin,AbBin} = 3'b001;
#100
A = 4'b1001;
B = 4'b1001;
{AlBin,AnBin,AbBin} = 3'b111;
#100
A = 4'b0111;
B = 4'b0111;
{AlBin,AnBin,AbBin} = 3'b110;
#100
A = 4'b1101;
B = 4'b1101;
{AlBin,AnBin,AbBin} = 3'b000;
#1600 $finish;
end
IC7485 D(.A3(A[3]),.A2(A[2]),.A1(A[1]),.A0(A[0]),.B3(B[3]),.B2(B[2]),.B1(B[1]),.B0(B[0])
,.AlBin(AlBin),.AnBin(AnBin),.AbBin(AbBin),.AlB(AlB),.AnB(AnB),.AbB(AbB));
endmodule
