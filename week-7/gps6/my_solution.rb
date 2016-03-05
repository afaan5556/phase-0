# Virus Predictor

# I worked on this challenge with Brian Donahue.
# We spent 2.25 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# Require is used to draw into a program items such as gems or other preinstalled external library applications.
# Require_relative is used when trying to provide one file with a path to another.

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # When class is called, performs the first creation of memory for that class and initializes the passed arguments.  In this case, we have three instance variables established.

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end
# Implicitly returning speed_of_spread which in turn takes two instance variables as inputs to that method. Also calling predicted_deaths which takes three instance variables as arguments. Predicted_deaths prints a message. Because it is "print" and not "puts," the sentence is continous upon output.
  private

  def predicted_deaths
    # predicted deaths is solely based on population density

# ________________________ REFACTORED PREDICTED_DEATHS CONDITION BLOCK _______________________________________

    case @population_density
    when 0...50
      number_of_deaths = (@population * 0.05).floor
    when 50...100
      number_of_deaths = (@population * 0.1).floor
    when 100...150
      number_of_deaths = (@population * 0.2).floor
    when 150...200
      number_of_deaths = (@population * 0.3).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

# ________________________ ORIGINAL PREDICTED_DEATHS CONDITION BLOCK _______________________________________
      
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

     # The method  accepts 3 instance variables (pop density, pop, and state )
     # It then uses a conditional code block to examine the pop_density and population instance variables
     # The method prints out a message that uses the result of the conditional block and the state instance variable

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

# ________________________ REFACTORED SPEED_OF_SPREAD CONDITION BLOCK _______________________________________

    case @population_density
    when 0...50
      speed += 2.5
    when 50...100
      speed += 2
    when 100...150
      speed += 1.5
    when 150...200
      speed += 1
    else
      speed += 0.5
    end

# ________________________ ORIGINAL SPEED_OF_SPREAD CONDITION BLOCK _______________________________________

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

# This is a method that accepts 2 instance variables (pop_density, and state)
# Output is a puts statement containing the calucated speed of spread, also puts 2 new lines (perhaps to create a break/whitespace)
# The method uses a conditional code block that increases local variable speed based on the instance variable population density

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 # SHould the new feature belong inside or Outside?
  # It should be outside as we are refactorin our driver code

# Psuedocode
  # Inputs: The STATE Hash data
  # Output: The printed message for each of the 50 states (that combines the predicted deaths and speed of spread methods)
  # Steps:
    # Iterate over the STATE_DATA hash
    # For each yield call the class
    # Keep the nested nature of the STATE_DATA in mind
    # Provide the class with arguments (as below)
    # Call the virus_effects method at each step of the iteration
      # 

    # Initial driver code
      # Calling the class
      # Providing
        # a string as the state of origin
        # the first  hash inner key as the pop_density argument
        # the second hash inner key as the population argument
      # Stores the result of that class_instance in a variable
      # Calls the virus effects method on that variable


    # Think about different variable names


# ________________________ REFACTORED DRIVER CODE _______________________________________

STATE_DATA.each do |state_key, state_key_metric|
  a = VirusPredictor.new(state_key, state_key_metric[:population_density], state_key_metric[:population])
  a.virus_effects
end

# ________________________ ORIGINAL DRIVER CODE _______________________________________

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

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One of the hash's uses the literal notation and uses strings as keys
  # The other hash uses the hash-rocket notation with symbols as keys

# What does require_relative do? How is it different from require?
  # Require relative provides access to files saved in a directory for which a path is provided as part of the require_relative statement
  # Require provides access to ruby library elements that are installed as part of the ruby installation (such as gems) but not accessible by default for all files

# What are some ways to iterate through a hash?
  # Using enumerable methods such as each and map
  # Setting up a for loop

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # What stood out was that there didn't seem to be a need for instance variables to be provided as arguments
  # This was only the case because speed of spread and predicted deaths were usin method arguments instead of instance variables, and so virus effects was forced to do that. By using instance variables in speed_of_spread and predicted_deaths, we were able to remove method arguments, and make virus_effects very DRY

# What concept did you most solidify in this challenge?
  # Accessing nested hash keys and values and the use of symbols to to do this 
  # How to use case/when conditional blocks to check on integers rather than strings