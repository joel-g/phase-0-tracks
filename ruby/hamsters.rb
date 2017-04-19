# hamster's name

# vol level 1-10

# fur color

# good candidate for adoption?

# est age - if left blank, set to nil

puts "What is the hamster's name?"

hamster_name = gets.chomp

puts "How loud is the hamster (scale of 1 to 10)?"

hamster_volume = gets.chomp.to_i

puts "What color fur does the hamster have"

fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? y/n"

good_candidate = gets.chomp

if good_candidate == "y"
	good_candidate = true 
elsif good_candidate == "n"
	good_candidate = false
else
	puts "Input must be 'y' or 'n'"
end

hamster_age = nil

puts "How old is the hamster?"

hamster_age = gets.chomp.to_i

puts " #{hamster_name} is a #{hamster_volume} out of 10 for loudness with #{fur_color} fur"

if hamster_age != nil
	puts "It is #{hamster_age} years old"
end

if good_candidate == true
	puts "It is a good candidate for adoption!"
else
	puts "Sorry, this hamster is not ready to be adopted..."
end