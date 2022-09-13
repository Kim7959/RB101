=begin pedac

*************Problem***************************
initial input: 2 positive integers
overall output: 6 math equations

explicit requirements:
do not validate input
prompt user to enter 2 positive integers
print results of + - * / % and ** using the 2 integers


implicit requirements:
first number is first number in all equations
second number is second number in all equations
result of equations is integer format

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
23, 17 =>
23 + 17 = 40
23 - 17 = 6
23 * 17 = 391
23 / 17 = 1
23 % 17 = 6
23 ** 17 = 14105003956066296826103

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above


************Algorithm*************************
ask for first number input
  save to local var first_num and convert to integer
ask for second number input
  save to local var second_num and convert to integer
puts #{first_num} + #{second_num} = {first_num + second_num}

==> has to be in front of all lines

A. Main Method display_prompt
  1. message
  2.adds ==> to line
  3. ==> message
B Helper Method 1
  1.
  2.
  3.
C. Helper Method 2
  1.
  2.
  3.


=end

def display_prompt(message)
  puts "==> #{message}"
end

display_prompt("Enter the first number:")
first_num = gets.chomp.to_i
display_prompt("Enter the second number:")
second_num = gets.chomp.to_i

display_prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
display_prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
display_prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
display_prompt( "#{first_num} / #{second_num} = #{first_num / second_num}")
display_prompt( "#{first_num} % #{second_num} = #{first_num % second_num}")
display_prompt( "#{first_num} ** #{second_num} = #{first_num ** second_num}")
