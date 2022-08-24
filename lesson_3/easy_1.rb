# easy1 Q3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')
p advice

# easy1 Q5 include? and cover? seem to by synomyms

(42..100).include?(42)
(42..100).cover?(42)
# easy1 Q6

famous_words = "seven years ago..."

famous_words.prepend("Four score and ")
famous_words.insert(0, "Four score and ")
"Four score and " + famous_words
"Four score and " << famous_words

# easy1 q7
 flinestones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
 p flinestones.flatten!
 
 # easy1 Q8
 
 flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
 flintstones.delete_if {|key,value| value >2 || value < 2}
 p flintstones
 
  flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
 p flintstones.assoc("Barney")
 
 