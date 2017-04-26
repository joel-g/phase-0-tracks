def test 
	puts "Status message before the block"
	yield
	puts "Status message after the block"
end

test {puts "here I fixed it"}

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

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.delete_if {|x| x < 5}	

p arr

has = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
	f: 6,
}

has.delete_if {|letter, number| number < 4}
p has

arr2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr2.select! {|x| x < 5}	
p arr2

has2 = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
	f: 6,
}

has2.select! {|letter, number| number < 4}
p has2

arr3 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr3.keep_if {|x| x < 5}
p arr3

has3 = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
	f: 6,
}
has3.keep_if {|letter, number| number < 4}
p has3

arr4 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6]
arr5 = arr4.drop_while {|x| x < 5}	
p arr4
p arr5


has4 = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5,
	f: 6,
	g: 1,
}
has5 = has4.drop_while {|letter, number| number < 5}	
p has4
p has5
