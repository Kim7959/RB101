# a = 'hi'
# english_greetings = ['hello', a, 'good morning']


# greetings = {
#   french: ['bonjour', 'salut', 'allo'],
#   english: english_greetings,
#   italian: ['buongiorno', 'buonasera', 'ciao']
# }
# p greetings[:english] # => ['hello' , 'hi', 'good morning']
# greetings[:english][1] = 'hey'
# p greetings[:english]# = > ['hello', 'hey', 'good morning']
# greetings.each do |language, greeting_list|
#   greeting_list.each { |greeting| greeting.upcase! } # => ['HELLO', 'HEY', "GOOD MORNING"]
# end

# puts a #=> 'hi'
# puts english_greetings[1] #=> 'HEY'
# puts greetings[:english][1] #=> 'HEY'

# [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
#   sub_arr.map do |letter|
#     letter.upcase
#   end
# end

=begin
Outer loop: Array#map is called on the 2 dimensional array [['a', 'b'], ['c', 'd'], ['e', 'f']]
  each sub_arr is passed to the block in turn. Ex: ['a', 'b']
Inner loop: Array#map is called on sub_arr and each element Ex: 'a'and 'b' is passed to the block in turn
  String#upcase is called on each element and changes the case to upcase. Ex: 'A', 'B'
  the return value of the block is 'A', 'B'. map uses this return value and returns a new collection Ex: ['A', 'B']
Outer map: uses the return value of teh inner loop Ex: ['A', 'B'] and returns a new collection Ex: [['A', 'B'], ['C', 'D'], ['E', 'F']]
=end 

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]
# what is the total value of orders for each custumer?
# wheat is the total value of FULFILLED orders for each custumer?
# first convert the initial data structure into a usable format
# then extract the required info from restructured data
customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]
]