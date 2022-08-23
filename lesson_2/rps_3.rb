=begin
Given 3 choices
user chooses 1 (user_choice)
computer chooses 2 (comp_choice)
winner is displayed
user asked if wants to play_again?
=end

require 'yaml'
MESSAGES = YAML.load_file('rps_3_messages.yml')

VALID_CHOICES = ['rock', 'paper', 'scissors']

def display_prompt(message)
  puts "=> #{message}"
end

def valid_user_choice?(user_choice)
  VALID_CHOICES.include?(user_choice)
end

def comp_choice_calc
  VALID_CHOICES.sample
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_winner(user, computer)
  if win?(user, computer)
    display_prompt(MESSAGES['user_won'])
  elsif win?(computer, user)
    display_prompt(MESSAGES['comp_won'])
  else
    display_prompt(MESSAGES['tie'])
  end
end

def valid_play_again?(play_again)
  play_again.start_with?('y') ||
    play_again.start_with?('n')
end

display_prompt(MESSAGES['welcome'])

loop do # main loop
  user_choice = ''
  loop do # user input validation loop
    display_prompt(MESSAGES['user_input'])
    puts VALID_CHOICES.join(', ')
    user_choice = gets.chomp.downcase
    if valid_user_choice?(user_choice)
      break
    else
      display_prompt(MESSAGES['invalid_user_input'])
    end
  end

  comp_choice = comp_choice_calc
  display_prompt("You chose #{user_choice}.")
  display_prompt("The computer chose #{comp_choice}.")
  display_winner(user_choice, comp_choice)

  play_again = ''
  loop do # play_again validation loop
    display_prompt(MESSAGES['play_again'])
    play_again = gets.chomp.downcase
    if valid_play_again?(play_again)
      break
    else
      display_prompt(MESSAGES['invalid_user_input'])
    end
  end

  if play_again.start_with?('n')
    break
  else
    display_prompt(MESSAGES['valid_play'])
  end
end

display_prompt(MESSAGES['goodbye'])
