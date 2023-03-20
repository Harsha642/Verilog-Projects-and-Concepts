Q1) Write a verilog code to swap contents of two registers with and without a temporary register?
Ans) 
With temp reg ;

always @ (posedge clock)
begin
temp=b;
b=a;
a=temp;
end

Without temp reg;

always @ (posedge clock)
begin
a <= b;
b <= a;
end
