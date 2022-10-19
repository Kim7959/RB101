# # =begin pedac Problem #1
# # order this array of number strings by decending numeric value
# # same array, arr
# # need to convert string to integer to be able to sort
# #   then convert it back to string
# # expected output: 
# #   arr = ['11', '10, '9','8', '7']
# # algorithm
# # given array
# # convert to integers
# # sort decending
# # convert back to strings


# # =end

# # arr = ['10', '11', '9', '7', '8']
# # # arr = arr.map {|string| string.to_i}.sort.reverse
# # # p arr.map {|integer| integer.to_s}

# # p arr.sort {|a,b| b.to_i <=> a.to_i}

# # =begin pedac prb 2
# # order the array of hashes based on year of publication
# #   from earliest (smallest) to latest(largest)-ascending
# # algorthithm
# #   given multidementional array
# #     an array of hashes
# #   access key(published:) for each kv pair to return value
# #   sort hashes by value
# #   return same multidimensional array of hashes
# # =end

# # books = [
# #   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
# #   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
# #   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
# #   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# # ]
  
# # p books.sort_by {|hash| hash[:published]}


# # arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# # arr1[2][1][3]

# # arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# # arr2[1][:third][0]


# # arr3 = [['abc'], ['def'], {third: ['ghi']}]
# # arr3[2][:third][0][0]

# # hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# # hsh1['b'][1]


# # hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# # hsh2[:third].keys[0]

# # #prb 4

# # arr1 = [1, [2, 3], 4]
# # arr1[1][1] = 4
# # arr1

# # arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# # arr2[2] = 4
# # arr2

# # hsh1 = {first: [1, 2, [3]]}
# # hsh1[:first][2][0] = 4
# # hsh1

# # hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# # hsh2[['a']][:a][2] = 4
# # hsh2

# # =begin Problem 5
# # input: given nested hash
# # output: total age of only male members
# # algorithm:
# # access age[key] to return values into array
# # sum values in array
# # =end

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# # male_ages = 0
# # munsters.each_value do |inner_hash|
# #   male_ages += inner_hash['age'] if inner_hash['gender'] == 'male'
# # end
# # p male_ages

# # #begin prb 6

# munsters.each do |name,inner_hash|
# puts " #{name} is a #{inner_hash['age']}-year-old #{inner_hash['gender']}."
# end

# # Prb 7

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# p arr
# arr[1][0] -= a
# p arr

# =begin prb 8

# use each method
# output all vowels from strings
# =end

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# vowels = 'aeiou'
# hsh.each do |_, value|
#   value.each do |string|
#     string.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
   
# end

# =begin prb 9

# given multidimensional array
# return new array, same structure
# but with subarrays ordered decending
# =end

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |sub_arr|
#   sub_arr.sort do |a,b|
#     b <=> a
#   end
# end

# # prb 10
# # do not modify the orig array
# # use map to return new array
# # array identical structure but increment by 1

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |inner_hsh|
#   incremented_hash = {}
#   inner_hsh.map do |key, value|
#     incremented_hash[key] = value += 1
#   end
#   incremented_hash
# end


# prb 11
# use a combo of methods incl select or reject
# rteurn a new arr identical in structure 
# but containing only integers that are mult of 3
# expected output is [[3], [9], [15]]

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr.map do |sub_arr|
#   sub_arr.select do |integer|
#     integer % 3 == 0
#   end

# end
    
# prb 12
# do not use Array#to_h
# return a hash where 
# key is ist item in sub arr
# and value is 2nd item

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}


# new_hash = {}
# arr.each do |sub_arr|
# new_hash[sub_arr[0]] = sub_arr[1]
# end
# p new_hash

# prb 13

# retn new arr containing same sub arr
# dont modify data structure
# dont modify orig arrays
# order arrays based on odd numbers

# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end

# prb 14

# retn array containing colors of fruit (capitalized)
# and sizes of vegetables. (uppercase)



# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }


# hsh.map do |key, value| 
#   if value[:type] == 'fruit'
#     value[:colors].map do |color|
#       color.capitalize
#     end
#   elsif value[:type] == 'vegetable'
#     value[:size].upcase
#   end
# end

# prb 15 
# retrn array containing only the hashes
# # where integers are even
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr.select do |inner_hash|
#   inner_hash.all? do |_, value|
#     value.all? do |integer|
#       integer.even?
#     end
#   end
      
#   end

# prb 16, last one
# write a method that returns one UUID when called
# no parameters

def generate_uuid
  characters = []
  (0..9).each { |digit| characters << digit.to_s}
  ('a'..'f').each {|digit| characters << digit}
  
  uuid=''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
end

uuid





  
    




