# Die Class 2: Arbitrary Symbols


# I worked on this challenge by mysely.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A randomly selected string, or an integer representing the number of sides
# Steps: For the sides method, calculate and return the length of the array. For the roll method, set up a random numer generator
# that picks a numer at random between 1 and the total number of sides, and returns the string at the corresponding position in the array



# Initial Solution
=begin
	
	
class Die
  def initialize(labels)
  	if labels.length == 0
  		raise ArgumentError.new("Die must have at least 1 side")
  	end
  	@label_array = []
  	labels.each {|label| @label_array.push(label)}
  end

  def sides
  	return @label_array.length
  end

  def roll
  	return @label_array[rand(0..@label_array.length-1)]
  end
end

=end
# Refactored Solution
# Collapse if condition test into single line if statement
# set @lables instance variable to the argument array

class Die
  def initialize(labels)
  	raise ArgumentError.new("Die must have at least 1 side") if labels.length == 0
  	@labels = labels
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels[rand(0..@labels.length-1)]
  end
end

# Reflection

=begin

- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
	
	The previous die class challenge involved accepting an integer as the class initialization argument. This time we
	had to accept a non-empty array. I didn't really refer to the old challenge when solving this challenge, so it was not
	really a matter of "changing" the logic but rather comparing once complete. It does look similar.

- What does this exercise teach you about making code that is easily changeable or modifiable?

	It shows that it is pretty useful to do that, but also the value of having doe it yourself.
	I was more comfortable going back to code I had written and was familiar with when making
	this comparison, than I would have been looking at someone elses code and style

- What new methods did you learn when working on this challenge, if any?

	I was familiar with a one line if conditional control flow but had not used it till this challenge.
	No new methods per say.

- What concepts about classes were you able to solidify in this challenge?

	The concept of setting an instance variable equal to the received argument. I did not do this in my initial solution
	but realized that I should have, and then picked this up in my refactored solution.

=end