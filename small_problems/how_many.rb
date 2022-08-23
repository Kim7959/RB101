=begin
given an array of strings with duplicate elements
write a method
method prints each element alongside the number of occurances
method output string => integer
=end

=begin PEDAC
Problem: input an array of strings with some duplicates, 
assigned to local variable
         output: unique element => integer of occurrences
         words in array are case sensitive
Examples: car => 4
         truck => 3
         SUV => 1
         motorcycle => 2
Data Structure: input: array of strings
                output: string + => + integer
Algorithim: given array of strings wtih duplicates
count the number of times a string occurs
eliminate the duplicates of the strings
push element, count into hash
output: element (string) +'=>' + count(integer)
?? I'm not getting this one. Need to redo later.




=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
count_occurrences(vehicles)