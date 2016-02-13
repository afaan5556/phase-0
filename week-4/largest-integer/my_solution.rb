# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

def largest_integer(list_of_nums)
# Your Solution Below
# Refactored solution
	return list_of_nums.max
end
=begin
# Initial Solution
  smallest = list_of_nums[0]
  list_of_nums.each do |n|
  	if smallest < n
  		smallest = n
  	end
  end
  return smallest
end
=end 