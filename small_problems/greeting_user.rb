=begin pedac

*************Problem***************************
initial input: string. User input their name
overall output: string.

explicit requirements:
If user enters name plus !, output is in all caps
  "Hello #{name}"
if user enters name, output is in standard case
  "HELLO #{name}. WHY ARE WE SCREAMING?"
  
implicit requirements:
dont validate input
dont consider empty values

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
Bob => "Hello Bob."
Bob! => "HELLO BOB. WHY ARE WE SCREAMING?"

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above


************Algorithm*************************
puts "What is your name?"
user input assign to local var name
check if name includes !
  if yes, output in call caps
    remove ! from name
    change name to all upcase
    output:
    "HELLO #{name}. WHY ARE WE SCREAMING?"
  if no, ouput regular case
  "Hello #{name}."

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

if name[-1] == '!'
  name = name.chop.upcase
  puts  "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
    