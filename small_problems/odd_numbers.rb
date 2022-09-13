=begin pedac

*************Problem***************************
initial input: none
overall output: integers 

explicit requirements:
print all odd numbers from 1 to 99 inclusive
each number on a separate line


implicit requirements:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:

1
3
5
7
9

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
establish range
convert to array


************Algorithm*************************
numbers = range(1..99)
convert range to array
select odd numbers
output odd numbers on separate lines using puts
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

numbers = (1..99).to_a
puts numbers.select {|num| num.odd?}

#thier solution
value = 1
while value <= 99
  puts value
  value += 2
end