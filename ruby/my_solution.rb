# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
#
# ties the files to state_data.rb
# 'require_relative' looks in the same directory as current file
# 'require' is typically used to point to a path like 'secure.random' or a ruby file.
require_relative 'state_data'
# initializ class
class VirusPredictor
  # every instance of the class will have a state, dencity, and a population as attributes
  # data input will return instance values accordingly
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls methods from set variables into other methods
  # predicts spread and death rates 
  
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

  # while population is meeting specified denisty, then a predicted death is
  # printed by "population" - "set percentage" 
  def predicted_deaths()
    # predicted deaths is solely based on population density

    population_multiplier = 0.5
    if @population_density >= 200
       population_multiplier = 0.4
    elsif @population_density >= 150
      population_multiplier = 0.3
    elsif @population_density >= 100
      population_multiplier = 0.2
    elsif @population_density >= 50
      population_multiplier = 0.1
    end
    number_of_deaths = (@population * population_multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # While population is meeting a specific density, it will print out how fast
  # per month, an outbreak will spread.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, state_info|
  state_name = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  state_name.virus_effects
end

#=======================================================================
# Reflect Section:

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # syntax style 1: 'state' => {example} (string is key)
  # syntax style2: 'symbol:' is constant, (it is an unchanging variable)

# What does require_relative do? How is it different from require?
  # 'require_relative' looks in the same directory as current file
  # 'require' is typically used to point to a path like 'secure.random' or a ruby file.

# What are some ways to iterate through a hash?

  # * how will a hash be more effective in my code?
  # * what is a relevent name for the data hash?
  # * how many variable will each hash need?
  # * "subject" => {data}

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # immediatly that they were unneccesary

# What concept did you most solidify in this challenge?
  # that repition is avoidable in most cases, simple code is easier to work with, and i need to be more confident because i know what i am doing lol

