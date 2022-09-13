=begin pedac

*************Problem***************************
initial input: string
overall output: returns boolean

explicit requirements:
write a method that takes 1 arg
method is called real_palindrome?
returns true if string is a palindrome
returns false if string not a palindrome


implicit requirements:
case inssensitive
ignore non alphanumeric char

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
string passed to method
string downcase
ifnore punctuation
check if string == string.reverse
A. Main Method= real_palindrome?
  1. input: string
  2. check if string = string.reverse
  3. output boolean
B Helper Method 1
  1.
  2.
  3.
C. Helper Method 2
  1.
  2.
  3.


=end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  if string == string.reverse
      true
  else
      false
  end
  
end

p real_palindrome?('madam') 
p real_palindrome?('Madam')     # (case does not matter)
p real_palindrome?("Madam, I'm Adam") # (only alphanumerics matter)
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 