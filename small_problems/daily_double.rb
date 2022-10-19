=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.
=end
=begin
=begin pedac

*************Problem***************************
initial input: string
overall output: new string

explicit requirements:
write a method that takes 1 Argument
  arg is a string which can be more than one word
method is named crunch
method returns new string with all consecutive duplicate characters
  collapsed into a single char.
cannot use squeeze or squeeze!
if given a single letter/number, return the single letter/number
if given an empty string, return an empty string
no non alphanumeric chars except spaces



implicit requirements:
chars can be either letters or numbers

questions: How to treat capital letters?

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
- possibly use array for comparison, in addition to string inputs

************Algorithm*************************
A. Main Method
  1. object is to turn string argument into a new String
  2. take the argument, and iterate through the letters to compare thier values.  (map/split?) 
    Change to array for iteration
  3. remove duplicate values (in-built array method?)
    if letter is equal to the next letter, then delete first letter
  4. return the resulting string and assign to local var new_string
=end



def crunch(str)
  index = 0
  new_string = ''

  loop do
    current_char = str[index]
    if str[index] != str[index + 1]
      new_string += current_char
   
    end
    index += 1
    break if index == str.size
  end
  new_string
end
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''