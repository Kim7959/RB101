=begin
Given an array of integers, count all pairs in that array and return their count.
- Array can be empty or have only one value; in this case return `0`.
- If there are multiple pairs of a certain number, count each pair once.

pairs([1, 2, 5, 6, 5, 2]) # => 2
pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) # => 4
pairs([0, 0, 0, 0]) # => 2

# Problem:
Input: array of integers
Output: integer (representing number of pairs in array)
Rules:
- If there are multiple pairs, count each pair once.
- If input array is empty, return `0`.
- If the input array contains only one value, return `0`.
- Each element in the array can only be part of one pair.
- Pairs don't have to be consecutive

# Examples:
pairs([1, 2, 5, 6, 5, 2]) # => 2
pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) # => 4
pairs([0, 0, 0]) # => 1
pairs([3, 5, 7, 8]) # => 0

# Data Structures:
Input: Array
Output: Integer
Possibly use a hash to keep track of counts?

# Algorithm:
- initialize a hash with a default value of 0:
  keys: elements in the Array
  values: increment by one each time the value occurs in the Array
- clone the array, and get the unique values from the Array
- set the hash keys to the elements of the unique array.
- get the count of each of those elements in the original array.

- initialize a `pair` variable to 0
- divide the count of each element by 2 to get the number of pairs
- add this number to the `pair` variable

- return the `pair` variable
# Code:
=end

def pairs(array)
  counts = array.tally # will need to use each-with_object here. Need to figure that out.
  pair = 0
  counts.each do |elements, count|
    pair = pair + count/2
  end
  pair
end  

p pairs([1, 2, 5, 6, 5, 2])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) # => 4
p pairs([0, 0, 0]) # => 1
p pairs([3, 5, 7, 8]) # => 0
p pairs([2])

# the problem is that tally is not working on my version of ruby, it was introduced in ruby 2.7
# might try this:
#list = ["a", "b", "b", "a", "c", "d", "d", "d", "e"]
# list.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
#=> {"a"=>2, "b"=>2, "c"=>1, "d"=>3, "e"=>1}
# or
# list.group_by { |v| v }.map { |k, v| [k, v.size] }.to_h
#=> {"a"=>2, "b"=>2, "c"=>1, "d"=>3, "e"=>1}

=begin

# 14. Explain what this code returns and how the method works.

arr = [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']]

arr = [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']]
arr.sort

=begin
The return value is `[["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]`. 
This demonstrates how the `sort` method works.

On line 64, the local variable `arr` is initialized to an array object. 

On line 65, `sort` is invoked on the array object referenced by `arr`. To dive deeper, 
`sort` method utilizes the `<=>` spaceship operator to evaluate each element.  
It compares each element in each array to the other elements of the other array.

`sort` uses the return value of the spaceship operator to order the array elements. 
`sort` returns -1, 0, or 1 depending which operand is greater than or less than the other.
For example 'a' <=> 'b' would return 1.  `sort` uses this return value to order the elements that it returns. 

We first look at the first element 'a', the sub-arrays who have the first element 'a' 
will come before the arrays that have the first element `'b'`.  When sorting arrays, we go element by element. 
If all of the elements are identical up to a certain point, the shorter sub-array comes first.

=end