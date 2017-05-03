class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(gender = "unknown", ethnicity = "unknown")
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at(reindeer)
			
	end
end

santas = []
genders_list = ["male", "female", "male", "male", "female"]
ethnicity_list = ["white", "latino", "white", "black", "asian"]

ethnicity_list.length.times.do |index|
	santas << Santa.new(genders_list[index], ethnicity_list[index])
end


#TEST DRIVER CODE
santa1 = Santa.new("male", "white")
santa1.eat_milk_and_cookies("oreo")
santa1.speak
santa1.about
