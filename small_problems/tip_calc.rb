=begin pedac

*************Problem***************************
initial input: 2 integers as strings, bill and tip
overall output:2 floats, tip_dollars and total_dollars

explicit requirements:
Prompt user for a bill amt and a tip rate
tip rate is an integer, not as a percentage
compute the tip in dollars
compute total amount in dollars
display the tip in dollars and the total amt in dollars (floats)
  rounded to 1 trailing digit



implicit requirements:
no input validation
no need to handle 0
assume tip is entered as integer

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
bill 200, tip% 15 =>
  The tip is $30.0
  The total is $230.0

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
convert both user inputs (bill and tip) to floats
method-tip_total-
  assign result to var tip_dollars
method-bill_total- 
  assign result to var total_dollars
output "The tip is#{tip-dollars}."
      "The total is #{total_dollars}"
        on separate lines

************Algorithm*************************
A. Main Method-tip_total
  1.input:float-tip as %
  2. 2 parameters- bill and tip
  2. (bill * tip/100).round(1)
  3. output: float-total $amt of tip
B Helper Method 1-bill_total
  1.input: float
  2. 2 parameters bill and result of method tip_total
  2. (bill + method_tip_total).round(1)
  3.output: float- total$ amt to be paid (tip plus bill)
C. Helper Method 2
  1.
  2.
  3.


=end


def tip_total(bill, tip)
  (bill * (tip/100)).round(1)
end

def bill_total(bill,tip_dollars)
  (bill + tip_dollars).round(1)
end

puts "What is the bill amount?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip_dollars = tip_total(bill, tip)
total_dollars = bill_total(bill, tip_dollars)

puts "The tip is #{tip_dollars}"
puts "The total is #{total_dollars}"

  


