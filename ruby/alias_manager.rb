#swap first name

#down case everything

#split into two strings

#change vowels to next vowel (aeiou) - compare against vowel string

#change the consonants to the next consanant - compare against consanant string

#deal with Z

#join

#capitalize

#reverse and split full namel




#NEXT_VOWEL method swaps vowels for next vowel
def next_vowel(input) 
x = 0
input.length.times do
	case input[x]
	when "a"
		input[x] = "e"
	when "e"
		input[x] = "i"
	when "i"
		input[x] = "o"
	when "o"
		input[x] = "u"
	when "u"
		input[x] = "a"
	else 
	end
	x += 1
	end
return input
end

#NEXT_CONS method swaps consonants for next consanant
def next_cons(input)
x = 0
input.length.times do
	input[x].gsub!('z','b')
	input[x].gsub!('y','z')
	input[x].gsub!('x','y')
	input[x].gsub!('w','x')
	input[x].gsub!('v','w')
	input[x].gsub!('t','v')
	input[x].gsub!('s','t')
	input[x].gsub!('r','s')
	input[x].gsub!('q','r')
	input[x].gsub!('p','q')
	input[x].gsub!('n','p')
	input[x].gsub!('m','n')
	input[x].gsub!('l','m')
	input[x].gsub!('k','l')
	input[x].gsub!('j','k')
	input[x].gsub!('h','j')
	input[x].gsub!('g','h')
	input[x].gsub!('f','g')
	input[x].gsub!('d','f')
	input[x].gsub!('c','d')
	input[x].gsub!('b','c')
x += 1
end
return input
end

# This method splits name full name into
# first and last names and then swaps them after removing caps.
# Then runs the Vowel and Cons methods 
# Then rejoins the letters and words into a name
def aliasizer(input)
split_name = input.downcase.split(' ').reverse
first_name = next_vowel(split_name[0].chars)
last_name = next_vowel(split_name[1].chars)
first_name = next_cons(first_name)
last_name = next_cons(last_name)
new_name = first_name.join.capitalize + " " + last_name.join.capitalize
return new_name
end

# blank starting values
real_name = ''
agent_list = []

#User interface
until
puts "What agent name would you like to get an alias for? (type 'quit' to quit)"
real_name = gets.chomp
break if real_name == "quit"
agent_list.push(real_name, aliasizer(real_name))
end

# Out puts the entire array of agents
real = 0
fake = 1
loop_timer = agent_list.length
loop_timer = loop_timer / 2
loop_timer.times do
puts "#{agent_list[real]} is also known as #{agent_list[fake]}."
real += 2
fake += 2
end
