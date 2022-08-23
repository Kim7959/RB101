=begin
write 1 method that takes 1 arg
arg is a positive integer
method retns a list of digit in the number
=end

=begin PEDAC
Problem: input:  positive integer
         output: array
Examples:
  12345 => [1,2,3,4,5]
  7 => [7]
Data Structure:
  input: integer
  output: array of numbers in the integer
Algorithm:
  pass integer to method
  convert integer to string
  split string into strings of characters in array format
  iterate over each element in the array
  code block will convert strings into integers
  and output a new array
  output characters in array format
=end

def digit_list(num)
  num.to_s.chars.map {|char|char.to_i}
end

p digit_list(12345)
p digit_list(44444)