=begin
Improving original calculator program
1.Better integer validation-to account for 0
2. Account for decimal inputs by 
creating a method called number? to
verify integers and floats
3. Explicit return in the case statement
4. Extract messages to a config file
5. Take the message config file and have it translated
=end

require 'yaml'
MESSAGES = YAML.load_file('calc_bonus_messages.yml')

# input: a string, output: string concatenated with =>
def display_prompt(message)
  puts "=> #{message}"
end

# input: integer or float output: boolean
def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
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

display_prompt(MESSAGES['welcome'])

user_name = ''
loop do # This is the name validation loop
  display_prompt(MESSAGES['name'])
  user_name = gets.chomp
  if user_name.empty?
    display_prompt(MESSAGES['valid_name'])
  else
    display_prompt("Hi #{user_name}!")
    break
  end
end

loop do # This is the main loop
  number1 = ""
  loop do # This is the number1 validation loop
    display_prompt(MESSAGES['first_number'])
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      display_prompt(MESSAGES['valid_number'])
    end
  end
  number2 = ""
  loop do # This is the number2 validation loop
    display_prompt(MESSAGES['second_number'])
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      display_prompt(MESSAGES['valid_number'])
    end
  end
  display_prompt(MESSAGES['operation'])
  display_prompt(MESSAGES['operation_choice'])
  operation_choice = ''
  loop do # This is the operation_choice validation loop
    operation_choice = gets.chomp
    if %w(1 2 3 4).include?(operation_choice)
      break
    else
      display_prompt(MESSAGES['operation_valid'])
    end
  end
  display_prompt("#{operation_choice_to_message(operation_choice)}
  the two numbers....")
  calculated_result = case operation_choice
                      when "1"
                        number1.to_i + number2.to_i
                      when "2"
                        number1.to_i - number2.to_i
                      when "3"
                        number1.to_i * number2.to_i
                      when "4"
                        number1.to_f / number2.to_f
                      end

  display_prompt("The result is #{calculated_result}.")
  display_prompt(MESSAGES['play_again'])
  play_again = gets.chomp.downcase
  if play_again.start_with?('n')
    display_prompt(MESSAGES['thank_you'])
    break
  end
end
