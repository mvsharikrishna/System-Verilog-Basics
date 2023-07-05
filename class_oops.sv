// class is the dynamic structures that consists of various properties and methods
// classes allow objects to create and delete dynamically
// A class handle is pointer for an object
// Memory allocation to the handle is done using new() constructor. These can be user defined also.
class transaction;
  bit [31:0]data;
  bit [7:0]id;
  
  function new(bit [31:0]tr_data, bit [7:0]tr_id);
    data = tr_data;
    id = tr_id;
  endfunction
  
  task display();
    $display("data=%0d id=%0d",data, id);
  endtask
endclass

module tb();
  initial begin
    transaction tr;
    tr = new(25,35);
    // can also be declared as: transaction tr = new(25, 35);
    tr.display();
  end
endmodule

/* Output:
# data=25 id=35
*/
