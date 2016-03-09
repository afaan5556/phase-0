# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 1.5 hours on this challenge.

# Pseudocode

=begin

Create the initialization method that accepts the 2-dimensional bingo-board array
Set the argument as an instance variable

Define a method that checks for a horizontal bingo
	Create and x_counter
	Iterate over each element in the board
		For each iteration, check each element and compare the value against 'x'
		IF the comparison returns true for all elements (i.e. the x_counter equals the length of the board)
			p the Bingo celebration message

Define a method that checks for a vertical bingo
	Create an array position counter
	Create an x_counter = 0
	iterate over each array element using the counter to compare the element against 'x'
		IF the compairons returns true for all elements (i.e. the x_counter is equal to the board length)
			p the Bingo celebration message
		ELSE increment the position counter

Define a method that checks for a right_to_left bingo
	Create an array position counter
	Create and x_counter = 0 
	Iterate over the board elements
		At each iteration, compare the sub-array element at the array position counter to 'x'
			IF the compairons returns ture, increment the x_counter by 1
		increment position counter by 1
	IF all comparisons returned ture (i.e. the x_counter is equal to the board length)
		p the BINGO celebration message

Define a method that checkes for a left_to_right bingo
	Create an array position counter that starts at the end of the sub-array
	Create and x_counter = 1
	Iterate over the board elements
		At each iteration, compare the sub-array element at the array position counter to 'x'
			IF the comparison returns ture, increment the x_counter by 1
		incremnet the position counter by 1
	IF all comparisons were true (i.e. the x_counter equals the board length)
		p the BINGO celebration message

=end

# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]

# Initial Solution
# class BingoScorer

# 	def initialize(board)
# 		@board = board
# 	end

# 	def horizontal_bingo
# 		@board.each do |sub_array|
# 			x_counter = 0
# 			sub_array.each do |sub_array_element|
# 				x_counter += 1 if sub_array_element == 'x'
# 			end
# 			p "You got a horizontal bingo!" if x_counter == @board.length 
# 		end
# 	end

# 	def vertical_bingo
# 		array_index = 0
# 		while array_index < @board.length
# 			x_counter = 0
# 			@board.each do |sub_array|
# 				x_counter += 1 if sub_array[array_index] == 'x'
# 			end
# 			p "You got a vertical bingo!" if x_counter == @board.length
# 			array_index += 1
# 		end
# 	end

# 	def right_to_left
# 		array_index = 0
# 		x_counter = 0
# 		while array_index < @board.length
# 			@board.each do |sub_array|
# 				x_counter += 1 if sub_array[array_index] == 'x'
# 				array_index += 1
# 			end
# 		end
# 		p "You got a right_to_left bingo!" if x_counter == @board.length
# 	end

# 	def left_to_right
# 		array_index = -1
# 		x_counter = 0
# 		while array_index >= @board.length*(-1)
# 			@board.each do |sub_array|
# 				x_counter += 1 if sub_array[array_index] == 'x'
# 				array_index -= 1
# 			end
# 		end
# 		p "You got a left_to_right bingo!" if x_counter == @board.length
# 	end
# end


# Refactored Solution

class BingoScorer

	def initialize(board)
		@board = board
	end

	def horizontal_bingo
		@board.each do |sub_array|
			x_counter = 0
			sub_array.each do |sub_array_element|
				x_counter += 1 if sub_array_element == 'x'
			end
			p "You got a horizontal bingo!" if x_counter == @board.length 
		end
	end

	def vertical_bingo
		array_index = 0
		while array_index < @board.length
			x_counter = 0
			@board.each do |sub_array|
				x_counter += 1 if sub_array[array_index] == 'x'
			end
			p "You got a vertical bingo!" if x_counter == @board.length
			array_index += 1
		end
	end

	def right_to_left
		array_index = 0
		x_counter = 0
		while array_index < @board.length
			@board.each do |sub_array|
				x_counter += 1 if sub_array[array_index] == 'x'
				array_index += 1
			end
		end
		p "You got a right_to_left bingo!" if x_counter == @board.length
	end

	def left_to_right
		array_index = -1
		x_counter = 0
		while array_index >= @board.length*(-1)
			@board.each do |sub_array|
				x_counter += 1 if sub_array[array_index] == 'x'
				array_index -= 1
			end
		end
		p "You got a left_to_right bingo!" if x_counter == @board.length
	end

	def bingo_checker
		horizontal_bingo
		vertical_bingo
		left_to_right
		right_to_left
	end

end


# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

test_board = [[45, 44, 'x', 8, 'x'],
              [97, 41, 'x', 'x', 41],
              [45, 31, 'x', 68, 51],
              [67, 'x', 'x', 32, 20],
              ['x', 85, 'x', 72, 'x']]

game_1 = BingoScorer.new(test_board)
game_1.bingo_checker


# Reflection

=begin

What concepts did you review or learn in this challenge?
	The class initialization and instance variable concepts
	Cobining all class methods into a single all-encompassing method

What is still confusing to you about Ruby?
	Passing information between methods when not using classes (without the luxury of instance variables)

What are you going to study to get more prepared for Phase 1?
	Passing information between methods outside classes
	Syntax, syntax, syntax now that JavaScript and Ruby syntax are battling in my head

=end


# ______________________ ASSERT STATEMENTS _________________________________________________-


# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

=begin
The assert method is called on a block of code
The block of code yields either a true or a false based on the name/string provided.
The assert method is executed without an error it it is able to yield the block (i.e. if the block returns true)
Alternterly, the assert method raises an error if it is unable to yield the block (i.e. if the block returns false)
=end

# 3. Copy your selected challenge here

class BingoBoard

  @@bingo = ["B","I","N","G","O"]

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @column = rand(0..4)
    @letter = @@bingo[@column]
    @number = rand(1..100)
    p "The next random number is....#{@letter}-#{@number}!!!"
  end

  def check
    @bingo_board.each do |array|
      if array[@column] == @number
        array[@column] = "X"
      end
    end
  end

  def disp_col
    @bingo_board.each {|array| p array[@column]}
  end

  def disp_board
    @bingo_board.each {|array| p array}
  end

  def make_legal_board
    @legal_board = Array.new(5){Array.new(5,nil)}
    5.times do |row|
      5.times do |column|
        @legal_board[row][column] = rand((1+(column*15))..(15+(column*15)))
      end
    end
    p "NEW LEGAL BINGO BOARD BELOW"
    @legal_board.each {|array| p array}
  end

end


# 4. Convert your driver test code from that challenge into Assert Statements



board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

game = BingoBoard.new(board)

def assert (game)
	raise "Assertion failed!" unless game
end

assert(game.call)
assert(game.check)
assert(game.disp_col)
assert(game.disp_board)
assert(game.make_legal_board)

# new_game.call
# new_game.check
# new_game.disp_col
# new_game.disp_board
# new_game.make_legal_board



# 5. Reflection


=begin

What concepts did you review or learn in this challenge?
	A little bit about assert statements. Pretty sure I am only testing the truthiness of the methods, but not checking their intent

What is still confusing to you about Ruby?
	Assert statements and testing
	Passing information between methods outside classes

What are you going to study to get more prepared for Phase 1?
	Assert statements and testing
	Passing information between methods outside classes
	Syntax, Syntax, Syntax


=end

