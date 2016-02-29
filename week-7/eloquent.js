// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

variable = "hide"
variable += "-and-seek"

food = prompt("What is your favorite food?")
console.log ("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (i = 1; i <= 100; i++){
  if (i % 5 == 0 && i % 3 == 0)
    console.log("FizzBuzz");
  else if (i % 3 == 0)
    console.log("Fizz");
  else if (i % 5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}

// Functions

// Complete the `minimum` exercise.

function min(a, b){
  if (a < b)
    return a;
    else if (b < a)
      return b;
  else
    console.log("The two values are equal!");
}

min(9, 8)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
  name: "Afaan",
  age: 32,
  foods: ["Cheeseburgers", "Garlic Noodles", "Chicken Broast"],
  quirk: "I firmly believe that no one actually prefers oatmeal raisin cookies!"
}

/*


*/