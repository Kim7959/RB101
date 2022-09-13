=begin pedac

*************Problem***************************
initial input: integer, a year
overall output: boolean

explicit requirements:
write a method that takes one arg (a year)
method is called leap_year?
calculates whether that year is a leap year or not
leap years occur in every year that is evenly divisible by 4
  unless the year is also evenly divisible by 100
if the year is evenly divisible by 100
  then it is not a leap year
  unless the year is evenly divis by 400
This applies to any year > 0
return true if year is a leap year
return false if year is not a leap year



implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
integer passed to method
calculate if leap year
if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
   then its a leap year
  if year % 4 == 0 && year %100 != 0
    then its a leap year
    return true
everything else == not a leap year
  return false

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

def leap_year?(year)
  if (year % 400 == 0) ||  (year % 100 != 0) && (year% 4 == 0)
    true
  else
    false
  end
  
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100) 
p leap_year?(2400)
p leap_year?(240000) 
p leap_year?(240001) 
p leap_year?(2000) 
p leap_year?(1900) 
p leap_year?(1752) 
p leap_year?(1700) 
p leap_year?(1)
p leap_year?(100) 
p leap_year?(400)