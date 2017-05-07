

class Guess
	
	def initialize(word)
		@word = word.downcase
		@placeholder = ""
			until @placeholder.length == word.length
				@placeholder << "_"
			end
		@guesses_allowed = word.length + 1
	end
	
	def try_letter(letter)
		x = 0
		@correct_letter = nil
		@word.length.times do
			if letter == @word[x]
				then @placeholder[x] = letter
				@correct_letter = true
			end
			x += 1
		end
#This solution seems cleaner but doesn't work if there's multiples of one letter		
				# @word.each_char do |x|
		# 	if letter == x
		# 		then @correct_letter = true    
		# 			@placeholder[word.index(x)] = letter
		# 	end
		@placeholder
	end
	attr_reader(:word, :placeholder, :correct_letter, :guesses_allowed)
end



puts "Player 1: What is your name?"
player1 = gets.chomp
puts "Player 2: What is your name?"
player2 = gets.chomp


puts "

#{player1}, enter a word for #{player2} to try to guess!
(you will not be able to see what you're typing so that Player 2 can't peak)"
require 'io/console' #If I'm not allowed to require libraries I would have just printed a bunch of blank space so that Player 1's word wasn't still visible.
word = STDIN.noecho(&:gets).chomp
guess = Guess.new(word)

puts "

#{player1}'s word is #{@word.length} characters long! 
So #{player2} can try #{guess.guesses_allowed} different letters to figure out #{player1}'s word."

@guesses_allowed.times do
	puts "#{player2} what letter should we try?" 
	guessed_letter = gets.chomp
	guess.try_letter(guessed_letter)
	if @correct_letter
			puts "#{guesses_allowed} is correct! #{player1}'s word looks like this:"
			puts @placeholder
		else
			puts ""
	end
end
		 

