// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Megan Swanby
// This challenge took me 2.5 hours.

// These are the votes cast by each student. Do not alter these objects here.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

// The name of each student receiving a vote for an office should become a property
// of the respective office in voteCount.  After Alex's votes have been tallied,
// voteCount would be ...
//   var voteCount = {
//     president: { Bob: 1 }... { Louise: 3 },
//     vicePresident: { Devin: 1 }... {Hermann: 2} },
//     secretary: { Gail: 1 },
//     treasurer: { Kerry: 1 }
//   }

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// 
// Determine a way to tally total votes for each office- president, vp, secretary,treasurer in the object voteCount
// For each voter in votes
//   FOR each candidate(name) in office(vp/secretary)
  //   if the candidate exists in voteCounts already
  //     add 1 to the counter in voteCounts
  //   ELSE 
//       add name and 1 to voteCounts

//   FOR each office in voteCounts
//     FOR each candidate in office
//       check which candidate has the max tally of votes
//        counter = 0, if the person has more votes 
//       update the counter to the person's vote.
//     IF the candidate has more votes than the counter, 
//       replace the candidate in the officers var

// 
// ____________votes.name.c______________________________
// Initial Solution

// for (var voter in votes){
//   for (var office in votes[voter]){
//     if (voteCount[office].hasOwnProperty(votes[voter][office])) {
//         voteCount[office][votes[voter][office]] += 1;      
      
        
//       } else {
//         voteCount[office][votes[voter][office]] = 1;
//       }
//     };
// }

// console.log(voteCount);

// var winner= '';
// var tally = 0;

// for(var office in voteCount) {
//   for (var candidate in voteCount[office]) {
//     if (voteCount[office][candidate] > tally) {
//       tally = voteCount[office][candidate] ;
//       winner = candidate;
//     } officers[office] = winner; 
//   } 
//   tally = 0;
// }


// __________________________________________
// Refactored Solution

for (var voter in votes){
  for (var office in votes[voter]){
    var voterChoice = votes[voter][office];
    if (voteCount[office].hasOwnProperty(voterChoice)) {
        voteCount[office][voterChoice] += 1;
    }
    else {
        voteCount[office][voterChoice] = 1;
      }
    };
}

var winner = '', tally = 0;

for(var office in voteCount) {
  for (var candidate in voteCount[office]) {
    if (voteCount[office][candidate] > tally) {
      tally = voteCount[office][candidate] ;
      winner = candidate;
    } 
    officers[office] = winner; 
  } 
  tally = 0;
}

// __________________________________________
// Reflection

/*
What did you learn about iterating over nested objects in JavaScript?
  We learned that the object name has to be included in a for loop argument in order to acess the key within the nested object rather than just the nested object itself
  We were not sure if it is more or less readable to declare a variable to handle the nested arguments, or write out the nested arguments each time (see line 120)

Were you able to find useful methods to help you with this?
  My pair found a very useful method has OwnProperty which we used a couple of times that saved us some heartache and also several lines of code

What concepts were solidified in the process of working through this challenge?
  The need for good variable naming, nested for loops, working through code tests / assert statements

*/





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)