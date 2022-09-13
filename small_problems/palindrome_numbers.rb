=begin pedac

*************Problem***************************
initial input: integer
overall output: returns boolean

explicit requirements:
write a method, takes one arg
  called palindromic_number?
returns true if integer is palindromic
  otherwise returns false



implicit requirements:
integer format, not string
only integers allowed
integers can be of any length >= 1

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
integer is passed to method
integer converted to string
if string.reverse == string
return true
else return false
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

def palindromic_number?(integer)
  integer = integer.to_s
  if integer == integer.reverse
    true
  else
    false
  end
end

p palindromic_number?(34543)
p palindromic_number?(123210) 
p palindromic_number?(22) 
p palindromic_number?(5)