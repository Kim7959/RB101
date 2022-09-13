=begin pedac

*************Problem***************************
initial input: integer (the year)
overall output: string (the century)

explicit requirements:
write a method that takes 1 arg
method is called century
  arg is an integer which is a year
  integer >= 1 character
  integer is assigned to a particular century
    ex: 20th, 21st, 1st, 3rd century
  returns a string of corresponding century
    



implicit requirements:
1801-1900 is 19th century
1901-2000 is 20th century
2001-3000 is 21st century

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm
integer (year) is passed to method
convert year to century using this formula:
  divide year by 100
  drop the decimal
  add 1
  convert to string
if century ends with 
1 => st
2 => nd
3 => rd
10 11 12 => th
0,4,5,6,7,8 or 9  -th
append to century
return century plus suffix

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

def century(year)
  century = (year / 100) + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end


  
def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
  
  
  
  


p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)