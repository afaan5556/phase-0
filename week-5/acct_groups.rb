# Assignment 5.6: Create Accountability Groups
# I worked on this assignment myself


# Pseudocode

=begin

Inputs: An array containing a list of names. Call this array "cohorts" and pull it from Canvas
Outputs: An array containing arrays, each of which contains a list of names from the receiver list

Steps
1. Count the number of names in the input array
2. Calculate the modulus of the number with 5
4. Establish how many groups of 3, 4 and 5 there will be (See patterns below)
5. Loop through the names array n times, each time doing:
	5.1 Generate a random number that is between 0 and the length of the name array
	5.2 Use that number to push the element at position random into the m-position of the n element in the output array "cohorts-groups"
	5.3 remove that number from the names array
n is first the number of 3 element arrays needed, then 4, and then 5

PATTERNS

Groups of 3 and 4 at end can be the last x names in the list (after groups of 5 are formed), where x is:
	3 + 3     = 6
	3 + 4     = 7
	4 + 4     = 8
	3 + 3 + 3 = 9

If 5 are left, then that is 1 more group of 5
If 10 are left, then that is 2 more groups of 5
So, what I am after is the number%5 which can be either 1, 2, 3, or 4. So, if:
	1 => 2 groups of 3, the rest will be groups of 5
	2 => 1 group of 3, 1 group of 4, the rest will be groups of 5
	3 => 2 groups of 4, the rest will be groups of 5
	4 => 3 groups of 3, the rest will be groups of 5

=end


### INITIAL CODE ###______________________________________________

=begin
	
def accountability_groups(names_list)
	total = names_list.length
	modulus = total%5
	cohort_groups = []
	# control flow below establishes the number of groups of 3 and 4 needed
	if modulus == 1
		g3 = 2
		g4 = 0
	elsif modulus == 2
		g3 = 1
		g4 = 1
	elsif modulus == 3
		g3 = 0
		g4 = 2
	else
		g3 = 3
		g4 = 0
	end
	g5 = (total-3*g3-4*g4)/5 # this is the number of groups of 5
	# Now loop through the names array grabbing names at random to populate the groups of 3
	g3.times do |n|
		g3_array = []
		3.times do |m|
			pick = rand(total)
			g3_array << names_list[pick]
			names_list.delete_at(pick)
			total -= 1
		end
		cohort_groups << g3_array
	end
		# Now loop through the names array grabbing names at random to populate the groups of 4	
	g4.times do |n|
		g4_array = []
		4.times do |m|
			pick = rand(total)
			g4_array << names_list[pick]
			names_list.delete_at(pick)
			total -= 1
		end
		cohort_groups << g4_array
	end
		# Now loop through the names array grabbing names at random to populate the groups of 5
	g5.times do |n|
		g5_array = []
		5.times do |m|
			pick = rand(total)
			g5_array << names_list[pick]
			names_list.delete_at(pick)
			total -= 1
		end
		cohort_groups << g5_array
	end
	return cohort_groups
end

cohorts = ['Adam Pinsky','Afaan Naqvi','Alana Farkas','Andrew Crowley','Andrew Vathanakamsang','Anna Lansfjord','Benjamin Heidebrink','Blair White','Brad Lindgren','Brian Donahue','Brittney Braxton','Camila Crawford','Charlie Lee','Chunyu Ou','Daniel Homer','Daniel Shapiro','David Kaiser','David Ramirez','Emily Osowski','Emmet Garber','Eric Gumerlock','Greg Toprak','Hanna Taylor','Dave Hostios','Jack Baginski','Jaclyn Feminella','Jasmeet Chatrath','Jason Allen','Jon Norstrom','jonathan nicolas','Joseph Yoo','Joshua Lugo','Joshua Wu','Julia Giraldi','Kari Giberson','Katherine Broner','Kevin Fowle','Kevin Niu','Kevin Perkins','Leo Kukhar','Li-Lian Ku','Erica Lloyd','Marita Deery','Michael Verthein','Milorad Felbapov','Brian Mosley','Nick Russo','Noah Schutte','Oscar Delgadillo','Ryan Dempsey','Ryan W.','Sami Zhang','Saralis Rivera','Sean Norton','Shyh Hwang','Sydney Rossman-Reich','Theo Paul','Tomasz Sok','Wesley El-Amin']

accountability_groups(cohorts)

=end

### END INITAL CODE###_____________________________


# Refactoring

=begin

My main refactoring strategy was to create a method "group_builder" that could collapse my blocks of code making the groups of 3, 4, and 5 into a block that I could call instead.
I thought this would be able to reduce my total code from 60-ish lines to 40-ish lines which it did, but I was not able to get it to work due to challenges of local vs global scope.
I was essentially unable to update the total length of the array passed into the overall method when calling the nested method.

Attempted code below.

	def group_builder(size, scope, run, names, groups)
		size.times do |n|
			my_array = []
			run.times do |m|
				pick = rand(scope)
				my_array << names[pick]
				names.delete_at(pick)
				scope -= 1
			end
			groups << my_array
		end
		return names_list = names
	end

	group_builder(g3, total, 3, names_list, cohort_groups)
	p "total is #{total}"
	group_builder(g4, total, 4, names_list, cohort_groups)
	p "total is #{total}"
	group_builder(g5, total, 5, names_list, cohort_groups)
	p "total is #{total}"


Eventually I tried a different strategy that uses .shuffle and .slice!
The .shuffle method randomizes the names array once and has the same effect of generating a random number for each iteration
The .slice! method takes care of a block of iterative array populating code in one neat line! 

=end

### REFACTORED CODE ###______________________________________________

def accountability_groups(names_list)
	# Variable declaration and array initialization
	total = names_list.length
	modulus = total%5
	cohort_groups = []
	# control flow below establishes the number of groups of 3 and 4 needed
	if modulus == 1
		g3 = 2
		g4 = 0
	elsif modulus == 2
		g3 = 1
		g4 = 1
	elsif modulus == 3
		g3 = 0
		g4 = 2
	else
		g3 = 3
		g4 = 0
	end
	g5 = (total-3*g3-4*g4)/5 # this is the number of groups of 5
	# Now loop through the names array grabbing names at random to populate the groups of 3
	names_list.shuffle!

	g3.times do |n|
		cohort_groups << names_list.slice!(0..2)
	end
	g4.times do |n|
		cohort_groups << names_list.slice!(0..3)
	end
	g5.times do |n|
		cohort_groups << names_list.slice!(0..4)
	end
	p cohort_groups
end

cohorts = ['Adam Pinsky','Afaan Naqvi','Alana Farkas','Andrew Crowley','Andrew Vathanakamsang','Anna Lansfjord','Benjamin Heidebrink','Blair White','Brad Lindgren','Brian Donahue','Brittney Braxton','Camila Crawford','Charlie Lee','Chunyu Ou','Daniel Homer','Daniel Shapiro','David Kaiser','David Ramirez','Emily Osowski','Emmet Garber','Eric Gumerlock','Greg Toprak','Hanna Taylor','Dave Hostios','Jack Baginski','Jaclyn Feminella','Jasmeet Chatrath','Jason Allen','Jon Norstrom','jonathan nicolas','Joseph Yoo','Joshua Lugo','Joshua Wu','Julia Giraldi','Kari Giberson','Katherine Broner','Kevin Fowle','Kevin Niu','Kevin Perkins','Leo Kukhar','Li-Lian Ku','Erica Lloyd','Marita Deery','Michael Verthein','Milorad Felbapov','Brian Mosley','Nick Russo','Noah Schutte','Oscar Delgadillo','Ryan Dempsey','Ryan W.','Sami Zhang','Saralis Rivera','Sean Norton','Shyh Hwang','Sydney Rossman-Reich','Theo Paul','Tomasz Sok','Wesley El-Amin']

accountability_groups(cohorts)

### END REFACTORED CODE###_____________________________

### REFLECTION###______________________________________
=begin
	
	
### What was the most interesting and most difficult part of this challenge?
The psudocoding was definitely the most interesting part of the chellenge.

### Do you feel you are improving in your ability to write pseudocode and break the problem down?
Absolutely. This time I did no rush into the code and took the time to pseudocode the details even if it felt like overkill
This helped a lot when I did eventually get into coding

### Was your approach for automating this task a good solution? What could have made it even better?
I think so. I almost gave up when I couldn't collapse my repetitive code blocks into some sort of neat sub-method, but a
little more research into Ruby methods paid off when I discovered how .shuffle and .slice! could work together

### What data structure did you decide to store the accountability groups in and why?
I decided to store the accountability groups into an array just because that is what I thought this was the  simplest and cleanest way to 
solve the problem. I did think about putting it in a hash by group size, but I didn't think that would be particularly helpful, and also 
thought I should stick to the MVP when the instructions did not specify an output data structure

### What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Yes - I looked through the Ruby docs and in addition to the .shuffle and .slice! methods, I came across a few other interesting ones such 
as .combination, .permutation, and .repeated_combination

=end