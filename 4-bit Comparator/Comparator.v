`timescale 1ns / 1ps

// I have included three different models for the Comparator design, make sure you include only one while simulating...

// -----------------  STRUCTURAL MODELLING  -----------------

// Use predefined or user-defined primitive gates 

 module Comparator(  input [3:0] a, 
                     input [3:0] b, 
                     output out      );

 wire n0,n1,n2,n3;

 xnor xnor0(n0, a[0], b[0]);
 xnor xnor1(n1, a[1], b[1]);
 xnor xnor2(n2, a[2], b[2]);
 xnor xnor3(n3, a[3], b[3]);
 and and0( out, n0, n1, n2, n3);
 
endmodule


// -----------------  DATAFLOW MODELLING  -----------------

// Using concurrent assign statements 

 module Comparator1(  input [3:0] A, 
                      input [3:0] B, 
                      output Y        );
    
 assign Y=&((A~^B)); 
    
endmodule

 
    

// -----------------  BEHAVIORAL MODELLING  -----------------

// Use procedural assignment statements ( always )

 module Comparator2( input [3:0] A, 
                     input [3:0] B, 
                     output reg Y     );
                     
   integer N;
   
   always@(A or B)
   begin
    Y=0;
    if(A==B)
       Y=1;
   end
   
endmodule
