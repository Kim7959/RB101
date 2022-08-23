=begin
write a method that takes 1 arg (string)
creates new string that has word order reversed
returns new string
output to screen on own line, outside of method
=end
=begin PEDAC
Problem: Input- one string with mult words
         Output- new string with word order reversed
Examples: 'hello world' => 'world hello'
          'See you later' => 'later you See'
          '' => ''
          "     " => '    '
          Data Structure: input: string
                output: string
Algorithm:
  Given one string
  split string at space between words
  return array of words
  reverse the order of the words
  convert from array to string
  output string using puts outside method




=end

def reverse_sentence(sentence)
 p sentence.split.reverse.join(' ')
  
end

reverse_sentence("May the force be with you!")
reverse_sentence("Hello there!")
reverse_sentence("     ")