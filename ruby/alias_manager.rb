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
vowels = ['u', 'o', 'i', 'e', 'a']
split_name = real_name.downcase.split(' ').reverse
# cut up names
first_name = split_name[0].chars
last_name = split_name[1].chars

x = 0
first_name.length.times do
case first_name[x]
when "a"
	first_name[x] = "e"
when "e"
	first_name[x] = "i"
when "i"
	first_name[x] = "o"
when "o"
	first_name[x] = "u"
when "u"
	first_name[x] = "a"
else 
end
x += 1
end

x = 0
last_name.length.times do
case last_name[x]
when "a"
	last_name[x] = "e"
when "e"
	last_name[x] = "i"
when "i"
	last_name[x] = "o"
when "o"
	last_name[x] = "u"
when "u"
	last_name[x] = "a"
else 
end
x += 1
end



p first_name
p last_name
p split_name
# p first_name
# p last_name
