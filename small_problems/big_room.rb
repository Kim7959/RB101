=begin pedac

*************Problem***************************
initial input:  2 integers
overall output: float in a string

explicit requirements:
Ask user for length and wideth of a room in meters
calculate the area of the room in both sq meters and sq ft
do not validate the input
display the area in both sq m and sq ft


implicit requirements:
input is integer, output is float
conversion factor: 1 sq m == 10.7639 sq ft
don't worry about input == 0
output of area conversion is a float rounded to 2 digits
*************Examples and Test cases************
restate all test cases given
add edge cases, 0 and empty:
20, 10 => The area of the room is 200.0 square meters
(2152.78 square feet)
10, 7 => The area of the room is 70.0 square meters (753.47 
square feet)


*************Data Structure********************
the steps the data takes in between input 
and output listed above

convert input from string to integer
store room length in local var length
store room width in local var width
method:Multiply length * width to get area in sq meters
store result as local var area
method:convert area_meters to area_feet and store in local var meters_to_feet
print "The area of the room is #{area_meters} square meters
(#{area_feet} square feet)"


************Algorithm*************************
A. Main Method-meters_to_feet
  1.input-integer- area of room in meters (local var area)
  2. area_meters * 10.7639
  3.output-float area of room in feet rounded to 2 digits
B Helper Method 1-area_meters
  1.input: 2 integers, length and width in meters
  2.length * width
  3.output: area of room in meters rounded to 2 digits
C. Helper Method 2
  1.
  2.
  3.


=end

puts "Please enter the room width in meters:"
width = gets.chomp.to_f
puts "Please enter the room length in meters:"
length = gets.chomp.to_f


def area_meters(length, width)
  (length * width).round(2)
end

def meters_to_feet(area_meters)
   (area_meters * 10.7639).round(2)
end

area = area_meters(length, width)
feet = meters_to_feet(area)


puts "The area of the room is #{area} square meters. (#{feet} square feet)"

  