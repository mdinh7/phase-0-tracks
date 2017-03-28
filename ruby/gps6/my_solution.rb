# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Locate the file that needs to be linked ie. data for this class

require_relative 'state_data'

class VirusPredictor

  # Initializing instance variables to be used throughout the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Method that runs the other methods
  def virus_effects  
    predicted_deaths
    speed_of_spread
  end

  private

  # Calculates number of deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when  200..Float::INFINITY then percentage = 0.4
    when 150..199 then percentage = 0.3
    when 100..149 then percentage = 0.2
    when 50..99 then percentage = 0.1
    else percentage = 0.05
    end

    number_of_deaths = (@population * percentage).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determines the speed of the virus spreading based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case @population_density
    when 200..Float::INFINITY
      speed = 0.5
    when 150..199
      speed = 1
    when 100..149
      speed = 1.5
    when 50..99
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do  |state, population_facts|
  new_state = VirusPredictor.new(state, population_facts[:population_density], population_facts[:population])
  new_state.virus_effects
end


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
# The difference between the two hash syntaxes shown, are that they key can be a symbol or a string
# depending on what you use it for.
#
# Require_relative allows you to link a file for use, in this case we linked the STATE_DATA so that 
# we could use that data in our code. The difference from require, is that require allows you to link
# a file from outside the folder, by referencing where it is in the file structure.
#
# To iterate through a hash you can use .each or .map, in this pairing we used .each
#
# In virus_effects we noticed that b/c of the scope of the instance variables, restating those variables
# was more or less doing nothing.
#
# The concept that I solidified most in  this challenge was refactoring, as I had never used a case
# statement before, it was interesting to learn about, and be able to implement that.