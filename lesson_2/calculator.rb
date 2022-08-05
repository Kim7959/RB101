# ask the user for 2 numbers
# ask the user for type of operation
# perform the specified operation
# output the result



def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operaton_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    "Subtracting"
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator!! Please enter your name:")
name = ''
loop do # This is the name validation loop
  name = gets.chomp
  if name.empty?
    prompt("That is not a valid name. Pleae try again:")
  else
    break
  end
end
prompt("Hi #{name}!")

loop do # This is the main loop
  number1 = ''
  number2 = ''
  operation = ''

  loop do # This is number1 input loop
    prompt("Please enter a number:")
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt("Error:That is not a valid number!")
    end
  end
  loop do # This is number2 input loop
    prompt("Please enter another number:")
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt("Error:That is not a valid number!")
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1-add
    2-subtract
    3-multiply
    4-divide
  
  MSG
  prompt(operator_prompt)
  loop do # this is operation input loop
    operation = gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Error:you must choose 1, 2, 3, or 4")
    end
  end
  prompt("#{operation_to_message(op)} the two numbers...")
  result = case operation
           when '1' then number1.to_i + number_2.to_i
           when '2' then number1.to_i - number_2.to_i
           when '3' then number1.to_i * number_2.to_i
           when '4' then number1.to_f / number_2.to_f
           end
  prompt("The result is #{result}")
  prompt("Do you want to do another calculation? Enter Y/N")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
prompt("Thank you for using my calculator program!")
