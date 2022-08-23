=begin
write a method that takes 1 arg
input:arg is an array containing integers
output: average of all numbers, integer
array will never be empty
numbers are always positive integers
=end

=begin PEDAC
Problem: input: one array, containing integers
         output: integer, the avg of all # in ary
Examples:
      [1,6] => 3 (not 3.5)
      [1,2,3] => 2
Data Structure:
    input: array
    output: integer
Algorithm
Given an array containing positive integers
sum all the numbers
then divide by # elements in array
output average as integer using puts outside method

=end


def average(numbers)
  sum = numbers.reduce {|sum,number| sum + number}
  sum/numbers.count
end

puts average([1,6])