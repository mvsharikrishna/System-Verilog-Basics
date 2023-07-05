// Deep copy: creates a similar properties of main class and sub class for 2nd handler in different memory locations.
// Modifications in main class properties and sub class properties will not effect in other handlers.

// EDA Playground Link: https://www.edaplayground.com/x/gxhB
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
  
  function copy(main_class mc);
    this.a = mc.a;
    this.b = mc.b;
    this.sb1.c = mc.sb1.c;
  endfunction
endclass

module tb();
  main_class mc1, mc2;
  initial
    begin
      mc1= new(10, 7, 8);
      $display("Before Deep copy: elements of mc1");
      mc1.display();
      mc2 = new(1,2,3);
      mc2.copy(mc1);
      $display("After Deep copy: elements of mc2");
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
# Before Deep copy: elements of mc1
# a=10 b=7 sb1.c=8
# After Deep copy: elements of mc2
# a=10 b=7 sb1.c=8
# mc1 after modification
# a=15 b=11 sb1.c=12
# mc2 after modification
# a=10 b=7 sb1.c=8
*/
