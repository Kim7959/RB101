=begin pedac

*************Problem***************************
initial input: integer as string > 0
overall output: string that includes integer

explicit requirements:
Ask for user to input an integer > 0
Ask for user to enter 's' for sum, 'p' for product
calculate the sum or product of all integers
  between 1 and the entered integer
output type of calc (sum or product)
  result of calculation (integer), 
  range of calc ( integer and integer)

implicit requirements:
only integer input and result allowed
input validation not needed

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
5, s =>
  The sum of the integers between 1 and 5 is 15.
6,p =>
  The product of the integers between 1 and 6 is 720.

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
convert string to integer for number user input

************Algorithm*************************
user input string > 0 assigned to local var number
user input type of calc ('s' or "p'), assigned to local var calculation
if calculation == 's'
    add_together method
    assign to local var add_sum
  output: "The sum of the integers between 
  1 and #{number} is #{add_sum}"
if calculation == 'p'
  multiply_together method
    assign to local var multiply_sum
    output: "The product of the integers between 1 
    and #{number} is #{multiply_sum}"

  
A. Main Method multiply_together
  1. input: integer input by user
  2. multiply 1 upto input integer together
  3. output: integer
B Helper Method 1 add_together
  1. input: integer inut by user
  2. add 1 upto input integer together
  3. output: integer
C. Helper Method 2
  1.
  2.
  3.


=end



def multiply_together(num)
  total = 1
  1.upto(num) { |value| total *= value }
  total
end

def add_together(num)
   total = 0
  1.upto(num) { |value| total += value }
  total
end
  
puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
calculation = gets.chomp

if calculation == 's'
 add_sum = add_together(number)
  puts "The sum of all integers between 1 and #{number} is #{add_sum}"
elsif calculation == 'p'
  multiply_sum = multiply_together(number)
  puts "The product of the integers between 1 
    and #{number} is #{multiply_sum}"
end
  
  
  
  
