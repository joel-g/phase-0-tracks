#swap first name

#down case everything

#split into two strings

#change vowels to next vowel (aeiou) - compare against vowel string

#change the consonants to the next consanant - compare against consanant string

#deal with Z

#join

#capitalize

#reverse and split full name
real_name = gets.chomp

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

def next_cons(input)
x = 0
input.length.times do
	input[x].gsub!('j','k')
x += 1
end
return input
end

def aliasizer(rn)
split_name = rn.downcase.split(' ').reverse
first_name = next_vowel(split_name[0].chars)
last_name = next_vowel(split_name[1].chars)
first_name = next_cons(first_name)
last_name = next_cons(last_name)
new_name = first_name.join.capitalize + " " + last_name.join.capitalize
return new_name
end

p aliasizer(real_name)

# x = 0
# last_name.length.times do
# case last_name[x]
# when "a"
# 	last_name[x] = "e"
# when "e"
# 	last_name[x] = "i"
# when "i"
# 	last_name[x] = "o"
# when "o"
# 	last_name[x] = "u"
# when "u"
# 	last_name[x] = "a"
# else 
# end
# x += 1
# end

# p first_name
# p last_name
