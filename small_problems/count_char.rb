=begin pedac

*************Problem***************************
initial input: string consisting of >= 1 word
overall output: string containing integer

explicit requirements:
ask user for input of a word or multiple word
calculate the number of char
  spaces are not counted as char
  apostrophes and commas are counted
output There are #{integer} characters in "#{word}"


implicit requirements:
input words can include apostrophe and comma

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
walk => There are 4 characters in "walk".
walk, don't run => There are 13 characters in "walk, don't run"

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
string

************Algorithm*************************
ask user for input: "Please write word or multiple words:"
assign input to local var words
count char: assign to local var integer
  words.delete space. size
output There are #{integer} characters in "#{words}"
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

puts "Please write word or multiple words:"
words = gets.chomp
integer = words.delete(' ').size

puts "There are #{integer} characters in \"#{words}\"."

