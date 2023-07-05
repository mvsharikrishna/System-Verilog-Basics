// Scalars & Vectors
// EDA Playground link: https://www.edaplayground.com/x/LXm6
module tb();
  //scalar: The data object which does not have a specific range for bit/logic/reg is a scalar.
  logic var1;
  // vector: The data object which has a specific range for bit/logic/reg is a vector.
  logic [5:0]var2;
  bit [3:0][2:0]var3;
  //int [3:0]var4; => error
  
  initial
    begin
      var1=1'b1;
      var2=6'o12;
      var3[0]=3'b000;
      var3[1]=3'b001;
      var3[2]=3'b010;
      var3[3]=3'b011;
      
      $display("%b %o %b %b",var1,var2,var3,var3[1]);
    end
endmodule

/* logic [5:0]var2: here var2 has specified range from [5:0] => 6 bits
	bit [3:0][2:0]var3:
    	-------------------------------------------------
        |	|	|	|	|	|	|	|	|	|	|	|	|
        | 2 | 1 | 0 | 2 | 1 | 0 | 2 | 1 | 0 | 2 | 1 | 0 |
        |	|	|	|	|	|	|	|	|	|	|	|	|
        |-----------|-----------|-----------|-----------|
        |	var[3]	|	var[2]	|	var[1]	|	var[0]	|
*/

/* Output:
1 12 011010001000 001
*/
