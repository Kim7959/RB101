=begin
ask user input: loan_amt, apr, loan_dur_years
validate all 3 inputs
calculate monthly_in_rate, loan_dur_months.
Then use those values to calculate the monthly payment
use this formula for monthly_pmnt: m = p * (j / (1 - (1 + j)**(-n)))
where m = monthly pmt, p = loan_amt, j = monthly_in_rate, n= loan_dur_months
output result
Ask if user wants to repeat calculator
=end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num) # Input validation for loan_amt, apr, loan_dur_years
  (num.to_i.to_s == num || num.to_f.to_s == num) &&
    num.to_i.positive? && num.to_i > 0
end
prompt("Welcome to the mortage calculator!!")

loop do # this is the main loop
  loan_amt = 0
  apr = 0
  loan_dur_years = 0

  loop do # This is loan amount validation loop
    prompt("What is your total loan amount? Please don't use commas:")
    loan_amt = gets.chomp
    if valid_number?(loan_amt)
      break
    else
      prompt("Error:That is not a valid number. Please try again.")
    end
  end
  loop do # This is the APR input validation loop
    prompt("What is the APR of your loan? Enter a percent ie: 5 or 4.25:")
    apr = gets.chomp
    if valid_number?(apr)
      break
    else
      prompt("Error:That is not a valid number. Please try again.")
    end
  end

  loop do # This is the loan duration in years validation loop
    prompt("What is your loan duration in years?:")
    loan_dur_years = gets.chomp
    if valid_number?(loan_dur_years)
      break
    else
      prompt("Error:That is not a valid number. Please try again.")
    end
  end
  loan_amt = loan_amt.to_i
  monthly_in_rate = (apr.to_f / 100) / 12
  loan_dur_months = loan_dur_years.to_i() * 12
  monthly_pmnt = loan_amt *
                 (monthly_in_rate /
                 (1 - (1 + monthly_in_rate)**(-loan_dur_months)))
  monthly_pmnt = monthly_pmnt.round(2)

  prompt("Your monthly payment will be $ #{monthly_pmnt}")
  prompt("Do you want to do another calculation? Enter Y/N")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
