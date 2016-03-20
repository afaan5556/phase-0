# I worked on this challenge by myself.
# This challenge took me 1 hour.

# Pseudocode

=begin
Define the function that takes the argument
Set up 3 variables
	The first 2 variables are the first 2 Fiobnacci numbers (0 and 1)
	The third variable should be the next Fibonacci number (the sum of the first two)
Set up a WHILE loop that checks if all three newly set up variables are less than the argument number
WHILE that is true
	Update variable 1 so it is equal to variable 2
	Update variable 2 so it is equal to variable 3
	Update variable 3 so it is equal to the sum of variable 1 and 2
	Check the condition again
IF the number is equal to the argument at any step
	Return true
ELSE keep looping UNTILL the number becomes larger than the argument
	Return FALSE
=end


# Initial Solution

=begin

def is_fibonacci?(num)
	fibonacci_1 = 0
	fibonacci_2 = 1
	fibonacci_next = fibonacci_1 + fibonacci_2
	if num == fibonacci_1 || num == fibonacci_2
		return true
	else
		while fibonacci_next <= num
			fibonacci_1 = fibonacci_2
			fibonacci_2 = fibonacci_next
			fibonacci_next = fibonacci_1 + fibonacci_2
			if fibonacci_next == num
				return true
			elsif fibonacci_next > num
				return false
			end
		end
	end
end
=end

# Refactored Solution

def is_fibonacci?(num)
	fibonacci_1 = 0
	fibonacci_2 = 1
	fibonacci_next = fibonacci_1 + fibonacci_2
	if num == fibonacci_1 || num == fibonacci_2
		return true
	else
		while fibonacci_next <= num
			fibonacci_1 = fibonacci_2
			fibonacci_2 = fibonacci_next
			fibonacci_next = fibonacci_1 + fibonacci_2
			if fibonacci_next == num
				return true
			elsif fibonacci_next > num
				return false
			end
		end
	end
end

# p is_fibonacci?(4)

# Reflection