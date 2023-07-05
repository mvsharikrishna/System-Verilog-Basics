// Packed and Unpacked Arrays
// if size of array is defined before variable, it is packed array. Eg: bit [3:0]a;
// if size of array is defined after variable, it is unpacked array. Eg: bit a[3:0];

// Packed arrays are same as vectors
// unpacked arrays are same as one, two and multi dimensional arrays.

// Packed and unpacked array combination

// EDA Playground Link: https://www.edaplayground.com/x/VYcn 
module tb();
  bit [4:0]arr1[2:0][1:0];
  bit [3:0][4:0]arr2[2:0][1:0];
  integer x=0;
  initial
    begin
      foreach(arr1[i,j])
        begin
          arr1[i][j]=x;
          x=x+1;
        end
      foreach(arr1[i,j])
        $display("arr1[%0d][%0d]=%b",i,j,arr1[i][j]);
    end
  int y=0;
  initial
    begin
      foreach(arr2[i,j,k])
        begin
          arr2[i][j][k]=y;
          y=y+1;
        end
      foreach(arr2[i,j,k])
        $display("arr2[%0d][%0d][%0d]=%b",i,j,k,arr2[i][j][k]);
    end
endmodule

/* Output: 
# arr1[2][1]=00000
# arr1[2][0]=00001
# arr1[1][1]=00010
# arr1[1][0]=00011
# arr1[0][1]=00100
# arr1[0][0]=00101
# arr2[2][1][3]=00000
# arr2[2][1][2]=00001
# arr2[2][1][1]=00010
# arr2[2][1][0]=00011
# arr2[2][0][3]=00100
# arr2[2][0][2]=00101
# arr2[2][0][1]=00110
# arr2[2][0][0]=00111
# arr2[1][1][3]=01000
# arr2[1][1][2]=01001
# arr2[1][1][1]=01010
# arr2[1][1][0]=01011
# arr2[1][0][3]=01100
# arr2[1][0][2]=01101
# arr2[1][0][1]=01110
# arr2[1][0][0]=01111
# arr2[0][1][3]=10000
# arr2[0][1][2]=10001
# arr2[0][1][1]=10010
# arr2[0][1][0]=10011
# arr2[0][0][3]=10100
# arr2[0][0][2]=10101
# arr2[0][0][1]=10110
# arr2[0][0][0]=10111
*/
