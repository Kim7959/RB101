=begin
write method, method takes 2 arg 
input: string, positive integer
output: stirng as many times as integer
=end

=begin PEDAC
Problem: input: one string, one integer
         output: print same string, integer times on separate lines
         One method that takes 2 arg (string, positive int)
Examples:Input: "hello",0 => will print nothing(empty string)
          "hello', 3 => ,
          hello
          hello
          hello
Data structure: Input: string, integer
                Output: string printed integer times
Algorithm:Given string and integer, pass both to method, 
Iterate through code block integer times starting at
0 and ending at integer minus one.

=end

def display_repeat(word, number)
  number.times {puts word}
end

display_repeat("May the force be with you.", 10)