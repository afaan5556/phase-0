# Factorial

# I worked on this challenge with 


# Your Solution Below
def factorial(number)
 result = 1
 if number < 0
   puts "number needs to be a positive integer"
 elsif number != number.to_i
   puts "number needs to be an integer"
 elsif number == 0
   return result
 else
   array = []
   while number > 0
     array << number
     number -= 1
   end
     for i in array do
     result = result * i
     end
   end
 return result
end

puts factorial(3)