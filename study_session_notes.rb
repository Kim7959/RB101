11. Examine the code example above. Explain what is happening on line 3, and why this line returns the Integer 3. Looking at the structure of my_hash and the way that 3 is returned, what concept regarding collections in Ruby does this demonstrate?

# my_hash = {a: 1, b: {d: 3, e: 5}, c: 7}

# my_hash[:b][:d] # => 3

=begin 
On line 60 `my_hash` is initalized to `{a: 1, b: {d: 3, e: 5}, c: 7}`. 

On line 62, the ruby hash key reference is invoked on `my_hash` and passed the key symbol `:b`.  The hash key reference `my_hash[:b]` returns the value associated with the key `:b`; in this case it returns the hash `{d: 3, e: 5}`.  Then still on the same line we have the hash key reference invoked on the hash ``{d: 3, e: 5}` and passed the key `:d`.  This returns the value associated with the key `:d` which is the integer 3.  

Hashes are like dictionaries.  We can look up any value held by a key.  This is a more direct line to finding information faster than an array.  If we had an array insted of a hash, we would have to iterate over the array one element at a time which would take more computer memory/time.
=end

#What does the following code return? What does it output? Why? What concept #does it demonstrate?

a = "hi there"
b = a
a = "not here"

What are a and b?

On line 36 local variable `a` is initialized to the string object `'hi there'`For example, `a` now has the object_id 1
On line 37, local variable `b` is initialized and points to the string object 
  referenced by local variabl `a`. `b` now has the object_id 1
On line 38, local variable `a` is reassigned to the string object `'not here'` and now has another object_id, lets call that object_id 2
`a` has the object_id 2 (`'not here'`)
`b` has the object_id 1 (`'hi there'`)

# # 16. Examine the following code.  Using the lines 3, 7, 11, 16, and 17 to explain what concept is demonstrated.

# a = 'hello world'
# puts a # 'hello world'
# a.object_id # => 260
# ​
# a.upcase!
# puts a # 'HELLO WORLD'
# a.object_id # => 260
# ​
# a.upcase
# puts a # 'HELLO WORLD'
# a.object_id # => 260
# ​
# b = a.upcase # new string object created
# puts a # 'HELLO WORLD'
# puts b # 'HELLO WORLD'
# a.object_id # => 260
# b.object_id # => 280

=begin
On line 3, the local variable `a` is initialized to the string object 'hello world'.  On line 5 the method `object_id` is invoked on `a` which references the string object `'hello world'`.  This returns the address in memory where the string object is stored.

On line 7, the `upcase!` method is invoked on the string object referenced by `a`.  This `upcase!` method is mutating, which means the string object `'hello world'` is mutated in place to be `'HELLO WORLD'`.  Thus, on line 9 the method invocation `object_id` on the string object referenced by `a` returns the same object id as line 5.

On line 11, the `upcase` method is invoked on `a`.  This is a non-mutating method which has no effect on the memory location of the string object referenced by `a` nor does it change its state.  So, on line 13 the method invocation `object_id` returns the same object id as line 5.

On line 15 local variable `b` is initialized and assigned the result of invoking the method `upcase` on the string object referenced by `a`.  This creates a new string object `'HELLO WORLD'` in memory.  Even though this is the same string as the one `a` points to , this is an entirely different and new object in memory. So the `object_id` method invocations on line 18-19 output different object ids.  

This concept demonstrates variables as pointers.  This concept also demonstrates mutating vs. non-mutating mehtods.


Check out this youtube video about nested hash and array https://www.youtube.com/watch?v=UoTCmeQ19Lw from Chris

