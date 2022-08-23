=begin
write a method that takes 1 arg
arg is a positive integer
return a string of alternating 1 and 0
  start with 1 not 0
  whose length is integer value
output return value during method call
=end 

=begin PEDAC
Problem: input: a positive integer
        output: a string
Examples: 6 => '101010'
          4 => '1010'
Data Structure: input: integer
                output: string
Algorithm: given a string
??cant figure out need to come bck


def stringy(number)
  binary = []

  number.times do |index|
    number = index.even? ? 1 : 0
    binary << number
  end

 p binary.join
end

stringy(6)