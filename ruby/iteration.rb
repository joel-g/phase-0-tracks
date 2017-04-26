# def test 
# 	puts "Status message before the block"
# 	yield
# 	puts "Status message after the block"
# end

# test {puts "here I fixed it"}



teams = {
	"Seattle" => "Seahawks",
	"San Francisco" => "49ers",
	"Arizona" => "Cardinals",
}

sports = ["baseball", "football", "soccer", "basketball"]

p sports
sports.map! do |sport|
sport.capitalize
end
p sports


teams.each do |city, team|
puts "The #{team} play in #{city}."
end
p teams