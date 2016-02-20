# Calculate the mode Pairing Challenge

# I worked on this challenge with Jackie Feminella

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 1. Initial Solution

=begin
def mode(array)
  mode_hash = Hash.new(0)
  array.each do |n|
    mode_hash[n] += 1 
  end
  max = mode_hash.values.max
  output_array = []
  mode_hash.each do |k, v|
    if v == max
      output_array << k
    end
  end
  p output_array
end
=end

# 3. Refactored Solution

def mode(array)
  mode_hash = Hash.new(0)
  array.each {|n| mode_hash[n] += 1}
  max = mode_hash.values.max
  output_array = mode_hash.map {|k, v| if v == max then k end}  
  p output_array.compact
end

# 4. Reflection
=begin
	

# Which data structure did you and your pair decide to implement and why?
	# We decided to implement a hash. We both came up with it at the same time while psuedocoing.
	# It seemed like a good way to track both the items in the input array and their frequencies side by side
	# Curious to know if there are better structures to store them than a hash

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
	# We agreed at the end that we were. We were able to identify and articulate each basic step, and knew what each step would receive and pass along
	# We were also ale to stitch these little steps together to go from the overall input to the output
	# The resulting psuedocode looked very much like lines of code except for the syntax and language specific notations

# What issues/successes did you run into when translating your pseudocode to code?
	# Most of the translation steps were straightforward. We struggles a little bit with coding the step that involved
	# locating the highest value in the hash and returning its corresponding key (and pushing that key into an array)
	# but we discussed a few sub-steps and were able to figure it out quickly

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	# We used .each and .map
	# Though we collapsed some lines of code during the refactoring stage, we agreed that the use of .map was the only "true refactoring"
	# that we were able to accomplish. We spent some time to find a similar method for the first half of the solution but were unsuccessful


=end