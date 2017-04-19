puts "What is your name?"
employee = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birthyear = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp
if garlic == "y"
	garlic = true
else garlic = false
end
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == "y"
	insurance = true
else insurance = false
end
if 2017 - age == birthyear && garlic == true || insurance == true
	vampire = "Probably not a vampire."
elsif 2017 - age == birthyear && garlic == false || insurance == false
	vampire = "Probably a vampire."
elsif 2017 - age !== birthyear && garlic == false && insurance == false)
	vampire = "Almost certainly a vampire."
end
puts vampire