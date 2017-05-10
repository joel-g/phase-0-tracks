### REFLECTION
# What are the differences between the two different hash syntaxes shown in the state_data file?
    # one has a symbols for keys and the other has strings for keys
# What does require_relative do? How is it different from require?
    # require relative searches the current file's working directory while require searches the ruby kernel
# What are some ways to iterate through a hash?
    # .each and .map. Loops can also be used to iterate through an array
# When refactoring virus_effects, what stood out to you about the variables, if anything?
    # They were all public variables so we didn't need to pass them in as arguments
# What concept did you most solidify in this challenge?
#    Private vs Public

# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Imports another file, effectively copying and pasting its contents into the first file.
# Require relative grabs data from the folder your file is currently in.


require_relative 'state_data'

class VirusPredictor

  #When new object is created sets the attributes from state_data.rb
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# prints total deaths and how long it will take.
  def virus_effects 
    predicted_deaths 
    speed_of_spread
  end

  private
# Determines death rate based on population density
  
  def death_rate
    if @population_density >= 200
      return [0.4, 0.5]
    elsif @population_density >= 150
      return [0.3, 1]
    elsif @population_density >= 100
      return [0.2, 1.5]
    elsif @population_density >= 50
      return [0.1, 2.0]
    else
      return [0.05, 2.5]
    end
  end

  def predicted_deaths
    # predicted deaths is solely based on population density
     number_of_deaths = (@population * death_rate[0]).floor
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    speed = death_rate[1]
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each {|state|
  virus_predictor = VirusPredictor.new(state[0], STATE_DATA[state[0]][:population_density], STATE_DATA[state[0]][:population])
virus_predictor.virus_effects
}


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section