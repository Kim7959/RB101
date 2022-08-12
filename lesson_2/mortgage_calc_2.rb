=begin
get 3 pieces of data from user:
loan_amt, apr, loan_dur_years
calculate monthly_int_rate and loan_dur_months
then calculate monthly_pmt using this formula:
monthly_pmt = loan_amt * (monthly_int_rate /
(1 - (1 + monthly_int_rate)**(-loan_dur_months)))
output monthly_pmt
ask if user wants to use calculator again
=end

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc_2_messages.yml')

def display_prompt(message) # displays message plus =>
  puts "=> #{message}"
end

def valid_name?(name)
  name.empty? == false
end

def valid_loan_amt?(num)
  if num.include?('$')
    num.delete! '$'
  end
  (num.to_i.to_s || num.to_f.to_s == num) && num.to_i > 0
end

def apr_valid?(num)
  if num.include?('%')
    num.delete! '%'
  end
  (num.to_i.to_s || num.to_f.to_s == num) && num.to_i > 0
end

def loan_dur_valid?(num)
  (num.to_i.to_s || num.to_f.to_s == num) && num.to_i > 0
end

def monthly_rate_calc(num) # input float, output float
  num / 12
end

def loan_months_calc(num) # input float, output float
  num * 12
end

display_prompt(MESSAGES['welcome'])
name = ''
loop do # Name validation loop
  display_prompt(MESSAGES['name'])
  name = gets.chomp
  if valid_name?(name)
    puts "Let's get calculating, #{name.capitalize}!"
    break
  else
    display_prompt(MESSAGES['name_invalid'])
  end
end

loop do # Main loop
  loan_amt = ''
  loop do # Loan amt validation loop
    display_prompt(MESSAGES['loan_amt'])
    loan_amt = gets.chomp
    break if valid_loan_amt?(loan_amt)
    display_prompt(MESSAGES['invalid_loan_amt'])
  end
  apr = ''
  loop do # APR validation loop
    display_prompt(MESSAGES['apr'])
    apr = gets.chomp
    if apr_valid?(apr)
      apr = apr.to_f / 100
      break
    else
      display_prompt(MESSAGES['invalid_apr'])
    end
  end
  loan_dur_years = ''
  loop do # Loan duration in years validation loop
    display_prompt(MESSAGES['loan_dur_years'])
    loan_dur_years = gets.chomp
    break if loan_dur_valid?(loan_dur_years)
    display_prompt(MESSAGES['invalid_loan_duration'])
  end
  monthly_int_rate = monthly_rate_calc(apr)
  loan_dur_months = loan_months_calc(loan_dur_years)
  monthly_payment = (loan_amt.to_i) * (monthly_int_rate /
  (1 - (1 + monthly_int_rate)**(-loan_dur_months.to_i)))
  display_prompt(MESSAGES['monthly_payment'])
  puts "$ #{format('%.2f', monthly_payment)}"
  display_prompt(MESSAGES['use_again'])
  use_again = gets.chomp.downcase
  break unless use_again.start_with?('y')
  system 'clear'
end
display_prompt(MESSAGES['thank_you'])
puts "Good-bye, #{name.capitalize}."
