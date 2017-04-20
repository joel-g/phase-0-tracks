puts "How many employees are you processing?"
num_employees = gets.chomp.to_i

num_employees.times do
		
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

	if 2017 - age == birthyear
		agecorrect = true
	else
		agecorrect = false
	end

	if employee == "Drake Cula" || employee == "Tu Fang"
		vampire = "Definitely a vampire"
	elsif agecorrect == true && (garlic == true || insurance == true)
		vampire = "Probably not a vampire."
	elsif agecorrect == false && garlic == false && insurance == false
		vampire = "Almost certainly a vampire."
	elsif agecorrect == false && garlic == false || insurance == false
		vampire = "Probably a vampire."
	else
		vampire = "Results inconclusive"
	end
	puts vampire

	puts agecorrect
	puts garlic
	puts insurance

end