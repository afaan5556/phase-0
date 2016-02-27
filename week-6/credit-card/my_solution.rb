# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Brad Lindgren
# I spent 3 hours on this challenge.

# Pseudocode

# Input: An integer. 
# Output: A boolean value or an argument error.
# Steps: 

=begin

Iniatialize the class with the card (integer) argument
  Check the length of the integer. It should be 16 digits.
  Raise an argument error if the input is not a 16 digit integer.
  Declare the caard_numer instance variable
  Declare the luhn_method_sum class variable

Define a method 'double_alternate' that takes the integer card argument from the initialization
 Starting with the second to last digit, double every other digit until you reach the first digit.
 Split the integer into an array of single digit integer elements. Iterate over the array, starting at index -2. Double each yielded element.
 Adjust counter by -2 until reaching index 0 of the array. End method.

Define a method 'single_digits'
 Initialize a new array
 iterate over the doubled_alternate array
 IF an elements size is GREATER THAN 1
 PUSH 1 and then push the element - 10 into the new array
 ELSE just push the element into the new array

Define a method 'sum_digits'
 Sum all the elements of the array
 Store the result in the luhn_method_sum class variable and return it 


Define the method check card
  Call the double_alternate method on the integer argument and store the result in a variable
  Call the sum_digits method using the result variable above as an argument and store the result
  Using the luhn_method_summ class variable to calculate the integer % 10
  IF value is equal to zero, return true. ELSE, return false.

=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin


class CreditCard
  
  def initialize(card_number)
    unless card_number.to_s.size == 16 
      raise ArgumentError.new("Card length must be 16 digits")
    end
    @card_number = card_number
    @@sum = 0
  end

  
  def double_alternate(card_pass)
    number_array = []
    number_array = card_pass.to_s.split(//)
    number_array.map! { |element| element = element.to_i }
    
    index = -2
    for i in (1..number_array.length/2) do
      number_array[i*(-2)] = number_array[i*(-2)]*2
    end
    number_array
  end
  
#   def sum_digits(doubled_array)
#     single_digit_array = Array.new
#     single_digit_array = doubled_array.each { |element|
#       if element >= 10
#         single_digit_array.push(1)
#         single_digit_array.push(element - 10)
#     #    p single_digit_array
#       else
#         single_digit_array.push(element)
#      #   p single_digit_array
#       end
#       p single_digit_array
#       }
#     p single_digit_array
#   end
  
#   def sum_digits(array)
#     sum = array.reduce(:+)  
#   end
   
# end
  
  def sum_digits(doubled_array)
    doubled_array.each { |element|
      if element >= 10
        @@sum += element
        @@sum -= 9
      else
        @@sum += element
      end}
    @@sum
  end
  
  def check_card
    x = double_alternate(@card_number)
    y = sum_digits(x)
    if @@sum % 10 == 0
#    x = name.double_alternate
 #   if sum_digits(x) % 10 == 0
      true
    else
      false
    end
  end
  
end

=end

# Refactored Solution

class CreditCard
  
  def initialize(card_number)
    unless card_number.to_s.size == 16 
      raise ArgumentError.new("Card length must be 16 digits")
    end
    @card_number = card_number
    @@luhn_algorithm_sum = 0
  end
  
  def double_alternate_digits(pass_card_number)
    card_number_array = Array.new(pass_card_number.to_s.split(//))
    card_number_array.map! { |element| element.to_i }
    
    for i in (1..card_number_array.length/2) do # This could be (1..8) but left this way to make checking of any lenth integer possible
      card_number_array[i*(-2)] *= 2
    end
    card_number_array
  end
  
  def sum_array_digits(doubled_array)
    doubled_array.each do |element|
      if element >= 10
        @@luhn_algorithm_sum += element -= 9
      else
        @@luhn_algorithm_sum += element
      end
    end
    @@luhn_algorithm_sum
  end
  
  def check_card
    double_alternate_digits_result = double_alternate_digits(@card_number)
    sum_array_digits_result = sum_array_digits(double_alternate_digits_result)
    if @@luhn_algorithm_sum % 10 == 0
      true
    else
      false
    end
  end
  
end

#REFLECTION
=begin

What was the most difficult part of this challenge for you and your pair?
# => The most difficult part was when we were trying to get our check_card method to call the children methods
and make use of all of their variables and information. We were having a hard time seeing how this information 
could be passed around, and how to access certain variables. Other parts were hard too in this challenge, but this
was the hardest.

What new methods did you find to help you when you refactored?
# => We searched a bit for a new method that could handle the reverse alternating digit doubling operation, but came up dry
We did refactoring our initial solution a bunch though, including the merging of 2 methods into 1 simpler method, 
the use of "*= 2" instead of a the longer left = right equivelent.
I also spent time making better variable naming choices even if they ended up being quite long in some cases.

What concepts or learnings were you able to solidify in this challenge?
The use of instance and class variables was solidified. I am still struggling very much with driver code to test
class creation and method running. Hoping to make it to office hours for that next week.

=end