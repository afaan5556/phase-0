# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => The line number is 170
# 3. What is the type of error message?
# => There are 2 error types shown. There are "embedded document meets end of file" and "syntax error"
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter is saying it was expecting the keyword end but instead reached the end of the document
# 5. Where is the error in the code?
# => The error is in lines 13 through 16 where a def and a while loop are opened, but only 1 end is used, closing the while loop, but not the def
# 6. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => line 36
# 2. What is the type of error message?
# => Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter is saying that the local "south_park" could not be matched to any object
# 4. Where is the error in the code?
# => The error is on line 36, where south_park is introduced without proper variable or function definition
# 5. Why did the interpreter give you this error?
# => Because ruby does not ignore random, undefined, words in code (thankfully!)

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => Line 51
# 2. What is the type of error message?
# => An undefined method error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter is saying that it could not match the method cartman to any object
# 4. Where is the error in the code?
# => The error is either at line 51 where the definition of the cartman method is started but not completed, or earlier in the code where it should have been defined but was not. 
# 5. Why did the interpreter give you this error?
# => Because ruby does not ignore random, undefined, words in code (thankfully!)

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => Line 66
# 2. What is the type of error message?
# => The error type is "wrong number of arguments for a function" or simply ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter is saying that it was expecting no arguments for a function but instead received 1
# 4. Where is the error in the code?
# => The error is either on line 66 where the function should have been defined as accepting an argument, or on line 70 where an argument was provided when it should not have been
# 5. Why did the interpreter give you this error?
# => Because there is no way for Ruby to know what to do with an argument for a function that is set up to not receive and argument

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Kyle can suck my balls!")

# 1. What is the line number where the error occurs?
# => Line 85
# 2. What is the type of error message?
# => Argument error (same as previous error)
# 3. What additional information does the interpreter provide about this type of error?
# => It says that it was expecting 1 argument but got 0
# 4. Where is the error in the code?
# => The error is on line 89 where an argument should have been provided but was not 
# 5. Why did the interpreter give you this error?
# => Because there is no way for Ruby to know what to do when a function that needs an argument is called without an argument provided



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie("A meteor the size of the earth is about to hit Wyoming!","Dammit!")

# 1. What is the line number where the error occurs?
# => Line 106
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => The interperter is saying that it was expecting 2 arguments but only got 1
# 4. Where is the error in the code?
# => The error is on line 110 where a second argument was not provided
# 5. Why did the interpreter give you this error?
# => Because there is no way for ruby to know what to do when a function that is set up to accept 2 arguments is called with only 1 argument provided

# --- error -------------------------------------------------------

puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => Line 125
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter is saying that ruby needs to convert a string object into a fixnum object in order to perform the requested operation, but it can not do that
# 4. Where is the error in the code?
# => The order of the FixNum and the string. If reversed, this code could work
# 5. Why did the interpreter give you this error?
# => Because the code is asking the 5 to be multiplied "Respect my authoritay" times, rather than the other way around.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.000000000001


# 1. What is the line number where the error occurs?
# => Line 140
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter said that the code is trying to divide by zero. Enough said!
# 4. Where is the error in the code?
# => On line 140, where the divide by zero is attempted
# 5. Why did the interpreter give you this error?
# => Because ruby can not divide by zero, just like anyone or anything else. Kind of like an infinite loop

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 156
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter is saying that ruby can not load such a file
# 4. Where is the error in the code?
# => The error is on line 156 where a file that does not exist (or to which an incorrect path is given) is called to be loaded
# 5. Why did the interpreter give you this error?
# => Because ruby does not know how to load a file that does not exist, or if its location is not properly specified.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The second one which did not close a while loop or a function definition with an end.
The line number threw me off.

How did you figure out what the issue with the error was?
By reading the instructions again, and seeing the note that said that the line number might throw me off, which it did.
I then went back looking for places where the "end" keyword might have been omitted.

Were you able to determine why each error message happened based on the code? 
Yes. The interpreter messages do not actually seem that cryptic to me.

When you encounter errors in your future code, what process will you follow to help you debug?
Likely a one similar to this. I will tell myself I am not crazy, take the information that the interpreter is giving me, and try not to lindly change things.

rescue Exception => e
	
end