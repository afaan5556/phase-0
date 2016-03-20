# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
=begin
Define the function that takes an array as an argument
Iterate over the array performing following control logic at each step
	IF yielded number is multiple of 3 AND 5, set it equal to "FizzBuzz"
	IF yielded number is multiple of 3, set it equal to "Fizz"
	IF yielded number is a multiple of 5, set it euqal to "Buzz"
	return the updated array
=end


# Initial Solution

=begin

def super_fizzbuzz(array)
	for i in (0..array.length-1)
		if array[i] % 3 == 0 && array[i] % 5 == 0
			array[i] = "FizzBuzz"
		elsif array[i] % 3 == 0
			array[i] = "Fizz"
		elsif array[i] % 5 == 0
			array[i] = "Buzz"
		end		
	end
	return array
end

=end



# Refactored Solution

def super_fizzbuzz(array)
	array.map! {|i|
		if i % 3 == 0 && i % 5 == 0
			i = "FizzBuzz"
		elsif i % 3 == 0
			i = "Fizz"
		elsif i % 5 == 0
			i = "Buzz"
		else i = i
		end
		}		
	return array
end
super_fizzbuzz([15, 3, 1, 5, 33, 35])

# Reflection