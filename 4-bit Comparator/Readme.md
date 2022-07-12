
Verilog, standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems.  <br />
It is most commonly used in the design and verification of digital circuits at the register-transfer level of abstraction.  <br />
In Verilog, a design consists of modules. <br />
<br />
Verilog is a acronym for Verifying Logic  <br />
<br /> 
**History of Verilog** :  <br />
Verilog is a modeling language created by Gateway Automation in 1984. Gateway is acquired by Cadence in 1990. With the increasing success of VHDL at the time, Cadence decided to make the language available for open standardization. Cadence transferred Verilog into the public domain under the Open Verilog International Organization now known as Accellera. Verilog was later submitted to IEEE and became the IEEE Standard 1364 in 1995, commonly referred to as Verilog-95.  <br />

Extensions to Verilog-95 were submitted back to IEEE to cover the deficiencies that users had found in the original Verilog standard. These extensions became IEEE Standard 1364-2001 known as Verilog-2001, another update occurred in 2005. In many cases, the FPGA vendors are supporting Verilog-2001 may not support 2005 as of yet, and so it's important to know the distinction between these because it may affect how the synthesizer treat your Verilog code. As of 2009, the SystemVerilog and Verilog language standards were merged into SystemVerilog 2009 which is now IEEE Standard 1800-2009. Current version is IEEE Standard 1800-2017. While some FPGA vendors tools support synthesis from SystemVerilog, most of them, in fact all of them will support Verilog, but only some will support SystemVerilog at this point, and the version of SystemVerilog they support is probably a couple of revisions back. It might be still 2009, that's something that you have to check with your FPGA vendor tools as you're working with Verilog as an HDL input.  <br />


Verilog language has the capability of designing a module in several coding styles. Depending on the needs of a design, internals of each module can be defined at four level of abstractions. Irrespective of the internal abstraction level, the module would behave exactly in the similar way to the external environment. Following are the four different levels of abstraction which can be described by four different coding styles of Verilog language:  <br />

1. Behavioral or Algorithmic level <br />
2. Dataflow level  <br />
3. Gate level or Structural level  <br />
4. Switch level  <br />
  <br />
Let’s us discuss the first three modelling styles in detailed and also using 4-bit Comparator as an example. <br />
Before diving into let's look some analogy <br />
<br />
**Analogy** :  <br />
When we think of any digital circuit, either it is a combinational or a sequential circuit, we have three aspects in our mind. They are:- <br />
1) Circuit diagram or schematic,  <br />
2) Logical Expression, and   <br />
3) Truth table.  <br />
 <br />
So, when comes to Verilog HDL or any HDL, there are three aspects of Modelling:    <br />
1) Structural or Gate-level modelling,  <br />
2) Dataflow modelling,   <br />
3) Behavioral modelling.  <br />
These three modelling aspects in Verilog HDL relate to those three aspects of a digital circuit respectively. <br />
Let me explain these three modelling with examples  <br />
<br />

**STRUCTURAL MODELLING** :<br />
// Use predefined or user-defined primitive gates  <br />
When we design a Verilog code entirely using Primitive Logic Gates, it is called “Gate Level Modelling“. This is Lowest level abstraction, and it is hard to understand the intent of the code by the human, but is easy and guaranteed for machine compiling and logical synthesis.  <br />

<br />
<sub>
 module Comparator(  input [3:0] a,  <br />
                     input [3:0] b,   <br />
                     output out      );  <br />
<br />
 wire n0,n1,n2,n3;  <br />
 <br />
 xnor xnor0(n0, a[0], b[0]);  <br /> 
 xnor xnor1(n1, a[1], b[1]); <br />
 xnor xnor2(n2, a[2], b[2]); <br />
 xnor xnor3(n3, a[3], b[3]);<br />
 and and0( out, n0, n1, n2, n3);<br />
 <br />
endmodule<br />
</sub><br />
<br />
It uses library modules for gates inserted into the Comparator module. The act of inserting the library modules is known as instantiation.
Each instance of the gate model is wired to different signals.
The first XNOR gate labeled xnor0 has a[0] and b[0] as Inputs with n0 as the Output 
<br />
<br />

**DATAFLOW MODELLING** :
<br />
// Using concurrent assign statements <br />
Dataflow modelling is completely done by the logical expression of the digital circuit. We have logical and arithmetic operators in Verilog, which we can use to create logical expressions of the digital circuit.<br />
<br /><sub>
 module Comparator1(  input [3:0] A, <br />
                      input [3:0] B, <br />
                      output Y        );<br />
    <br />
 assign Y=&((A~^B));                                 <br /> 
    <br />
endmodule<br />
</sub>
<br />
<br />
 
The dataflow model provides an output as a function of the input vectors.<br />
The description of the comparator in this case is achieved in a single line of code showing the efficiency of this modelling style.<br />
It’s a lot less typing than structural model, but will synthesize to exactly the same circuit.  <br />
<br />
**BEHAVIORAL MODELLING** :

In the Behavioral model a special block of code known as the always block is used where in the statements are sequential and not concurrent as they are outside of an always block.<br />
In an always block statement order matters  <br />


<br />
<br />
// Use procedural assignment statements ( always ) <br />
The behavioural modelling completely depends on the truth table or behaviour of the circuit. In this modelling, we can design hardware without even knowing the components present in it, because it doesn’t care. <br />
<sub><br />
 module Comparator2( input [3:0] A, <br />
                     input [3:0] B, <br />
                     output reg Y     );   <br />
                     <br />
   integer N;<br />
   <br />
   always@(A or B)                                                <br />
   begin<br />
    Y=0;<br />
    if(A==B)<br />
       Y=1;<br />
   end<br />
   <br />
endmodule<br />
  </sub>
<br />
 <br />
The synthesizer will again create exactly the same comparator circuit based on this description.  <br />
Although a bit less efficient than a data flow model, this type of modelling can be extended easily to much more complex hardware. So this is the type of modelling we will tend to do the most once we become more experienced with Verilog, but the structural modelling and data flow modelling are still used in a lot of examples, So it good to know all three. <br />
<br />





