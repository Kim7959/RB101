=begin pedac

*************Problem***************************
initial input:
overall output:

explicit requirements:
write a method named square
  takes one arg
use method from prior problem
squares the arg
ex: square(5) => 25
    square(-8) => 64



implicit requirements:


=end

def multiply(num1, num2)
  num1 * num2
end

def square(num1)
  multiply(num1,num1)
end

p square(5)