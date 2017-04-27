#swap first name

#down case everything

#split into two strings

#change vowels to next vowel (aeiou) - compare against vowel string

#change the consonants to the next consanant - compare against consanant string

#deal with Z

#join

#capitalize


vowels = ['a', 'e', 'i', 'o', 'u']

def alias(input)
new_name = input.downcase.split(' ').reverse
end

puts alias(gets.chomp)
# def vowelizer

# end

# puts alias(normal_name)
# first_name = new_name[0].chars
# last_name = new_name[1].chars
# puts first_name
# puts last_name

# p first_name
# p last_name
