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
  def initialize
    puts "Initializing new Puppy instance"
  end
end
daisy = Puppy.new
daisy.fetch("tennis ball")
daisy.speak(5)
daisy.roll_over
puts daisy.dog_years(2)
daisy.sit
class Kitten
    def initialize
        puts "Initializing Kitten instance ..."
    end
    def meow(int)
        int.times do
            puts "meow"
        end
    end
    def scratch
        puts "The cat scratched you"
    end
    def sleep
        puts "zzz...zzz...zzz"
    end
end
kittens = []
50.times do
    kittens << Kitten.new
end
#p kittens
kittens.each do |instance|
    instance.scratch
    instance.meow(1)
    instance.sleep
end