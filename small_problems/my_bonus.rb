=begin
Given 2 arguments: a postive integer and a boolean
input: a positive int and a boolean
write a method that takes 2 arg
If boolean is true, calc bonus
bonus == 50% of salary
If boolean is false, bonus ==0
output: bonus, as an integer
=end

=begin PEDAC
Problem: input: a pos integer and a boolean
         output: integer
Examples: 2800, true => 1400
          1000, false => 0
Data Structure: input positive int and boolean
                output integer
Algorithm: given a positive int and a boolean value
if boolean false, return 0
if boolean true, calc bonus
bonus = positive int/2
output result of method in method call using puts
=end

def calc_bonus(salary, bonus)
  bonus ? (salary/2) : 0
end


puts calc_bonus(1000, true)
puts calc_bonus(1000, false)

