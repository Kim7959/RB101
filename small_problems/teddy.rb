=begin pedac

*************Problem***************************
initial input: string
overall output: string "Teddy is #{age} old!"

explicit requirements:
ask the user for a name
Teddy's age is randomly generated
Teddy's age  should be printed in a sentence
  "Teddy is #{} years old!"
Random number = age and should be between 20 and 200
use Teddy as the name if no name is entered by user



implicit requirements:
age is an integer

*************Examples and Test cases************
restate all test cases given
add edge cases, 0 and empty:
"Mark" => Mark is 69 years old!
"Jojo" => Jojo is 200 years old!

*************Data Structure********************
the steps the data takes in between input 
and output listed above
user input stored in variable name
Randomly generate an integer between 20 and 200
assign the integer to variable age
Use string interpolation to include integer and name in the 
output sentance

************Algorithm*************************
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

puts "What is your name?"
name = gets.chomp

age = rand(20..200)
puts "#{name} is #{age} years old!"