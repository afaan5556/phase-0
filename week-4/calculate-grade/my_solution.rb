# Calculate a Grade

# I worked on this challenge with Ryan Dempsey

# Your Solution Below

=begin
def get_grade(grade)
  case grade
  when grade < 60 && grade >= 0
    p "F"
  when grade >= 60 && grade < 70
    p "D"
  when grade >= 70 &&  grade < 80
    p "C"
  when grade >= 80 &&  grade < 90
    p "B"
  when grade >= 90 && grade <= 100
    p "A"
  else
    puts "Not a valid grade."
  end
end
=end

def get_grade(grade)
  if grade < 60 && grade >= 0
    return "F"
  elsif grade >= 60 && grade < 70
    return "D"
  elsif grade >= 70 && grade < 80
    return "C"
  elsif grade >= 80 &&  grade < 90
    return "B"
  elsif grade >= 90 && grade <= 100
    return "A"
  else
    puts "Not a valid grade."
  end
end