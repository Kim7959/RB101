=begin pedac

*************Problem***************************
initial input: an array of integers
overall output: an array of integers

explicit requirements:
write a method called running_total
method takes one arg, an array of integers
method returns an array with the same number of
  elem, but each elem has the running total


implicit requirements:
an empty array returns an empty array
an array of 1 elem returns an array
  with the same element

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
[2,5,13] => [2,7,20]
[14,11,7,15,29] => [14,25,32,47,67]
[3] => 3
[] => []
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
an array is passed as arg to the method
result_array init to empty
set total_num = 0 
iterate through array
add each elem to previous element
  and put the sum into a result_array
output result array
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

# This returns a new array

def running_total(array)
  result_array = []
  total_num = 0
  array.each do 
    |num| result_array << total_num += num
    
  end
  result_array
  
end

#this returns same array

def running_total(array)
  total_num = 0
  array.map {|num| total_num += num}
end





p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])