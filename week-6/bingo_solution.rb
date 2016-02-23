# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3 hours on this challenge.


# Release 0: Pseudocode
=begin
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
    Define the method
      Create a variable and set it equal to an array with the letters b,i,n,g,o in each element
      Create a random number between 0 and the length of that array, to select one of the letters from the array at random
      Create a variable to 
      Create a random number between 1 and 100
      Return the letter and the number
    End the method


# Check the called column for the number called.
  #fill in the outline here
    Define the method
      Receive the letter from the number method
      Convert that number into an array position corresponding to the @bingo variable
      Use that array position to iterate over the board arrays, checking each time if the received number (@number) is a match
    End the method

# If the number is in the column, replace with an 'x'
  #fill in the outline here

    IF a match in the above iteration is found
      Replace the element with "X"

# Display a column to the console
  #fill in the outline here
    Using the received number (@number) iterate over all elements of the board array, printing each time the sub-array element 
    at position @number

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  @@bingo = ["B","I","N","G","O"]

  def initialize(board)
    @bingo_board = board
  end
  
  attr_reader :letter
  attr_reader :number

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

end
=end

# Refactored Solution

  
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
    5.times do |n|
      5.times do |m|
        @legal_board[n][m] = rand((1+(m*15))..(15+(m*15)))
      end
    end
    p "NEW LEGAL BINGO BOARD BELOW"
    @legal_board.each {|array| p array}
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check
new_game.disp_col
new_game.disp_board
new_game.make_legal_board

#Reflection
=begin
  
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  The template provided made it easy as it gave the major steps involved. Pseudocoding from there was easy
  I believe my style has improved to include white space and indentation, and reads more like code now that
  it did at the beginning of week 4

What are the benefits of using a class for this challenge?
  Using a class means that a new Bingo board can be initialized and played just by calling the class
  There are rules and behaviors associated with the game, and so a class (or template that captures those behaviors)
  is a perfectly sensible choice to create it each time.

How can you access coordinates in a nested array?
  You can use the double square bracket terminology. The first position in element 4 would be accessed as array[3][0]

What methods did you use to access and modify the array?
  For this challenge I exclusively used each.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I reviewed and learned about partition which seemed to be a popular choice in week-5.
  I meant to check it out and this was a perfect time. It allows for A\B or True/False testing and immediate categorization.
  I also checked out inject which accumulates the result of each step of the iteration for use in the next step. I had used
  reduce previously and there seem to be some similarities.

How did you determine what should be an instance variable versus a local variable?
  All except one of my variables needed to be shared across methods, so it was easy to land on instance variables.
  One of them was only needed within a method, and a local variable would have sufficed, but I was curious to use and see
  how class variables work, and so I used that instead just for fun.

What do you feel is most improved in your refactored solution?
  No real refactoring in my solution. I am comfortable starting with methods like .each and .map and so there seems to be
  less and less actual refactoring going on. Instead, I tried the legal bingo board which I got working and was fun, as well
  as checked out the new methods mentioned above (inject and partition)

=end