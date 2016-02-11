#Release 2 - Try it Out


# Full name greeting
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{middle_name} #{last_name}"

# Bigger, better, favorite number
puts "What is your favorite number?"
number = gets.chomp
puts "Would you consider " + (number.to_i + 1).to_s + " to be your favorite number? It is bigger and better than #{number}!"

# REFLECTION
# How do you define a local variable?
# A local variable is a name given to an object which points to the value of that object. They are a way to store information.
# It can be changed, and multiple variables can point to the same object value.
# The following is an example of how to define a local variable called "name" with the stored information the string "George"
# name = "George"


# How do you define a method?
# A method is a chunk of code that can be wrapped up and called to run by invoking its name to begin wrapping the code, and an end statement to end wrapping the code
# A method can accept any number of arguments that can be provided when invoking it and the values given to the arguments when invoking the method get used within the method.
# There are a few different syntax that can be used to define a method including the following (all of which define a method called hide, and take and argument called "go" and return a string called "seek")

# def hide(go)
#    return seek
# end

# def hide go
#    return seek
# end


# What is the difference between a local variable and a method?
# A local variable is like a pointer. It points to a object, and it can be changed to point to another object.
# The variable can be used instead of the entire of the object content to save time and typing.
# A method on the other hand is a collection of code that can be called to run from other portions of code, or from other ruby files.


# How do you run a ruby program from the command line?
# You can run a ruby program from the command line by writing "ruby" followed by a spaced and the name of the program.
# For example if the ruby program has a name "test.rb" then you would have to type "ruby test.rb" (without the quotations)


# What was confusing about this material? What made sense?
# The results of the spec code files was confusing. I am not sure how many "examples" I should see when testing the code using rspec.
# I got 3 examples for the address challenge, 2 for the defining variables challenge, and 8 for the math challenge, (all with zero failures) but am not sure if that means the code passed or not.

# LINKS TO CODE FILES:

# Define methods: https://github.com/afaan5556/phase-0/tree/master/week-4/define-method/mysolution.rb
# Return a Formatted Address: https://github.com/afaan5556/phase-0/blob/master/week-4/address/mysolution.rb
# Defining Math Methods: https://github.com/afaan5556/phase-0/blob/master/week-4/math/mysolution.rb

