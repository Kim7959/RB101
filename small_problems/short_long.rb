=begin pedac

*************Problem***************************
initial input: 2 strings of diff lengths
overall output: returns string

explicit requirements:
write a method that takes 2 arg (both strings)
method is called short_long_short
determine which string is longer
concatenates short + long + short strings
all strings are of diff lengths

implicit requirements:
if string is empty, it is ignored

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
2 strings of diff lengths passed to method
determine which is shorter than the other
if string is empty
  return only the other string
assign short string to local var short
assign long string to local var long
concatenate: short + long+ short
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

def short_long_short(string1, string2)
  string1.delete if string1.empty? 
  string2.delete if string2.empty?
  if string1.length > string2.length
    long = string1
    short = string2
  elsif string2.length > string1.length
    long = string2.strip
    short = string1.strip
  end
  
  short + long + short
  
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')