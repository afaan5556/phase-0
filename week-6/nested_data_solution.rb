# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element| 
  if element.is_a?(Array) 
    element.map! {|array_element| array_element += 5}
    else
      element += 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.is_a?(Array)
    element.map! do |sub_element|
      if sub_element.is_a?(Array)
        sub_element.map! {|sub_sub_element| sub_sub_element += "ly"}
        else
        sub_element += "ly"
      end
    end
      else
      element += "ly"
  end
end
p startup_names


=begin

NOTE: SOLUTIONS ABOVE ASSUME THAT THE INTENT IS TO MAINTAIN THE DATA STRUCTURE IN THE END

THE FOLLOWING SINGLE LINE OF CODE CAN ITERATE TROUGH ARRAY ELEMENTS, SUB-ELEMENTS, AND SUB-SUB-ELEMENTS
=> startup_name.map! do {|element| puts element}

# What are some general rules you can apply to nested arrays?
  => You can access them with sequential square brackets []
  => For eaxample array[4][0][1] would return the second element, within the first array-element, within the fifth array-element for this example array
  => You can have any kind of data structure in a nested array. An nested array could have hashes in it


# What are some ways you can iterate over nested arrays?
  => The same enumerate methods can e applied to nested arrays as are applied to one-dimensional arrays
  => puts can be used instead of p to iterate over the inner arrays while outputting the result

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  => If maintaining the data structure is not important, then .flat_map would have been a cool new method to use
  => We played and solidified our understanding of map, map!, and each through this exercise
  => The instructions sometimes specifies whether destructive or non-destructive methods are needed, but other times they do not
  => Also, it was not clear if the original data structure needed to e preserved. We chose to preserve it

=end
