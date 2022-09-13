=begin pedac

*************Problem***************************
initial input:integer assigned to var age
              integer assigned to var retire_age
overall output: "Its current year. You will retire in #{retire_year}"
                " You have only #{years_till_retire} of work to go!""

explicit requirements:

age and retire_age are integers
current year, retire_year, years_till_retire are all integers



implicit requirements:
input lines: "What is your age?"
            "AT what age would you like to retire?"
output is on 2 separate lines
current year should be based on actual year, not preassigned
do not have to validate input
do not take 0 or empty input into account

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
30, 70 => "It's current year. You will retire in #{retire_yea}r"
          "You only have #{years_till_retire} of work to go!"

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
assign age input to var age and convert to integer
assign time input to var retire_age and convert to integer
obtain current_year using Time class
  current_year = Time.now.year
method: retire_year
  take current year and add (retire_age - age)
assign result of retire_year to var retirement_year
method: work_years
  take retirement year and subtract current_year
assign result of work_years to var years_to_go
puts "It's current year. You will retire in #{retirement_year}"
puts "You only have #{years_to_go} of work to go!"


************Algorithm*************************
A. Main Method: retire_year
  1. input: 3 parameters current_year, retire_age, age. all integers
  2. curr_year + (retire_age - age)
  3.output: integer, the year you will retire
B Helper Method 1: work_years
  1.input: 2 parameters retirement_year, current_year
  2. retirement_year - current_year
  3. output: integer, how many year still need to work
C. Helper Method 2
  1.
  2.
  3.


=end

def retire_year(current_year, retire_age, age)
  current_year + (retire_age - age)
end

def work_years_to_go(retirement_year, current_year)
  retirement_year - current_year
end

puts "What is your age?"
age = gets.chomp.to_i
puts "A what age would you like to retire?"
retire_age = gets.chomp.to_i


current_year = Time.now.year

retirement_year = retire_year(current_year,retire_age,age)

years_to_go = work_years_to_go(retirement_year, current_year)

puts "It's #{current_year}. You will retire in #{retirement_year}"
puts "You only have #{years_to_go} of work to go!"

