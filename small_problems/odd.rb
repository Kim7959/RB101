=begin
write 1 method that takes 1 integer as an arg
integer may be positive, negative , or 0
method returns true if absolute value of integer is odd
mthod returns false if absolute value of integer is even
output result (true or false)
=end

=begin PEDAC
Problem: input one integer
        output boolean
        integer may be positive, negative or 0
        method returns true if abs value of int is odd
        method returns false if abs value of int is even
        output result using puts and method call
        not allowed to use odd? or even? in solution
Examples:
2 => false
3 => true
-2 => false
-3 => true
0 => false
Algorithim:
given an integer
convert integer into absolute value of integer
determine if odd or even
=end

def is_odd?(number)
  number = number.abs
  number % 2 != 0
end

puts is_odd?(10)
puts is_odd?(0)
puts is_odd?(-25)