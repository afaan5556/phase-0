# I worked on this challenge with Ryan Dempsey


# Your Solution Below


def valid_triangle?(a, b, c)
  # Your code goes here!
  array = []
  array << a
  array << b
  array << c
  array.sort!
  array.reverse!
  # Check for zero values
  if array.include? 0
  	return false
  elsif array[0] < array[1] + array[2]
    return true
  else
    return false
  end
end