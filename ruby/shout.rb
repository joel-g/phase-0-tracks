# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yell_happily(words)
# 		words + "!!!" + "  :)"
# 	end
# end

# p Shout.yell_happily("This is a happy test")
# p Shout.yell_angrily("This is an angry test")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yell_happily(words)
		words + "!!!" + "  :)"
	end
end

class Kid
	include Shout
end

class Adult
	include Shout
end


diego = Kid.new
dad = Adult.new

p diego.yell_angrily("I'm so angry!")
p dad.yell_happily("I'm so happy!")