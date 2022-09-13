=begin pedac

*************Problem***************************
initial input:
overall output:

explicit requirements:
write a method that accepts 1 arg
method returns true if arg = string
  string can be numbers or letters
  returns false otherwise
word case matters
spaces matter and would return false
punctuation matters and would return false


implicit requirements:


questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method palindrome?
  1. input string
  2. checks if string.reverse == string
  3. output true or false
B Helper Method 1
  1.
  2.
  3.
C. Helper Method 2
  1.
  2.
  3.


=end

def palindrome?(string)
  string == string.reverse
end 

p palindrome?('madam')