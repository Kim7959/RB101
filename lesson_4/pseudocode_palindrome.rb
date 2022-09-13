=begin pedac

*************Problem***************************
initial input: a string
overall output: an array containing strings

explicit requirements:
write a method called 'palindrome_substrings'
method returns all the substrings that are palindromes
from a given string.
substrings are returned as part of an array
palindrome words are case sensitive
  'abBa' is not a palindrome



implicit requirements:
a palindrome is a substring that is read the same both forwards
  and backwards
substrings are >= 2 char in length
an empty string input
  returns an empty array

questions:
will inputs always be strings?
how are upper case characters treated?

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
array

************Algorithm*************************
String is passed as arg to 'palindrome_substrings' method

palindrome_result_array initialized to empty array
  this array will contain all palindromes >= 2 char in length
  

  
def method named create_substrings(1 arg-string)
    substring_array initialized to empty array
        this array will contain all the substrings>= 2 char in length
          generate substrings of length 2 to  length == string.size
    initialize starting_index local var init to 0
    Outer loop: iterate over starting_index 
            start at index 0 to string.length -2
          end
    Initialize num_chars local var init to 2
        this is the length of teh substrings
        Inner loop: iterates over num_chars
             iterate over length 2 to string size - index position. 
              generate substrings
              return list of substrings in array named substring_array
            end inner loop
      end outer loop
      increment starting_index variable by 1
      return substring_array
end method

def palindrome method([array of strings])
input: an array of strings
output: an array of substrings that are palindromes
iterate over substring_array
  compare each substring from create_substrings to string.reverse
    if string == string.reverse then
      add to palindrome_result_array
    stop when index > string.size
output palindrome_result_array
end
  

  
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

def create_substrings(string)
  substring_array = []
  starting_index = 0
  loop do
    
  end
  
  
  
  
  
  
  
end

