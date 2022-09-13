=begin pedac

*************Problem***************************
initial input:
overall output: returns an array

explicit requirements:
write a method called oddities that takes 1 arg
returns an array
  array contains every other element of array that is passed in
  values should be the 1st, 3rd, 5th etc



implicit requirements:
array can contain integers, letters or be empty
non comma separated elements are treated as one element
an empty array returns an empty array

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
an array is passed to the method
index position is determined
  each_index
delete values at odd index positions
return array with only even index positions

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

def oddities(array)
  output_array = []
  array.each_index {|index| output_array << array[index] if index.even?}
  output_array
  
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
