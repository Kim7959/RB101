# rock, paper, scissors, lizard, spock
# adding bonus features to original rps program

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def display_prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
     (first == 'paper' && second == 'spock') ||
      (first == 'scissors' && second == 'paper') ||
       (first == 'scissors' && second == 'lizard') ||
        (first == 'lizard' && second == 'spock')||
         (first == 'lizard' && second == 'paper') ||
          (first == 'spock' && second == 'scissors')||
           (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    display_prompt("Congratulations! You won!")
  elsif win?(computer, player)
    display_prompt("The computer won.")
  else
    puts "It's a tie."
  end
end

loop do # this is the main loop
  user_choice = ""
  loop do # This is the input validation loop
    display_prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = gets.chomp.downcase
    if VALID_CHOICES.include?(user_choice)
      break
    else
      display_prompt("Not a valid choice. Please try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose #{user_choice} and the computer chose #{computer_choice}."

  display_results(user_choice, computer_choice)

  display_prompt("Would you like to play again? enter Y/N")
  play_again = gets.chomp.downcase
  break if play_again.start_with?('n')
end

display_prompt("Thank you for playing!")
