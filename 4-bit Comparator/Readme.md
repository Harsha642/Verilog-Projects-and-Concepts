
Verilog, standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems. 
It is most commonly used in the design and verification of digital circuits at the register-transfer level of abstraction. 
In Verilog, a design consists of modules. 

Verilog is a acronym for Verifying Logic

**History of Verilog** : 
Verilog is a modeling language created by Gateway Automation in 1984. Gateway is acquired by Cadence in 1990. With the increasing success of VHDL at the time, Cadence decided to make the language available for open standardization. Cadence transferred Verilog into the public domain under the Open Verilog International Organization now known as Accellera. Verilog was later submitted to IEEE and became the IEEE Standard 1364 in 1995, commonly referred to as Verilog-95. //
Extensions to Verilog-95 were submitted back to IEEE to cover the deficiencies that users had found in the original Verilog standard. These extensions became IEEE Standard 1364-2001 known as Verilog-2001, another update occurred in 2005. In many cases, the FPGA vendors are supporting Verilog-2001 may not support 2005 as of yet, and so it's important to know the distinction between these because it may affect how the synthesizer treat your Verilog code. As of 2009, the SystemVerilog and Verilog language standards were merged into SystemVerilog 2009 which is now IEEE Standard 1800-2009. Current version is IEEE Standard 1800-2017. While some FPGA vendors tools support synthesis from SystemVerilog, most of them, in fact all of them will support Verilog, but only some will support SystemVerilog at this point, and the version of SystemVerilog they support is probably a couple of revisions back. It might be still 2009, that's something that you have to check with your FPGA vendor tools as you're working with Verilog as an HDL input.






Verilog language has the capability of designing a module in several coding styles. Depending on the needs of a design, internals of each module can be defined at four level of abstractions. Irrespective of the internal abstraction level, the module would behave exactly in the similar way to the external environment. Following are the four different levels of abstraction which can be described by four different coding styles of Verilog language:

Behavioral or Algorithmic level
Dataflow level
Gate level or Structural level
Switch level

Let’s us discuss the first three modelling styles in detailed and also using 4-bit Comparator as an example.



When we think of any digital circuit, either it is a combinational or a sequential circuit, we have three aspects in our mind. They are:-
Circuit diagram or schematic, 
Logical Expression, and 
Truth table. 

So, when comes to Verilog HDL or any HDL, there are three aspects of Modelling:
Structural or Gate-level modelling, 
Dataflow modelling, 
Behavioral modelling. 
These three modelling aspects in Verilog HDL relate to those three aspects of a digital circuit respectively.
Let me explain these three modelling with examples 

**STRUCTURAL MODELLING :**

// Use predefined or user-defined primitive gates 
When we design a Verilog code entirely using Primitive Logic Gates, it is called “Gate Level Modelling“. This is Lowest level abstraction, and it is hard to understand the intent of the code by the human, but is easy and guaranteed for machine compiling and logical synthesis.

<sup>
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
</sup>
/
It uses library modules for gates inserted into the Comparator module. The act of inserting the library modules is known as instantiation.
Each instance of the gate model is wired to different signals.
The first XNOR gate labeled xnor0 has a[0] and b[0] as Inputs with n0 as the Output 



**DATAFLOW MODELLING :**

// Using concurrent assign statements 
Dataflow modelling is completely done by the logical expression of the digital circuit. We have logical and arithmetic operators in Verilog, which we can use to create logical expressions of the digital circuit.

 module Comparator1(  input [3:0] A, 
                      input [3:0] B, 
                      output Y        );
    
 assign Y=&((A~^B)); 
    
endmodule



 
The dataflow model provides an output as a function of the input vectors.
The description of the comparator in this case is achieved in a single line of code showing the efficiency of this modelling style.
It’s a lot less typing than structural model, but will synthesize to exactly the same circuit.

**BEHAVIORAL MODELLING :**

In the Behavioral model a special block of code known as the always block is used where in the statements are sequential and not concurrent as they are outside of an always block.
In an always block statement order matters 




// Use procedural assignment statements ( always )
The behavioural modelling completely depends on the truth table or behaviour of the circuit. In this modelling, we can design hardware without even knowing the components present in it, because it doesn’t care.

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

 
The synthesizer will again create exactly the same comparator circuit based on this description. 
Although a bit less efficient than a data flow model, this type of modelling can be extended easily to much more complex hardware. So this is the type of modelling we will tend to do the most once we become more experienced with Verilog, but the structural modelling and data flow modelling are still used in a lot of examples, So it good to know all three.






