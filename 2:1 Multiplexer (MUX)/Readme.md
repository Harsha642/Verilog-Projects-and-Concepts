
**What is Multiplexer?**  <br />
A Multiplexer (or mux;), also known as a data selector, a combinational logic circuit,  is a device that selects between several analog or digital input signals and forwards the selected input to a single output line.The selection is directed by a separate set of digital inputs known as select lines. A multiplexer of  '2^n' inputs has 'n' select lines, which are used to select which input line to send to the output.
<br />

**assign y = sel ? a : b ;**        <br />
This operator ? means that the output 'y' becomes equal to data 'a' if select line 'sel' is true otherwise 'b' is the final output. 
<br />
In User-Defined Primitive or UDP, the behavior of the output is defined by truth table that includes the don't care symbols indicated by a question mark. This allows us to specify the behavior more precisely. This model is a little different from the others in that when 'a' and 'b' match, select('sel') is ignored and the output('y') will be a logical level instead of an **x** like it is in the other models. We'll be able to see this in simulation. This behavior is a little more optimistic and likely more robust. So this gives us some motivation why we might want to define our own user primitives instead of using the given operators and statements within Verilog.
<br />

The input signals are 'a' and 'b'. 'sel' is the select line with 'y' as its output. We can orally solve for the expression of the output that comes out to be:

                        y = a.(sel)’ + b.(sel)

<br />

**Logic Diagram and Truth Table :**<br />
a. The schematic diagram, boolean equation and the truth table of a 2:1 multiplexer with inputs A and B, select input S and the output Z. <br />
<img src="Mux3.PNG"> <br />
b.  Representaion  <br />
 <img src="Mux2.PNG">  
 <br />
c.  Logic Diagram of 2: 1 MUX  <br />
  <img src="Mux1.PNG"> <br />
 


