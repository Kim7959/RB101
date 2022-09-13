=begin pedac

*************Problem***************************
initial input: integer
overall output: integer

explicit requirements:
write a method called multisum
  takes 1 arg, an integer
calculates all multiples of 3 and 5
  that lie between 1 and the integer
then adds all the multiples
output an integer, the sum of all multiples
number passed in is an integer > 1



implicit requirements:

a multiple is a number that is the product of a given number and some
   other number
Multples of 3 : 3 6 9 12 15 18...
Multiples of 5: 5 10 15 20 25 30...

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
3 => 3
5 => 8
10 => 33
1000 => 234168

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
array

************Algorithm*************************
integer is passed as an arg to the method
result_array initialized to empty
local var mult_3 = all mult of 3
  3 * all whole numbers <= integer
  mult of 3= 3*1, 3*2, 3*3...
  3 * (1..integer)

include all mult of 3 between 1 and integer
include all mult of 5 between 1 and integer
add them to result_array
sum all elem in result_array
output sum as integer
A. Main Method
  1.
  2.
  3.
B Helper Method 1
  1.
  2.
  3.
C. Helper Method 2
  1.
  2.
  3.
** skipped this problem too hard

=end

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

p multisum(5)
  
  
  
  
  
