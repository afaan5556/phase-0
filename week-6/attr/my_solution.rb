#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# Pseudocode

# Input: a string (for name)
# Output: a string (for the greeting)
# Steps: define the attr_methods for NameData
# Initialize the name for NameData
# Initialize the 

	

class NameData
	attr_reader :name
	def initialize(name)
		@name = name
	end

end


class Greetings
	def initialize
		@received_name = NameData.new("Afaan Naqvi")
	end

	def hello
		puts "Hello #{@received_name.name}! How wonderful to see you today."
	end

end

greet = Greetings.new
greet.hello

# Reflection

=begin

__________________________________RELEASE 1 REFLECTION___________________________________________________
The methods are either printing, returning or chaging instance variables
The syntax used to change the instance variables is new to me.
It looks like insetad of using the def method(argument) syntax, and then calling the method with the new instance variable
using the method(argument) syntax
Instad there is a def method=argument syntax being used, which then allows for a method = argument syntax


__________________________________RELEASE 2 REFLECTION___________________________________________________
The major change between release 1 and 2 is that instead of a method that returns the age instance variable
an attr_reader is included in the class to do this directly. This is certainly a major simplification of the code


__________________________________RELEASE 3 REFLECTION___________________________________________________
The major difference between release 2 and 3 is the change_age method has been replaced with an attr_writer.
This allows for the changing of the instance variale age by calling instance_of_profile.age = new_age
whereas before the initial age could only be read this way (using instance_of_profile.age)
Now the "new_age" variable and the attr_writer line of code allow for the ae to be updated without a method call
This code is definitely simpler than the last

__________________________________REFLECTION QUESTIONS___________________________________________________
What is a reader method?
	A reader method is a class method that allows for an instance variale to be returned (such as a @name variable)

What is a writer method?
	A writer method is a class method that allows for an instance variale to be re-assigned/changed

What do the attr methods do for you?
	The attr methods are a way to concisely read, write, or read/write instance variables without having to define 
	a method for each. For example, "attr_read :name" can be used instead of:
	def name
		@name
	end

Should you always use an accessor to cover your bases? Why or why not?
	Proably not. Though it is tempting, it could create a potential security vulnerability (for example when read and write
	access are given but only write access was intended) and also it incrases the chances for unintended overwriting of
	data (for example when only read access was intended, but write access was also given as part of an attr_accessor)


What is confusing to you about these methods?
	The passing of instance variales and initializatino arguments are confusing, especially when a class is created inside
	another class. This took some circling and lots of thinking. I felt pretty dumb in the process!


=end