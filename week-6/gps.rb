# Your Names
# 1) Blair White
# 2) Afaan Naqvi

# We spent 2 hours on this challenge.

# PSUEDOCOCE AND STEP-BY-STEP DISCUSSION OF ORIGINAL CODE - LEFT IN FOR REFERENCE
=begin
#  defined a method with 2 arguments
  # Created a hash "library" with foods and ingredient counts
# check item_to_make against library hash keys and raise an argument if key is not found
  
  # Iterating through the library hash
  # If item-ingredient-count is not equal to the order ingredient-counts
  # Subtracts 1 from counter
 
  # Pull sin error counter variable
  # If anyu errors (if counter is greater than 0) raise an error
     
  # Compare number of ingredients against value of food in library and store remainder of % in remainder variable
  # Check the value of the food at the "item_to_make" position
  # This returns an array, anf the [0] returns the first (and only) element of that array
  # Calculate remaining ingredients which is the remainder of the number of ingredients and the serving size

# Conditional statements on remaining_ingredients variable
# WHEN 0 => Return a string stating that
# WHEN not 0 => Return a string telling you how much of the item can be made, and how many remaining ingredients there will be
=end

# Child method that checks if item is made by bakery
def is_it_bakable(item_to_make, library)
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
end

# Child method that returns cookie making suggestion
# Used to teach ourselves how to call a method from inside another method, and not repeat the return message in the same place
def suggested_bake(remaining_ingredients, num_of_ingredients, ingredients_needed, item_to_make)
  return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You should bake #{remaining_ingredients} cookies."
end

  
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  is_it_bakable(item_to_make, library)
  ingredients_needed = library[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredients_needed
  
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  else
    suggested_bake(remaining_ingredients, num_of_ingredients, ingredients_needed, item_to_make)
  end
end

# DRIVER CODE
  
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
"good" if p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  REFLECTION
=begin

What did you learn about making code readable by working on this challenge?
=> We learned to find out the intent of the code and ask if there is a fundamentally better way to do it
=> We learned thatwe should try to limit methods to a few lines of code and call children methods
=> This limits the size of the main method and makes it more readable  

Did you learn any new methods? What did you learn about them?
=> We used .has_key? instead of the counter method that was originally in the code
=> We learned that .has_key? is a less expensive / more efficent way of finding a key hit than iterating through all keys

What did you learn about accessing data in hashes? 
=> We learned how to clean up hash access code. We didn't realize how terrible the original code was and agreed
=> that we could have probably solved the challenge from scratch, but looking at the hash-key/value access code at first
=> threw us off. 

What concepts were solidified when working through this challenge?
=> The concept of calling a child method inside a method even when the child method uses variables that are local to the
=> parent method was eye-opening. I was udner the impression that the child method would not have access to these variables
=> We practiced this concept in our refactored solution

=end
