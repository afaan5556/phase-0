# Pad an Array

# I worked on this challenge with Alana Farkas

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? array, min_size, pad_value
# What is the output? array 
# What are the steps needed to solve the problem?

# For destructive
# calculate length of array
# compare length against min_size
# IF min_size <= length RETURN array
# IF length < min_size THEN pad
# Iterate "x" times through loop, each time pushing in the pad_value into the array
# where x is minimum_size - array_length

# For non-destructive, same as above, except create new local array
# Push the elements of the argument array into the new array
# do above operations on local array, and return it

# 1. Initial Solution
=begin
	
	
def pad!(array, min_size, value = nil) #destructive
  length = array.length  
  if min_size <= length
    return array
  
  else 
  count = min_size - length  
    count.times { |n| array << value }     
    end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  array.each {|n| new_array << n}
  length = array.length
  
  if min_size <= length
    return new_array
  
  else 
  count = min_size - length  
    count.times { |n| new_array << value }     
  end
  return new_array
end
=end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  
  if min_size <= array.length
    return array
  
  else 
    (min_size - array.length).times { |n| array << value }     
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  
  new_array = []
  array.each {|n| new_array << n}
  
  if min_size <= array.length
    return new_array
  
  else     
    (min_size - array.length).times { |n| new_array << value }     
  end
  return new_array
end

# 4. Reflection

=begin
	

Were you successful in breaking the problem down into small steps?
	Yes. We talked about each step of the problem and had surprisingly similar thoughts on how it would break down.
	That led to a natural pseudocoding session using non-Ruy language

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
	Because we had broken the psuedocode down into small steps (sometimes overkill) it was pretty easy to translate into code
	The step by step psuedocode follows the step by step code lines pretty closely

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	Yes it was. Because we broke the problem down and psuedocded it in ways that meant each line of code was not trying to do too much

When you refactored, did you find any existing methods in Ruby to clean up your code?
	Our refactoring was the most interesting part of this session. We did not find ruby methods that could help clean up the code
	but we did find ways to reduce the amount of code. However, we both agreed that though this reduced the number of lines of code
	it made it less readable, and therefore not necessarily "better" However, we figured that if we practice taking such steps,
	perhaps our reading skill will improve and so did implement the refactoring.

	
How readable is your solution? Did you and your pair choose descriptive variable names?
	I think the code is readable, but it is a pretty short piece of code, and there isn't a whole lot going on.
	We did choose names that made intuitive sense to us, but I can imagine that in larger and longer pieces of code
	that more thought would need to be given to variable names	

What is the difference between destructive and non-destructive methods in your own words?
	Non-destructive methods operate on an object to return a new object as the result of that operation. The original object remains unchanged
	Destructive methods operate operate on an object, change it in the process, and return the object itself as it stands as a result of that operation. The original object therefore changes
	

=end
