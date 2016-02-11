# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Mike V

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of array elements
# Steps to solve the problem.


=begin

FOR NUMBERS
1. Get the array
2. Add up each element of the array
3. Return the sum of the additions


=end

# 1. total initial solution

def total(array)
	sum = 0
	for i in array do
		sum = i + sum		
	end
	return sum
end

# 3. total refactored solution

def total(array) array.reduce(:+) end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: Single sentene that combines the array elements 
# Steps to solve the problem.

=begin
	
FOR STRINGS
1. Get the array
2. Add up each string of the array
3. Return the resulting sentence that comines all strings in the array
	
=end

# 5. sentence_maker initial solution

def sentence_maker(array)
	sentence = ""
	count = 0
	while count < (array.length-1) do
		sentence = sentence + array[count].to_s + " "
		count += 1
	end
	sentence = sentence + array[-1]
	sentence = sentence + "."
	sentence[0] = sentence[0].capitalize
	return sentence
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
	sentence = array.join(" ") + "."
	sentence[0] = sentence[0].capitalize
	return sentence
end
