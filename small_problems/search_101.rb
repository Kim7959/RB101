=begin pedac

*************Problem***************************
initial input: 6 integers from user
overall output:string that includes and integer and array

explicit requirements:
Ask user for 6 numbers, one at a time
determine if the last number entered
  appears amongst the first 5 numbers entered
Print a message
  "The number #{num} appears in #{array}" OR
  "The number #{num} does not appear in #{array}"
array in message includes input numbers 1-5 but not 6



implicit requirements:
only positive integers allowed

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
25, 15, 20, 17, 23, 17
=> The number 17 appears in [12,15,20,17,23]

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
convert user input from string to integer
add user input 1 to 5 to an array



************Algorithm*************************
ask user for numbers 5 times with unique verbage
convert input from string to integer
add input numbers 1-5 to array and assign to local var input_array
  add numbers to array in order received
ask user "Enter the last number:"
compare this number to the array containing input 1-5
if array includes input number
  puts The number #{num} appears in #{array}"
if array does not include input number
  puts "The number #{num} does not appear in #{array}"
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

input_array = []
puts "Enter the 1st number:"
num1 = gets.chomp.to_i
puts "Enter the 2nd number:"
num2 = gets.chomp.to_i
puts "Enter the 3rd number:"
num3 = gets.chomp.to_i
puts "Enter the 4th number:"
num4 = gets.chomp.to_i
puts "Enter the 5th number:"
num5 = gets.chomp.to_i
puts "Enter the last number:"
last_num = gets.chomp.to_i

input_array.push(num1, num2, num3, num4, num5)

if input_array.include?(last_num)
  puts "The number #{last_num} appears in #{input_array}."
else
  puts "The number #{last_num} does not appear in #{input_array}."
end
