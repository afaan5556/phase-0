# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  # Initial solution
=begin
  array_3 = []
  array_1.each do |n|  
    array_3.push n
  end
  array_2.each  do |m|
    array_3.push m
  end
  return array_3
end
=end
  # Refactored solution
  return array_1.concat array_2
end
