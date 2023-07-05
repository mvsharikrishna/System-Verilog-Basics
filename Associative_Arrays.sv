// Associative Arrays
// When size of a collection is not known r data space is sparse, Associative Arrays are used
// declaration syntax: <data_type> <assoc_var>[<index_type>]
// index_type can be of any data type (bit, logic, int, string) or enumerated data type or array.
// Advantages of Associative arrays:
// 1. Memory is allocated only for particular indexes that are initialised
// 2. index is not limited and not restricted to integral expression, any data type can be used.
// methods supported in associative array:
// size() => return size of the assocative array (Considers only initialised indexes for calculation of size. returns '0' if array is empty
// num() => returns number of entries.
// delete(input index) => deletes element at specified "index"
// delete() => deletes whole array
// exists(input index) => returns '1', if element exists at specified index else returns '0'.
// first(ref index) => index = the first index of associative array.
// last(ref index) => index = the last index of associative array.
// prev(ref index) => Here index acts as input <= to which index prev index is needed and also acts as ouput with prev index (prev index is max of all small indices less than index specified - in numerical)
// next(ref index) => Here index acts as input <= to which index prev index is needed and also acts as ouput with next index (next index is min of all larger indices more than index specified - in numerical)
// in case of strings as indices: All indeces are arranged according to alphabetical order. prev() and next() are dependent on them

// EDA Playground link: https://www.edaplayground.com/x/utZp
module tb();
  // declarations
  int assoc_arr1[int];
  int assoc_arr2[string];
  string assoc_arr3[string];
  string assoc_arr4[bit];
  string assoc_arr5[bit [7:0]];
  int index;
  
  // operations regarding assoc_arr1
  initial
    begin
      assoc_arr1 = '{3: 23, 5: 54, 72: 11};
      // Displaying associative array
      $display("Initial elements: %p", assoc_arr1);
      
      // size & num of array
      $display("Size of assoc_arr1 = %0d \n num of assoc_arr1 = %0d",assoc_arr1.size(),assoc_arr1.num());
      
      index = 5;
      // index exists are not
      $display("index 5 exists are not",assoc_arr1.exists(5));
      // deleting an index
      assoc_arr1.delete(5);
      $display("elements after deletion of 5th element");
      foreach(assoc_arr1[i])
        $display("assoc_arr1[%0d]=%0d",i,assoc_arr1[i]);
       
      // Adding some elements
      assoc_arr1[2] = 5;
      assoc_arr1[10] = 15;
      assoc_arr1[25] = 35;
      $display("elements after adding elements");
      foreach(assoc_arr1[i])
        $display("assoc_arr1[%0d]=%0d",i,assoc_arr1[i]);
      
      // First index
      assoc_arr1.first(index);
      $display("First index: %0d",index);
               
      // Last index
      assoc_arr1.last(index);
      $display("Last index: %0d",index);
      
      // Prev index
      index = 10;
      assoc_arr1.prev(index);
      $display("Prev index to index 10: %0d",index);
      
      // Next index
      index = 3;
      assoc_arr1.next(index);
      $display("Next index to index 3: %0d",index);
      
      // deleting array
      assoc_arr1.delete();
      $display("Size of array after deletion: %0d", assoc_arr1.size());
    end
endmodule

/* Output:
# Initial elements: '{3:23, 5:54, 72:11 }
# Size of assoc_arr1 = 3 
#  num of assoc_arr1 = 3
# index 5 exists are not          1
# elements after deletion of 5th element
# assoc_arr1[3]=23
# assoc_arr1[72]=11
# elements after adding elements
# assoc_arr1[2]=5
# assoc_arr1[3]=23
# assoc_arr1[10]=15
# assoc_arr1[25]=35
# assoc_arr1[72]=11
# First index: 2
# Last index: 72
# Prev index to index 10: 3
# Next index to index 3: 10
# Size of array after deletion: 0
*/
