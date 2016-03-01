// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Brad Donahue.

// ___________________PSEUDOCODE_____________________________________

// Read the integer
// convert it into a string, reverse, and store in an array
// create a new empty array
// Iterate over the array length using a WHILE loop
// shift and joined 3 elements of the reversed array at a time and pushed into new empty array while size of converted is greater than 0
// join with commas, and reverse the new array
// convert back into a string and return the string

// In javascript we can save the reverse array steps, and instead use the pop and unshift methods

// comma_array.unshift(string_array.splice())

// WHILE string_array length is greater than zero
// for (i=0; i < 3; i ++) use the pop  method and unshift the popped elements into an holding_array
// join the holding_array elements into a single string
// unshift the joined string into the comma_array
// end the while loop


//// ___________________INITIAL SOLUTION_____________________________________

/*

function commas(number){
  var comma_array = [];
  var holding_array = [];
  var counter = 0;
  var string_array = number.toString().split("");
  
  while (string_array.length > 0){
    if (string_array.length > 3) {
      for (counter = 0; counter < 3; counter ++) {
        holding_array.unshift(string_array.pop());
      };
      comma_array.unshift(holding_array.join(""));
    }
      else if (string_array.length % 3 == 2) {
        for (counter = 0; counter < 2; counter++) {
          holding_array.unshift(string_array.pop());
        };
        comma_array.unshift(holding_array.join(""));
      }
        else {
          holding_array.unshift(string_array.pop());
        }
        holding_array = []
      };
  var result = comma_array.join(",")
  console.log(result);    
};

commas(75789078944309765)

*/

//// ___________________ REFACTORED SOLUTION _____________________________________

function commas_numbers(input_number){
  var comma_array = [];
  var string_array = input_number.toString().split("");

 while (string_array.length > 0) {
   if (string_array.length >3) {
     comma_array.unshift((string_array.reverse().splice(0, 3).reverse()).join(""));
     string_array.reverse()
   }
   else if (string_array.length % 3 == 2) {
     comma_array.unshift((string_array.reverse().splice(0, 2).reverse()).join(""));
   }
   else {
     comma_array.unshift(string_array.pop());
   };
 };
   var result = comma_array.join(",")
   console.log(result);
 };

commas_numbers(11122233946944)


// Your Own Tests (OPTIONAL)




// ___________________ REFLECTION _____________________________________
/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
=> It was interesting since previously this was a solo challenge. I thought my solution in week-5 was overly complicated
=> and it seemed like my pair had a much simpler solution in mind, so we started with that and then improved it further.
=> Trying it out with JavaScript was certainly interesting in that we were constantly questioning and checking syntax
=> and trying to check if methods were destructive vs non-destructive

What did you learn about iterating over arrays in JavaScript?
=> We used the splice method to destructively grab chunks of array elements. We learned that this can be done with an
=> index position, and a number of chunk elements. We also learned that this was destructive


What was different about solving this problem in JavaScript?
=> Definitely the syntax and general language structure (lots of {}'s and ;'s needed!)
=> Between a paired approach, and a new language, this experience was very different than the Ruby solo-challenge

What built-in methods did you find to incorporate in your refactored solution?
=> We used .reverse, .splice, .length, .unshift and .join.

*/