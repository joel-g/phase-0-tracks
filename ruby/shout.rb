module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yell_happily(words)
		words + "!!!" + "  :)"
	end
end

p Shout.yell_happily("This is a happy test")
p Shout.yell_angrily("This is an angry test")