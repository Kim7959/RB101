=begin pedac

*************Problem***************************
initial input: string of integers
overall output: integer

explicit requirements:
cannot use .to_i or Integer()
do not worry about invalid char
  or + - signs
method is named string_to_integer


implicit requirements:
The only char possiible are 0 to 9
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
'4321' => 4321
'570' => 570

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
hash

************Algorithm********************
set constant DIGITS as hash
  mapping '0' to 0, '1' to 1 etc
a string is passed to the method string_to_integer
convert string to array of  string chars (use .chars)
transform array using map
  iterate through each char
  access hash values via DIGITS[char]-uses char as key
  returns new array with char as integer not string
  assign return value to local var digits
  set local var value = 0
  iterate through each number in  digits
    apply formula value = 10 * value + digit
  return value
  

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

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
 
end

p string_to_integer('4321')