class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	def initialize(gender = "unknown", ethnicity = "unknown", age = 0)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
	#SETTERS
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end
	attr_reader :age
	attr_accessor :gender, :ethnicity
end

santas = []
genders_list = ["male", "female", "male", "male", "female"]
ethnicity_list = ["white", "latino", "native American", "black", "asian"]

ethnicity_list.length.times do |index|
	santas << Santa.new(genders_list[index], ethnicity_list[index])
end

#TEST DRIVER CODE
# santa1 = Santa.new("male", "white")
# santa1.eat_milk_and_cookies("oreo")
# santa1.speak
# santa1.about
# puts santa1.ethnicity
# puts santa1.age
# santa1.get_mad_at("Dancer")
# santa1.celebrate_birthday
# puts santa1.age
# santa1.gender = "female"
# puts santa1.gender


10000000.times do
	santa = Santa.new(genders_list.sample, ethnicity_list.sample, rand(0-140))
	puts santa.gender
	puts santa.ethnicity
	puts santa.age
end