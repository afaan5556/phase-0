# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map!  do |e|
    if e.class == Fixnum
      e = e + thing_to_modify
    elsif e.class == String
      e = e
    end
  end
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.keys.each do |k|
    source[k] += thing_to_modify
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# .map! ---> changes array in place (destructively)
# .keys.each ---> enumerates through the keys in the hash


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# .map! ---> to return the result of the array operations rather than the argument array itself, but also change the argument in place
#             in this example, map! simultaneously allows for access to each of the array elements, and the in-place updating of them (destructive)
# .keys.each ---> to use each key in the Hash to access and update each value by the modifier
#             in this example, the .keys.each allowed enumeration of the keys in the hash which were in turn used to access and modify the values in place (destructively)


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Researching is not as scary as it first seems. The article about Ruby docs for newbies is quite accurate, and I was able to gain comfort with them through this exercise.
# Explaining the methods that I researched to others helped me better understand them by having to described the step-by-step dynamics of what is actually going on in each.
