// Shallow copy: creates a similar properties of main class for 2nd handler in different memory locations but sub classes share same memory locations.
// Modifications in main class properties will not effect in other handlers but modifications in sub class properties will effect for other handlers

// EDA Playground link: https://www.edaplayground.com/x/QkLb
class sub_class;
  int c;
  
  function new(int c);
    this.c = c;
  endfunction
endclass

class main_class;
  int a;
  bit [7:0]b;
  sub_class sb1;
  
  function new(int a, bit [7:0]b, int c);
    sb1 = new(c);
    this.a=a;
    this.b=b;
  endfunction
  
  function void display();
    $display("a=%0d b=%0d sb1.c=%0d",a,b,sb1.c);
  endfunction
endclass

module tb();
  main_class mc1, mc2;
  initial
    begin
      mc1= new(10, 7, 8);
      $display("Before shallow copy: elements of mc1");
      mc1.display();
      mc2 = new mc1;
      $display("After shallow copy: elements of mc2");
      mc2.display();
      
      // modifing properties of mc1
      mc1.a = 15;
      mc1.b = 11;
      mc1.sb1.c = 12;
      
      $display("mc1 after modification");
      mc1.display();
      $display("mc2 after modification");
      mc2.display();
    end
endmodule

/* Output:
# Before shallow copy: elements of mc1
# a=10 b=7 sb1.c=8
# After shallow copy: elements of mc2
# a=10 b=7 sb1.c=8
# mc1 after modification
# a=15 b=11 sb1.c=12
# mc2 after modification
# a=10 b=7 sb1.c=12
*/
