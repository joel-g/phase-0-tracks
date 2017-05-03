class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times do
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(num)
  	dog_age = num * 7
  end	

  def sit
  	puts "*sits*"
  end
end

daisy = Puppy.new

daisy.fetch("tennis ball")
daisy.speak(5)
daisy.roll_over
puts daisy.dog_years(2)
daisy.sit