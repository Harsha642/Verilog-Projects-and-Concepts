`timescale 1ns / 1ps


// ------------------ DATA FLOW MODELLING ------------------ 

module Mux( input a,b, sel,
            output y   );
    
assign y = sel ? a : b ;

endmodule


// ------------------ STRUCTURAL MODELLING ------------------  

module Mux1( input a,b, sel,
            output y   );
    
and g1(y1, a, nsel) ;
    g2(y2, a, sel) ;
or  g3(y, y1, y2)  ;
not g4(nsel, sel) ;

endmodule

// ------------------ BEHAVIORAL MODELLING ------------------  

module Mux2( input a,b, sel,
            output reg y   );

always@(a or b or sel)
   if (sel)
      y = b ;
   else
      y = a ;
   
endmodule


// ------------------ USER-DEFINED PRIMITIVE (UDP) ------------------ 

 primitive Mux3( output y,
 input a,b, sel   );
 
table
   1?0 : 1 ;   
   0?0 : 0 ;  
   ?11 : 1 ;  
   ?01 : 0 ;  
   11? : 1 ;  
   00? : 0 ;  
endtable
       
endprimitive
    