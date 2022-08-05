=begin
Given 3 choices (rock, paper, scissors)
User chooses one
Computer chooses one
Computer choice displayed
Both values are compared
Winner is determined
User given option to play again
=end

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end
prompt("Welcome to the fabulous Rock-Paper-Scissors game!")

loop do # this is the main loop
  user_choice = ''
  loop do # This is the user_choice input validation loop
    prompt("Please choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = gets.chomp.downcase
    if VALID_CHOICES.include?(user_choice)
      puts "You chose #{user_choice}."
      break
    else
      puts "That is not a valid choice, please try again."
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "The computer chose #{computer_choice}."

  if (user_choice == 'rock' && computer_choice == 'scissors') ||
     (user_choice == 'scissors' && computer_choice == 'paper') ||
     (user_choice == 'paper' && computer_choice == 'rock')
    prompt("You are the winner!")
  elsif user_choice == computer_choice
    puts "It's a tie!"
  else
    puts "Sorry, the computer won."
  end
  prompt("Do you want to play again? Enter y/n")
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt("Thank you for playing, have a nice day!")
