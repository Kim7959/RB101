=begin
Ask user for first number (number1)
validate number1
ask user for second number (number2)
validate number2
ask user for type of operation to perform (operation_choice)
(1-add,2- subtract, 3-multiply,or 4- divide)
validate operation_choice
perform calculation
display results
give user option to play again
=end

# input: a string, output: string concatenated with =>
def display_prompt(message)
  puts "=> #{message}"
end

# input: an integer, output boolean
def valid_number?(num)
  num != 0
end

# input: operation_choice, output: string with ing
def operation_choice_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

display_prompt("Welcome to the calculator program! Let's get started.")

user_name = ''
loop do # This is the name validation loop
  display_prompt("What is your name?")
  user_name = gets.chomp
  if user_name.empty?
    display_prompt("Please enter your name:")
  else
    display_prompt("Hi #{user_name}!")
    break
  end
end

loop do # This is the main loop
  number1 = ""
  loop do # This is the number1 validation loop
    display_prompt("Please enter your first number:")
    number1 = gets.chomp.to_i
    if valid_number?(number1)
      break
    else
      display_prompt("That is not a valid choice. Please enter 1,2,3 or 4.")
    end
  end
  number2 = ""
  loop do # This is the number2 validation loop
    display_prompt("Please enter your second number:")
    number2 = gets.chomp.to_i
    if valid_number?(number2)
      break
    else
      display_prompt("That is not a valid number.")
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1-add
    2-subtract
    3-Multiply 
    4-divide
  MSG
  display_prompt(operator_prompt)
  operation_choice = ''
  loop do # This is the operation_choice validation loop
    operation_choice = gets.chomp
    if %w(1 2 3 4).include?(operation_choice)
      break
    else
      display_prompt("That is not a valid choice, please choose again.")
    end
  end
  display_prompt("#{operation_choice_to_message(operation_choice)}
  the two numbers....")
  calculated_result = case operation_choice
                      when "1"
                        number1 + number2
                      when "2"
                        number1 - number2
                      when "3"
                        number1 * number2
                      when "4"
                        number1.to_f / number2.to_f
                      end

  display_prompt("The result is #{calculated_result}.")
  display_prompt("Do you want to use the calculator again? (Y/N)")
  play_again = gets.chomp.downcase
  if play_again.start_with?('n')
    display_prompt("Thank you for using the calculator! Good bye.")
    break
  end
end
