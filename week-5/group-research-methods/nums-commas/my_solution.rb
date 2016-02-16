# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
	# A positive integer
# What is the output? (i.e. What should the code return?)
	# A string (representing the comma-separated integer)
# What are the steps needed to solve the problem?
	# Convert the integer into a string
	# Calculate the length of the string
	# IF the length of the string is <= 3
		# Return the string
	# ELSE
		# Create an empty array
		# Calculate the digits that need to go in before the first comma
			# This can be calculated as (length - 3*((length-1)/3)
			# Call this value front
			# Create a loop that runs front times, each time it runs is should
				# Push a digit of the string into the array
		# Find out how many whole integer units of 3-digits are in the (string length - 1)
			# i.e. calculate (string.length - 1) / 3 
			# Call this value back - this is the number of commas that will be needed
		# Create a loop that runs "back" times, each time it runs it should
			# add a "," at the end of the array
			# add the next 3 elements of the string 
		# Join the resulting array into a string
		# Return the resulting string

		# NUMBER PATTERNS

		# 2 - 0: 10
		# 3 - 0: 100
		# 4 - 1: 1,000
		# 5 - 1: 10,000
		# 6 - 1: 100,000
		# 7 - 2: 1,000,000
		# 8 - 2: 10,000,000
		# 9 - 2: 100,000,000
		# 10 - 3: 1,000,000,000
		
		# "FRONT" PATTERNS

		# 4:  1 = 4 - 3*1  => (4-1)/3  = 1
		# 5:  2 = 5 - 3*1  => (5-1)/3  = 1
		# 6:  3 = 6 - 3*1  => (6-1)/3  = 1
		# 7:  1 = 7 - 3*2  => (7-1)/3  = 2
		# 8:  2 = 8 - 3*2  => (8-1)/3  = 2
		# 9:  3 = 9 - 3*2  => (9-1)/3  = 2

		# 4: 1 => 4 - 3*(4-1)/3 = 1
		# 5: 2 => 5 - 3*(5-1)/3 = 2 
		# 6: 3 => 6 - 3*(6-1)/3 = 3
		# 7: 1 => 7 - 3*(7-1)/3 = 1
		# 8: 2 => 8 - 3*(8-1)/3 = 2
		# 9: 3 => 9 - 3*(9-1)/3 = 3

		# "BACK" PATTERNS
		# 4:  1 = (4-1)/3
		# 5:  1 = (5-1)/3
		# 6:  1 = (6-1)/3
		# 7:  2 = (7-1)/3
		# 8:  2 = (8-1)/3
		# 9:  2 = (9-1)/3

# 1. Initial Solution
=begin ____________________________________________________________
def separate_comma(int)
	my_string = int.to_s
	len = my_string.length
	if len <= 3
		return my_string
	else
		my_array = []
		front = len - 3*((len-1)/3)
		back = (len-1)/3
		count_1 = 0
		while count_1 < front do
			my_array[count_1] = my_string[count_1]
			count_1 += 1
		end
		count_2 = 0
		while count_2 < back
			my_array.push ","
			my_array.push my_string[(count_1 + count_2*3)..(count_1 + count_2*3 + 2)]
			count_2 += 1
		end
	end
	return my_array.join
end

_________________________________________ =end

# 2. Refactored Solution

=begin

Simplication

1. Use an implicit return at the end
2. Combine the 2 array push lines into 1
3. Move all variable declarations to top

=end

def separate_comma(int)
	my_string = int.to_s
	len = my_string.length
	count_1 = 0
	count_2 = 0
	if len <= 3
		return my_string
	else
		my_array = []
		front = len - 3*((len-1)/3)
		back = (len-1)/3
		while count_1 < front do
			my_array[count_1] = my_string[count_1]
			count_1 += 1
		end
		while count_2 < back
			my_array.push "," + my_string[(count_1 + count_2*3)..(count_1 + count_2*3 + 2)]
			count_2 += 1
		end
	end
	my_array.join
end


# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?
	I initially broek the problems down into aout 4 or 5 steps thinking that was enough.
	I quickly realized though that I was still trying to do too much in a single line of code in some cases,
	and that I had in face, jumped into the coding too quickly. I then took the pseudocoding portion more seriously
	and broke the problem down into more like 10 - 12 steps.

Was your pseudocode effective in helping you build a successful initial solution?
	Absolutely. As stated above, the second, more serious pseudocoding effort is what got me over the finish line.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
	For this challenge I was not ale to find array methods that were immediately helpful to the solution approach chosen.
	I was already using .join and te slice method in the initial solution, and the rest is just control flow  

How did you initially iterate through the data structure?
	Similar to my final solution, but I was cleaning it up a lot as I went, and so my initial solution is actually a working solution
Do you feel your refactored solution is more readable than your initial solution? Why?
	To a limited extent actually - the only real clean-up I did was get rid of an explicit return, which as a newbie, makes it harder for me
	to see what is bein returned, but I am trying to get into the habbit of taking advantge of implict returns.
	The other change I made saved a line of code, but in my opinion makes the operation harder to follow. Moving variable declarations
	to the top is probably cleaner though.
	
=end