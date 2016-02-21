# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input:
	# For new class: an integer representing the number of sides
	# For .sides method, just a call of the method
	# For .roll, just a call of the method
# Output:
	# For new class: an argument error message, or an initialization of a class
	# For .sides method, an integer
	# For .roll, an integer
# Steps:
	# For new class:
		# check the number passed to the arguments
		# Return an argumenterror IF the number is less than 1
		# Set the instance parameter equal to the sides
	# For .sides method
		# Return the instance parameter sides
	# For .roll method
		# return a random number integer between 1 and the instance parameter sides

# 1. Initial Solution

=begin
class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("Die must have at least 1 side")
  	else @sides = sides
  	end
    # code goes here
  end

  def sides
  	return @sides
    # code goes here
  end

  def roll
  	return rand(@sides) + 1
    # code goes here
  end
end
=end

# 3. Refactored Solution

class Die
  def initialize(sides)
  	unless sides < 1
  		@sides = sides
  	else
  		raise ArgumentError.new("Die must have at least 1 side")
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	return rand(@sides) + 1
  end
end

# 4. Reflection
=begin
	
	
# What is an ArgumentError and why would you use one?
	# An ArgumentError is a way to provide feedback to the user that argument(s) provided (to a class or a method for example)
	# is/are unacceptable by that class/method for example. It is needed in the case where Ruby doesnt know what to do with the arguments
	# provided, or when we want to let the user know that a different argument should be provided.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	# None. This seems like boilerplate reflection questions for the wrong challenge.

# What is a Ruby class?
	# A ruby class is like a predefined "blue-print" that can be used to quickly create certain types of objects.
	# It uses class variables to pass attributes, and methods to pass behavior, to objects that are created as instances of it. 
	# The example in this challenge would be useful if we were making a lot of die with various sides as part of our code, and then
	# rolling the die to randomly generate the result/side. The class in that case would allow for quick creation and rolling
	# because there is a blue-print available to work with

# Why would you use a Ruby class?
	# Per the answer above, it saves the time and code that would otherwise have to e repeated again and again to make/do
	# something that is similar in nature. Imagine if we had to create and define the behaviors of a string or a fixnum each
	# time we wanted to use one. That would be right mental, and therefore its great to have access to a string class and a fixnum class

# What is the difference between a local variable and an instance variable?
	# A local variable is a variable that is defined inside an object. It therefore only has scope (can be accessed and used)
	# inside that method
	# An instance variable is a variable that is defined within a class. It has scope (can be used and accessed) across methods
	# for an object instance of the class that defined the instance variable

# Where can an instance variable be used?
	# An instance variable can be used across methods for an object that was created as an instance of the class which defined the instance variable

=end