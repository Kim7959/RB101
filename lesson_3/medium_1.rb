#Q1

10.times {|number| puts (" " * number) + "The Flintstones Rock!"}

#Q2

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

#Q3 ?????

def factors(number)
  divisor = number
  factors = []
  While divisor > 0
    factors << number / divisor if number % divisor == 0
  divisor -=1
end


#Q5



def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# Hard 1

# Q4 ????

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


