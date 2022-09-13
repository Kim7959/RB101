[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

=begin
The method array#each is called on 
  the multidimensional array [[1,2].[3,4]].
Each subarray is passed to the array#each method
  and assigned to the local variable arr.
Array#first method is called on the local var arr.
  It returns the object at index 0 of the current array.
  (In this example, this would be 1 for the 
  first sub array and then 3 for the second sub array).
The method puts is called on the return value of arr.first (1 then 3)
  Puts outputs 1 and then 3 as a string object on separte lines.
The return value of the code block is nil, nil because puts returns nil
  and it is the last method evaluated in the block
Array#each ignores the value of the return value of 
  the block. Instead, it returns the original calling object which
  is  [[1, 2], [3, 4]]
=end

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

=begin
Array#map method is called on the multidimensional array
  [[1, 2], [3, 4]]. Each subarray is passed to the block 
    and assigned to the local variable arr.
Array#first method is called on arr. It returns the value of
  the object at index position 0. (in this case that is 1 and then 3)
The method puts is called on the return value of first (1 then 3).
  Puts outputs the return value as a string on a separate line.
  Puts returns nil. 
The return value of the block is nil, nil becaue puts is the
  last method evaluated in the block.
Map uses the return value of the block (nil,nil) and
  puts the return values into a new array and then returns this new array.
The return value of map is [mil,nil]. It is not used.
=end

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

=begin
Array#map is called on the multidimensional array [[1, 2], [3, 4]]
Each sub array is passed to the block in turn and assigned to
  the local variable arr.
Array#first is called on arr. It returns the value of
  the object at index position 0 of each sub array. (In this example, that would
  be 1 for the first array and 3 for the second array.)
Puts is called on the return value of array#first (1 then 3).
  Puts outputs 1 then 3 as a string representation
  of each integer on separate lines.
  Puts then returns nil for each object output.
Array#first is then called again on arr and will return 1 and 3 again
  as described above. 
Since first is the last method evaluated in the block, the 
  return value of the block will be 1,3.
Map uses the return value of the block in order to perform
  transformation. It takes 1,3 and puts it into a new return 
  array. Map will return [1,3].
=end

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
=begin

Outer Array#each is called on the multidimensional array  [[18, 7], [3, 12]]
  each subarray is passed to the block in turn and assigned
  to the local variable arr.
Inner Array#each is called on arr. Each element of each subarray is passed to the block in
  turn and assigned to the local var num
  Inner block execution:
    1.comparison (>) is used on each element in that iteration
    and returns boolean.
    2.conditional if is called on the return value of num>5
      if num>5 is true
        then puts is called on num. puts will output a string
        representation of an integer. In this case, 18, 7, 12. Because puts is the last method evaluated in the block
        Puts returns nil. In this case, the block will
        return nil, nil, 3, nil.
    Inner array#each ignores the return value of the block: nil, nil, 3, nil
      and instead returns the calling object [18,7] and [3,12]
outer array#each ignores the value of the return block. The return
  value of  the inner each is the original calling object
   [18,7], [3,12]
the return value of the outer each is used and assigned to local var my_arr, in this 
  case  [[18, 7], [3, 12]]. So the return value of the code is the
  array that each was called on because each ignores the 
  blocks return value.
=end

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
=begin

Outer map: Array#map is called on the multidimensional array [[1, 2], [3, 4]]
  each subarray (ie:[1,2] and [3,4] is passed to the block and assigned
  to local variable arr in turn
  
  Inner map: Array#map is called on each element in the subarray [1,2] and [3,4]
  and each  element of the subarray is passed to the block and assigned to local
    variable num in turn.
      The * method is called on num, and returns num * 2
        in this case tht will be: [2,4], [6,8]
      map uses the return value of the block and returns 
        it into a new collection [2,4], [6,8]
Outer map: uses the return value of inner map- [2,4],[6,8]
  and takes that value and returns a  new collection
  [[2,4], [6,8]]
=end

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
=begin
array#select is called on the multidimensional array
  [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
each inner hash is passed to the block in turn and assigned to the 
  local variable hash. { a: 'ant', b: 'elephant' }, { c: 'cat' }
enumerable#all? is called on each inner hash. The keys and values are
  passed to the block in turn and assigned to the local variables
    key, value. The to_s method is called on key and returns the 
    key in string format ('a', 'b'), ('c'). The equality operator is called 
    on the first element of each value ('a', 'e'), ( 'c') and it compares
    those values to the return value of the to_s method. The equality operator
    returns true if both opearnds are equal. in this case it returns (true, false), (true)
    This is also the return value of the block.
      all? considers the truthiness of the return value of the block and
      will return true if every key/value pair is true. In this case
      it returns false, true
array#select considers the truthiness of the block. Which in this case is
  false, true. It then returns a new array containing the element
  that evaluated to true which in this case is { c: 'cat' }
=end

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]   

=begin
Enumberable#sort_by is called on the local variable arr which contains
  a multidimensional array. Each sub-array is passed to the block in turn.
  ["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"] and
  assigned to local variable sub_arr.
array#map is called on sub_arr. ex: ["1", "8", "9"] each string within the sub_arr
  is passed to the  block in turn ex '1', '8','9' and assigned local variable num. 
  string#to_i is called on num and returns each string converted to integer. ex: 1, 8,9
Enumerable#sort_by uses the return value of Array#map (1,8,9) and sorts each element
  in ascending numeric order.   it returns an array of sorted integers [1,8,9] and
  leaves the original array (arr) unmodified.
=end
  
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]  

=begin
** we want to select nested elements based on certain criteria.
we want to select integers greater than 13 but strings less 
than 13 char. The elements are in a 2 layer nested array**

array#map is called on the multidimensional array
  [[8, 13, 27], ['apple', 'banana', 'cantaloupe']]. each 
  subarray is passed to the block in turn and assigned to
  local variable arr. ex: [8,13,27], ['apple', 'banana', 'cantaloupe']
array#select is called on each subarray and each object
  in the subarray is passed to the block and assigned local
  variable item (ex: 8, 13, 27)
    the to_s and to_i methods are called on item (ex: 8) and returns
    item converted to string then to integer. (ex 8)
    the equality operator is invoked and compares the return
    value of item.to_s.to_i to the original value of item. This 
    returns boolean value (true or false). If true, then the
    object is an integer. If false, the object is not an integer.
    the conditional if is invoked. It uses the return value of
      the equality operator. If true, it returns all items > 13 in length.
      if it returns false, then it returns all items whose size
      is < 6
The return value of the block is non integer values < 6 in length ('apple')
  and integer values > 13 (27). select takes these return values and
  puts them into a new collection [27], ['apple'] and passes this as 
  a return value to map
Array#map returns the return value of select [27], ['apple'] as a new
  collection. [[27], ['apple']] The original collection [[8, 13, 27], ['apple', 'banana', 'cantaloupe']]
  is not modified.
=end

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
  
=begin
Outer Map: Array#map is called on the nested array [[[1, 2], [3, 4]], [5, 6]].
  each element (inner array) is passed to the block in turn and
  assigned to the local variable arr. Ex: [[1,2], [3,4]], [5,6].
Inner map: Array#map is called on the local variable arr which contains
  a subarray [[1,2], [3,4]], [5,6]. Each element of the subarray is passed
  to the block Ex:[ 1,2], [3,4], 5, 6 and assigned to the local variable el.
  The conditional if method is used to determine if el is an integer or
    if el is an array.
      Integer#to_s method is called on `el` and returns a string representation
      of el. Then String#size method is called on the return value and returns
      an integer representation of the size of the string.  The return value of String#size
      is then compared to 1 using the equality operator. This will return boolean.
        In this case 5 and 6  will return true. and [ 1,2], [3,4] will return false
          The addition operator is used to increment `el` by 1. This will return 6 and 7.
            Array#map uses the return value of the block and returns it in a new collection.
            In this case, that will be [6,7]
          The conditional else is used for the values that returned false.
            Array#map is called on `el`( [ 1,2], [3,4]). The elements of `el` are passed to the block in 
            turn ie: 1,2 and then 3,4. The addition operator is used to increment each element by one.
            The return value of map will be a new collection containing each element incremented by one.
            in this case that will be [[2,3] [4,5]]
    Array#map takes the return values of the block (in this case [[2,3], [3,4]], [6,7]) and
    puts it into a new collection. So will return [[[2,3], [4,5]], [6,7]]
    



  
  
  
