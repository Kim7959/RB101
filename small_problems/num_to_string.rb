=begin pedac

*************Problem***************************
initial input: integer
overall output: string

explicit requirements:
write a method called integer_to_string
  takes one arg, a integer
integer can be positive or zero
convert integer to string representation
cannot use conversion methods



implicit requirements:
432 => '4321'
0 => '0'
5000 => '5000'

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above


************Algorithm*************************
itialize DIGITS to array containing 0-9 as string
string is passed to method
result variable initialized to empty
loop 
  number, remainder = number.divmod(10
  result.prepend(DIGITS))
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


=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
