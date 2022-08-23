=begin write a method that takes 1 arg (string)
string contains >= 1 word
return same string with words >= 5 char reversed
leave words with < 5 characters as is
strings have letters and spaces
include spaces when present
output new string
=end

=begin PEDAC
Problem: input: one string with >= 1 word
         output: new string with words >= 5
         char with char reversed
Examples:
        'Professional' => 'lanoisseforP'
        'Walk around the block' => 'Walk dnuora the kcolb'
Data Structure: input: string
                output: string
Algorithm:
Given one string with >= 1 word
split string into separate words, make new array and 
assign to new variable
iterate through each element in ary
if element length >= 5 char, reverse the order of char
join array into a string
puts method during method call
=end


def reverse_words(sentence)
  sentence = sentence.split
  sentence.each do |element|
    if element.length >= 5
      element.reverse!
    elsif element.length < 5
      element
    end
  end
  sentence.join(' ')
  
end

puts reverse_words("May the force be with you")
puts reverse_words("Hello there")
