# take in word
# loop once for each letter
# if letter is a space skip it
# if letter is a Z change it to A
# else change letter to next value


def encrypt(word)
x = 0
	word.length.times do	
		if word[x] == " "
		elsif word[x] == "z"
			word[x] = "a"
		else 
			word[x] = word[x].next
		end
		x += 1
	end
return word
end

def decrypt(word)
alphabet = "abcdefghijklmnopqrstuvwxyz"
x = 0
	word.length.times do
	if word[x] == " "
	else
		place = alphabet.index(word[x])
		place -= 1
		word[x] = alphabet[place]
		end
	x +=1
	end 
return word
end

#puts encrypt("this is a test")
#puts decrypt(encrypt("this is a test"))

#Nested method works because we utilized an implicit return

#ask agent to E or D a password
#ask agent for the password
#do it
	puts "Would you like to encrypt or decrypt?"
	if gets.chomp == "encrypt"
		puts "what is the password to encrypt?"
		puts encrypt(gets.chomp)

	else
		puts "what is the password to decrypt?"
		puts "DECRYPTED MESSAGE IS: #{decrypt(gets.chomp)}"
	# else
	# 	puts "must type 'encrypt' or 'decrypt'"
	end