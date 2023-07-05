// Arrays
// One Dimensional arrays
module arrays_eg();
  // Method 1:
  int arr1[2:0];		// Declaration
  initial
    begin
      arr1= '{1,2,3};	// Assigning all elements of array at a time
      $display("%p",arr1);	// %p is format specifier used to print all elements of array.
    end
  
  // Method 2:
  int arr2[2:0];		// Declaration
  initial
    begin
      arr2[2]=22;		// Assigning values to indexes of arrays one by one
      arr2[1]=25;
      arr2[0]=41;
      // printing array elements one by one, itterating variable "i" will increment automatically.
      foreach(arr2[i])
        begin
          $display("arr2[%0d] = %0d",i,arr2[i]);
        end
    end
endmodule
