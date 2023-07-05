// Arrays
// Multi Dimensional arrays
// EDA Playground link: https://www.edaplayground.com/x/bytz
module arrays_eg();
  // Method 1:
  int arr1[2:0][4:0][1:0] = '{'{'{0,1},'{2,3},'{4,5},'{6,7},'{8,9}},
                              '{'{10,11},'{12,13},'{14,15},'{16,17},'{18,19}},
                              '{'{20,21},'{22,23},'{24,25},'{26,27},'{28,29}}};			// Declaration with initialisation
  initial
    begin
      $display("%p",arr1);	// %p is format specifier used to print all elements of array.
    end
  
  // Method 2:
  int arr2[3][5][2];		// Declaration
  int x=0;
  initial
    begin
      // initialising array elements using foreach loop, itterating variable "i","j" will increment automatically.
      // Once have a look on at syntax at itteration variables... it is [i,j] but not [i][j].
      foreach(arr2[i,j,k])
        begin
          arr2[i][j][k]=x;
          x=x+1;
        end
      // printing array elements one by one.
      foreach(arr2[i,j,k])
        begin
          $display("arr2[%0d][%0d][%0d] = %0d",i,j,k,arr2[i][j][k]);
        end
      $display("%p",arr2[2]);		// Printing whole row
      $display("%p",arr2[2][3]);	// Printing array in slot of particular row
      // printing all elements of a column
      foreach(arr2[i])
        $display("%p",arr2[i][1]);
    end
endmodule

/*arr1[2:0][4:0][1:0]

		 	      arr1[][4]	  arr1[][3]	  arr1[][2]	  arr1[][1]	  arr1[][0]
			    -------------------------------------------------------------
          |			      |			      |	      		|			      |			      |
			    |arr1[2][4]	|arr1[2][3]	|arr1[2][2]	|arr1[2][1]	|arr1[2][0]	|
arr1[2]		|   {0,1}		|	  {2,3}  	|	  {4,5}  	|	  {6,7}  	|	  {8,9}  	|
			    |			      |			      |			      |			      |			      |
			    -------------------------------------------------------------
			    |			      |			      |			      |			      |		      	|
          |arr1[1][4]	|arr1[1][3]	|arr1[1][2]	|arr1[1][1]	|arr1[1][0]	|
arr1[1]		|   {10,11}	|	  {12,13}	|	  {14,15}	|	  {16,17}	|	  {18,19}	|
			    |			      |			      |			      |			      |			      |
			    -------------------------------------------------------------
			    |			      |			      |			      |			      |			      |
          |arr1[0][4]	|arr1[0][3]	|arr1[0][2]	|arr1[0][1]	|arr1[0][0]	|
arr1[0]		| {20,21}	  |	{22,23}	  |	{24,25}  	|	{26,27}  	|	{28,29 } 	|
			    |			      |			      |			      |			      |			      |
      		------------------------------------------------------------- 
*/

/* Ouput:
# '{'{'{0, 1}, '{2, 3}, '{4, 5}, '{6, 7}, '{8, 9}}, '{'{10, 11}, '{12, 13}, '{14, 15}, '{16, 17}, '{18, 19}}, '{'{20, 21}, '{22, 23}, '{24, 25}, '{26, 27}, '{28, 29}}}
# arr2[0][0][0] = 0
# arr2[0][0][1] = 1
# arr2[0][1][0] = 2
# arr2[0][1][1] = 3
# arr2[0][2][0] = 4
# arr2[0][2][1] = 5
# arr2[0][3][0] = 6
# arr2[0][3][1] = 7
# arr2[0][4][0] = 8
# arr2[0][4][1] = 9
# arr2[1][0][0] = 10
# arr2[1][0][1] = 11
# arr2[1][1][0] = 12
# arr2[1][1][1] = 13
# arr2[1][2][0] = 14
# arr2[1][2][1] = 15
# arr2[1][3][0] = 16
# arr2[1][3][1] = 17
# arr2[1][4][0] = 18
# arr2[1][4][1] = 19
# arr2[2][0][0] = 20
# arr2[2][0][1] = 21
# arr2[2][1][0] = 22
# arr2[2][1][1] = 23
# arr2[2][2][0] = 24
# arr2[2][2][1] = 25
# arr2[2][3][0] = 26
# arr2[2][3][1] = 27
# arr2[2][4][0] = 28
# arr2[2][4][1] = 29
# '{'{20, 21}, '{22, 23}, '{24, 25}, '{26, 27}, '{28, 29}}
# '{26, 27}
# '{2, 3}
# '{12, 13}
# '{22, 23}
*/
