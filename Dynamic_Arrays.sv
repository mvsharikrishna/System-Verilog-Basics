// Dynamic Arrays
// As name defines, these array sizes can be changed dynamically i.e., during runtime simulation
// Declaration Syntax: <data_type> <da_var>[];
// Memory allocation: <da_var> = new[<size>]; (in procedural blocks)
// resizing dynamic array with loosing previous elements => <da_var> = new[<new_size>];
// resizing dynamic array without loosing previous elements => <da_var> = new[<new_size>](<da_var>);
// <da_var>.size => return size of dynamic array
// <da_var>.delete => results in empty array i.e., size of array will be 0.

// EDA Playground link: https://www.edaplayground.com/x/WgG_
module tb();
  int da_arr[];		// Declaration
  
  initial
    begin
      da_arr = new[5];			// Allocation of memory
      da_arr = '{0,1,2,3,4};	// initialisation
      $display("Initial array size: %0d",da_arr.size());
      $display("Initial array: %p",da_arr);
	
      // Resizing array without loosing old elements
      da_arr = new[10](da_arr);
      // Resizing array without loosing old elements using size method
      da_arr = new[da_arr.size()+5](da_arr);			// now size is 15
      $display("Resized array size: %0d",da_arr.size());
      $display("Resized array: %p",da_arr);
      da_arr[5]=5;
      $display("Resized array after giving element to 5th index: %p",da_arr);
      
       // Resizing array with loosing old elements
      da_arr = new[8];
      $display("Resized array size: %0d",da_arr.size());
      $display("Resized array: %p",da_arr);
      
      // deleting array
      da_arr.delete();
      $display("Size of array after delete method: %0d",da_arr.size());
      $display("Array after delete method: %p",da_arr);
    end
endmodule

/* Output:
# Initial array size: 5
# Initial array: '{0, 1, 2, 3, 4}
# Resized array size: 15
# Resized array: '{0, 1, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
# Resized array after giving element to 5th index: '{0, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0}
# Resized array size: 8
# Resized array: '{0, 0, 0, 0, 0, 0, 0, 0}
# Size of array after delete method: 0
# Array after delete method: '{}
*/
