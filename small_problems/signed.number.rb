=begin pedac

*************Problem***************************
initial input: string, containing integers
overall output: integer

explicit requirements:
write a method named string_to_signed_integer
string may have a leading + or -
  if the first char is +
    return positive number
  if the first char is -
    return negative number
  if no sign is given
    return positive number
string will always contain a valid number
you cannot use converstion methods
can use string_to_integer method from previous lesson



implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
'4321' => 4321
'-570' => -570
'+100' => 100

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above


************Algorithm*************************
string is passed as an arg to the method
  string_to_signed_integer
case string to look at first char
  when - then  then neg num returned
    pass string[1..-1] to string_to_integer method
  when + then positive num return
    pass string[1..-1] to string_to_integer method
  else blank, positive num return
    pass string to string to integer method

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

DIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
 
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end


p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')