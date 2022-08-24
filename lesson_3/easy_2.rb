# Q1

pages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
pages.fetch("Spot", "item not found")
pages.has_key?("Spot")
pages.include?("Spot")
pages.member?("Spot")
pages.key?("Spot")

#Q2
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase!
puts munsters_description.capitalize!
puts munsters_description.downcase!
puts munsters_description.upcase!

#Q3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#Q4

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
advice.match?("Dino")

#Q5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Q6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
flintstones.push("Dino")
flintstones.concat(["Dino"])

#Q7

flintstones.concat(["Dino", "Hoppy"])
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))

#Q8

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0..35)
p advice.slice!(0, advice.index('house'))
p advice

#Q9

statement = "The Flintstones Rock!"
p statement.count("t")

#Q10

title = "Flintstone Family Members"
title.center(40)