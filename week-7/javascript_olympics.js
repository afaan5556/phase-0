// JavaScript Olympics

// I paired by myself, with Alana Farkas
// This challenge took me 2 hours.

//______________ BULK UP PSUEDOCODE _________________

// Create a function that takes an array of athletes that include a name and event property.
// (Sarah Hughes (Links to an external site.), for example, could have "Ladies' Singles" as her event).
// Your function should add a  win property to each athlete in the array. In the example above,  win would print
// "Sarah Hughes won the Ladies' Singles!"

// Would it make more sense to have win be defined as a function expression or a function declaration?

// Function will take in an array, output a string
// The string is array[0] + " won the " + array[1]

// iterate over the athelete_array using "for i in athelete_array"
// At each step print out "athelete_array[i][0] + " won the " athelete[i][1]""

//______________ BULK UP CODE _________________

function win(athelete_array){
	for (i in athelete_array){
		console.log(athelete_array[i][0] + " won the " + athelete_array[i][1]);
	};
};

//______________ BLUK UP DRIVER CODE _________________

var a = [["Afaan", "JavaScript Olympics"], ["Alana", "Ruby Olympics"], ["Andrew", "DBC Olympics"]]

win(a)


//______________ JUMBLE YOUR WORDS PSUEDOCODE _________________

// Jumble your words
// Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Links to an external site.) and Array (Links to an external site.) docs. HINT: Think about how you would write this in Ruby and translate!
// Pseudocode
// input: string
// output: string
// turn string into an array using split method
// reverse array
// join array

//______________ JUMBLE YOUR WORDS CODE _________________

function reverse_a_string(string) {
var word = string.split("").reverse().join('');
console.log(word);
};

//______________ JUMBLE YOUR WORDS DRIVER CODE _________________

reverse_a_string("Olympics")


//______________ 2,4,6,8 PSUEDOCODE _____________________________

// input the array
// calcualte the length of the array
// for i in length
// 	if i is even, push the element at index i
// return the even array

//______________ 2,4,6,8 CODE _____________________________

function print_evens(number_array){
	var evens_array = [];
	var length = number_array.length;
	for (i = 0; i < length; i++){
		if (i % 2 == 0) {
			evens_array.push(number_array[i]);
		};
	};
	return evens_array;
};

//______________ 2,4,6,8 DRIVER CODE _____________________________

test_array = [1,2,3,4,5,6,7,8,9]
console.log(print_evens(test_array));


//__________ WE BUILT THIS CITY CODE ___________

function Athlete(name, age, sport, quote){
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;
}

//____________ "WE BUILT THIS CITY" DRIVER CODE _______________________
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


//_____________ REFLECTION ___________________
/*

What JavaScript knowledge did you solidify in this challenge?
=> Syntax, semi-colon use, curly brace use, destructive vs non-destructive methods
=> Some similar lesses to what we had with Ruby like method stacking and accessing multi-dimension arrays

What are constructor functions?
=> Am i crazy, or are constructor functions like classes in Ruby?
=> They are still declared like functions, but the way they use "this.variable" is very much like "@variable" in ruby
=> It seems to be a blue-print (constructor) for a JavaScript object where "this" is used to set instance variables

How are constructors different from Ruby classes (in your research)?
=> Ahhh... should have read this question before the above rant!
=> They seem to be very similar. I just gave a think about how they are set up, how they are called, and how their scope works, and I can't think of major differences other than syntax. The article provided in the Release descries them the same way that I think of a Ruby class, and this exercise showed that as well. 




*/