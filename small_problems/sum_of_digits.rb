=begin
write a method that takes 1 arg
input: positive integer
output: integer, sum of digits of original integer
print output to screen during method call
=end

=begin PEDAC
Problem: input: a positive integer
         output: a postive integer
Examples: 23 => 5
         496 => 19
Data Structure: input integer
               output integer
Algorithm:
   given a positive integer of >=1 digit in length
   convert integer into string and then
   into array and assign to var
   split string into individual char
   iterate through each char
   convert each char to integer
   add char together
   output sum to screen during method call
=end 
         

def sum(integer)
   sum = 0
   string_digits = integer.to_s.chars
   string_digits.each do |string_digits|
     sum += string_digits.to_i
    end
    sum
end

puts sum(23)
