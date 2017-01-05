# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Requires 'state_data' file in the same directory. 
#
require_relative 'state_data'
class VirusPredictor
  # initializes new instances of VirusPredictor with class properties.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls the predicted_deaths and speed_of_spread methods 
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
  # calculates expected death based on the values of the state hash in state_data.
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # determines how long will take for virus to infect the state based on density of pop. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5
    if @population_density >= 200
      speed = 3.0
    elsif @population_density >= 150
      speed = 3.5
    elsif @population_density >= 100
      speed = 4.0
    elsif @population_density >= 50
      speed = 4.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
STATE_DATA.each do |state_name,state_info| 
  VirusPredictor.new(state_name,state_info[:population_density],state_info[:population]).virus_effects
end
#=======================================================================
# Reflection Section
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
  # immediatly that they had unneccesary variables

# What concept did you most solidify in this challenge?
  # that repition is avoidable in most cases, simple code is easier to work with, and i need to be more confident because i know what i am doing lol