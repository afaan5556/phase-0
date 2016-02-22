# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer (guess)
# Output: a symbol (:low, :high, or :correct) and a boolean (true or false)
# Steps: 


# Initial Solution
=begin
	
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	else
  		return :high
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end

	  # Make sure you define the other required methods, too
end
=end




# Refactored Solution

class GuessingGame

  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	else
  		return :high
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end

end




# Reflection
=begin
	
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	The methods defined in the class become available to the object and so they directly define the behavior of the object.
	The instance variables get defined when the object is initialized or when an argument is passed to a method, and so
	they define how the object responds to method calls.

- When should you use instance variables? What do they do for you?
	We need to used instance variables when the information stored in them needs to be passed across methods in the class.
	In the example above, guess had to be in instance variable in the method guess. If it wasn't, then the method solved?
	would not have access to it, and the rspec would raised failures.


- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	Flow control is used to check the truthinesss or falsiness of a variable, and perform an action based on those tests.
	It was straightforward to add control flow in this challenge.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	The Well Grounded Rubyist closes the chapter on Symbols by saying they are integer like variables, dressed in the
	appearance of strings. This is a useful way to think of the 3 states of the guess method in this challenge.
	The result of this method can either be high, low, or correct, but we want these results to be "states" of a test, rather
	than strings. Alternately, we could use 1 for high, 0 for correct, and -1 for low, but that doest help with readability.
	Symbols are the best of both worlds. They are immutable and so don't run the risk of being changed (unlike strings) and
	also are easily convey the message of the test result (unlike integers would in this case)


=end