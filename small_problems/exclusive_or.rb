=begin pedac

*************Problem***************************
initial input: 2 integers
overall output: boolean

explicit requirements:
write a function called xor?
takes 2 arg with .odd? or .even? methods called
returns true if exactly 1 arg is true
otherwise returns false
  if both are true
  if both are false
output is boolean



implicit requirements:
input is integer

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false


*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. input: result of .odd? or .even called on 2 integer, true or false
  2. compare both arg truthy and falsey values
    
  3. output: boolean


=end

def xor?(num1, num2)
  if num1 && !num2 
    true
  elsif !num1 && num2
    true
  else
    false
  
  end
      
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)