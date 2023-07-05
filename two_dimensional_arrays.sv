// Arrays
// Two Dimensional arrays
// EDA Playground link: https://www.edaplayground.com/x/LXjL
module arrays_eg();
  // Method 1:
  int arr1[2:0][4:0];			// Declaration
  initial
    begin
      // Assigning all elements of array at a time
      arr1 = '{'{1,2,3,4,5},'{6,7,8,9,10},'{11,12,13,14,15}};
      $display("%p",arr1);	// %p is format specifier used to print all elements of array.
    end
  
  // Method 2:
  int arr2[3][5];		// Declaration
  int x=1;
  initial
    begin
      // initialising array elements using foreach loop, itterating variable "i","j" will increment automatically.
      // Once have a look on at syntax at itteration variables... it is [i,j] but not [i][j].
      foreach(arr2[i,j])
        begin
          arr2[i][j]=x;
          x=x+1;
        end
      // printing array elements one by one.
      foreach(arr2[i,j])
        begin
          $display("arr2[%0d][%0d] = %0d",i,j,arr2[i][j]);
        end
      $display("%p",arr2[1]);	// Printing all elements of a row
      // printing all elements of a column
      foreach(arr2[i])
        $display("%0d",arr2[i][1]);
    end
  //$display("%p",arr2[][1});	==> Error, not the correct way to print column elements.
endmodule

/*arr1[2:0][4:0]

		 	arr1[][4]	  arr1[][3]	  arr1[][2]	  arr1[][1]	  arr1[][0]
			-------------------------------------------------------------
            |			|			|			|			|			|
			|arr1[2][4]	|arr1[2][3]	|arr1[2][2]	|arr1[2][1]	|arr1[2][0]	|
arr1[2]		| 	0		|	1		|	2		|	3		|	4		|
			|			|			|			|			|			|
			-------------------------------------------------------------
			|			|			|			|			|			|
            |arr1[1][4]	|arr1[1][3]	|arr1[1][2]	|arr1[1][1]	|arr1[1][0]	|
arr1[1]		| 	5		|	6		|	7		|	8		|	9		|
			|			|			|			|			|			|
			-------------------------------------------------------------
			|			|			|			|			|			|
            |arr1[0][4]	|arr1[0][3]	|arr1[0][2]	|arr1[0][1]	|arr1[0][0]	|
arr1[0]		| 	10		|	11		|	12		|	13		|	14		|
			|			|			|			|			|			|
      		------------------------------------------------------------- 
*/
/* Output:
# '{'{1, 2, 3, 4, 5}, '{6, 7, 8, 9, 10}, '{11, 12, 13, 14, 15}}
# arr2[0][0] = 1
# arr2[0][1] = 2
# arr2[0][2] = 3
# arr2[0][3] = 4
# arr2[0][4] = 5
# arr2[1][0] = 6
# arr2[1][1] = 7
# arr2[1][2] = 8
# arr2[1][3] = 9
# arr2[1][4] = 10
# arr2[2][0] = 11
# arr2[2][1] = 12
# arr2[2][2] = 13
# arr2[2][3] = 14
# arr2[2][4] = 15
# '{6, 7, 8, 9, 10}
# 2
# 7
# 12
*/
