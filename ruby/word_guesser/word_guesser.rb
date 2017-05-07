

class Guess
	def initialize(word)
		@word = word
		@placeholder = ""
		until @placeholder.length == word.length
			@placeholder << "_"
		end
	end
	def try_letter(letter)
		@word.each_char do |x|
			if x == letter
				then @placeholder[word.index(x)] = letter
			end
		end
		@placeholder
	end
	attr_reader(:word, :placeholder)
end




guess = Guess.new("hello")

p guess.try_letter("l")
p guess.try_letter("l")
p guess.try_letter("h")
p guess.try_letter("o")
p guess.try_letter("e")
p guess.try_letter("l")