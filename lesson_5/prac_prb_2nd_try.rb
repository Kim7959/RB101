=begin prb 1 pedac
given an array of number strings
order array by decending numeric value
algorithm:
use sort_by
trans criteria: num.to_i

=end

# arr = ['10', '11', '9', '7', '8']
# p arr.sort {|a,b| b.to_i <=> a.to_i}

=begin prb 2 pedac
order 2 dim array based on year of publication
order ascending
algortithm:
given array containing 4 hashes
sort by value of :published

# =end
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]
# books.sort_by {|inner_hash| inner_hash[:published].to_i}

=begin problem 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0) or hsh[:third].keys[0]

=end

=begin prob 4
find the 3, and change it to 4

arr1 = [1, [2, 3], 4]

arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

hsh2[['a']][:a][2] = 4

=begin prb 5 pedac
*************Problem***************************
initial input: 2 dim hash
overall output: integer

explicit requirements:
return the total age of just the MALE members


implicit requirements:
ignore the female members

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
initialize local var total_age = 0
use select to iterate over hash
  if gender == male
    add age to total_age

=end


# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_age = 0

# munsters.each do |_, details|
#   if details["gender"] == "male"
#     total_age += details["age"]
#   end
# end

# p total_age

=begin prb 6 PEDAC


*************Problem***************************
initial input: 2 dim hash
overall output: string

explicit requirements:
print out the name, age and gender of each fam member
  in this format: 
  (Name) is a (age)-year-old (male or female).

implicit requirements:
  string does not have quotation marks around it
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
iterate over hash using each
  access name using key
  access age with key-value reference
  access gender wtih key-value reference
  use puts to output:
  (Name) is a (age)-year-old (male or female).
# =end

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
# end

=begin prb 7 What are the final values of `a` and `b`?

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

on line 1 local variable `a` is initialized and references the integer 2
on line 2 local variable `b` is initaialized and refrences the array  [5, 8]
one line 3 local variable `arr` is initialized and references [a, b]
  this evaluates to [2, [5, 8]]. 
on line 4 the first element in arr is reassigned to `a` incremented by 2. 
  arr now evaluates to:  arr =[[4,[5,8]]. The original 2 dimensional array is mutated.
  However, `a` still references the integer 2 because integer 2 is an immutable object. 
  Changing `a` inside of `arr` does not change the value of `a` because `a` references
  an immutable object.
on line 5 the 1st element of the 2nd element of `arr` is accessed and decrimated by -a.
  `a` still references 2, and because 5-2 == 3, arr is now mutated and references
    arr =[[4,[3,8]]. The array [5,8] is a mutable object, so it is mutated inside `arr`
    and this is reflected in `b` now equaling [3,8] because both local var `b` and the `b` 
    inside the arr both reference the same object.
In the end, `a` = 2 and b =  [3,8]
=end

=begin prb 8
must use .each
output all vowels from strings
input: hash
output: string
alg:
initiate local var vowels = 'aeiou'
use each to iterate over hash
  use each to iterate over subarray
  use each to iterate over the array of string chars
    if vowels includes the string char
      output char

  
=end

  
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# vowels = 'aeiou'
# hsh.each do |_, subarray|
#   subarray.each do |string|
#     string.chars.each do |character|
#       if vowels.include?(character)
#       puts character
#       end
#     end
#   end
# end

=begin prb 9
  retn new array of same structure but with elem of sub arr
    ordered numberically or alphabetically descending
alg:
iterate over arr to access each subarray
sort each subarray descending
return new array, same structure
=end 


# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# arr.map do |subarray|
#   subarray.sort {|a,b| b <=> a}
# end

=begin prb 10
do not modify orig array
use map to return new array identical in structure
but each integer is incremented by one
alg: 

use map to iterate over outer array
  use map to iterate over inner array
    increment each value by one
return new array
=end

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
#   incremented_hash = {}
#   hash.map do |key,value| 
#   incremented hash[key] = value + 1
#   end
#   incremented_hash
# end

=begin prob 11
use a combo of methods including
  select or reject
return new array identical in structure
  but only containing integers that are 
  mult of 3
  
alg:
use map to transform outer array
use select to choose integers that are mult of 3
   selection criteria: integer % 3 ==0
=end

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# arr.map do |subarray|
#   subarray.select do |integer|
#     integer % 3 == 0
#   end
# end

=begin prb 12
do not use Array#to_h method
write code that will return a hash
  key is first item in each sub arry
  value is 2nd item in each sub arr
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

alg:


initialize local var hash and set to empty hash
use each to iterate over hash
  using element assignment, 
    assign 1st elem in subarray as the key and
    the 2nd elem in subarray as the value (in new_hash)
  
  
=end

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# new_hash = {}
# arr.each do |subarray|
#   new_hash[subarray[0]] = subarray[1]
# end

# p 

=begin prb 13
P: input: 2 dim array
    output: 2 dim array
  return a new array
    new array is same structure as given array
    but inner arrays are ordered logically
    by ony looking at the ODD numbers they contain
    each subarray contains at least 2 odd numbers
    [1,9], [1,7], [1,3], [1,5,9]
      => [1,3], [1,5,9], [1,7], [1,9]
      it is sorted ascending
    output should be: => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
A: use sort by to sort each subarray
    iterate over subarray using select
      select odd numbers
      sort ascending

    
=end

# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# arr.sort_by do |subarray|
#   subarray.select do |integer|
#     integer.odd?
#   end
# end

=begin prb 14
P: input: hash
  output: array
  given a hash
  return array
    array contains colors of fruits in UPPERCASE
      only fruits should have colrs upcased
    and the sizes of veg Capitalized
      only veg should have sizes capitalized
    expected return value is an array
      [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
A: iterate over hsh
    select colors: value and size: value
    upcase colors: value and Capitalize size: value
=end

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# hsh.map do |fruit, details|
#   if details[:type] == 'fruit'
#     details[:colors].map do |color|
#         color.capitalize
#       end
      
#   elsif details[:type] == 'vegetable'
#     details[:size].upcase
#   end
# end

=begin prb 15
P: input: an array of 3 hashes
    output: an array of hashes
  final array contains only the hashes where
    ALL the integers are even
A:
use select to iterate over the 3 inner hashes
use select to iterate over value array
  if value includes all even numbers
    return true
    



# =end
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr.select do |inner_hash|
#   inner_hash.all? do |key, array|
#     array.all? {|num| num.even?}
#   end
# end
  
=begin prb 16
generate random number in this format:
  "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
write a method, no parameters
  returns one UUID when called

=end

def generate_UUID
  characters = []
  (0..9).each {|digit| characters << digit.to_s}
  ('a'..'f'.each {|digit| characters << digit})
  uuid = ""
  sections =[8,4,4,4,12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample}
    uuid += '-' unless index >= sections.size -1
  end
  uuid
  
end

generate_UUID


    

  










  


  