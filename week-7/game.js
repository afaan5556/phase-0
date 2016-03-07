// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Blend in at Philz Coffee
// Overall mission: Visit, order a drink, and fit in with the crowd while working at a trendy San Francisco tech coffee shop
// Goals: Do not have more than 2 unapproved items of clothing/apparral, dont use unapproved hardwware, or order unapproved drinks
// Characters: Bjorn: New SF resident. Kelly: Patron with approved dressing, Ajay: Barrista, Tom: Patron with approved hardware
// Objects:
	// clothing {upper {approved and unapproved items}, lower {approved and unapproved items}, hat {approved and unapproved items}, glasses {approved and unapproved items} bag {approved and unapproved items}}
	// hardware {approved and unapproved laptops} Drinks {approved and unapproved drinks}
// Functions:
	// bjorn.dress: 	Random clothing generator
	// bjorn.laptop: 	Random hardware generator

	// bjorn.order: 	Random drink order generator
	// bjorn.kelly: 	Enter Philz / interact with Kelly
	// bjorn.ajay: 		Place order / interact with Ajay
	// bjorn.tom: 		Sit down and start work / interact with Tom
 

// Pseudocode
/*

VARIABLE DECLARATIONS
Declare the item libraries
Declare the clothing object and fill with approved and unapproved items
Declare the hardware object and fill with approved and unapproved items
Declare the drinks library and fill with approved and unapproved items


INITIALIZE OBJECTS
Initialize the character (object) Bjorn as an empty object

define the function that randomly selects clothing (bjorn.dress)
run this function over each of the clothing, hardware, and drinks libraries and set results to corresponding Bjorn oject key

GAME PLAY STEPS
1. Print welcome message - ready to play
2. Print message sayin you are going to Philz with a X laptop to work
4. print walk in message
5. encounter kelly
6. preint result of kelly encounter
7. encounter ajay
8. print ajay encounter result
9. encounter tom
10. print tom encounter result


*/

// Initial Code


// ____________________________ SET UP LIBRARIES ____________________________________________

bjorn_library = ["lower", "upper", "hat", "bag", "glasses", "hardware", "drinks"]

lower_library = ["torn_jeans", "horizontal_corduroy", "plaid_slacks", "shorts", "plain_jeans", "trousers"]
upper_library = ["diagonal_hoodie", "giants_t", "start_up_t", "button_down", "plaid_polo", "soccer_jersey"]
hat_library = ["top_hat", "fedora", "visor", "no"]
bag_library = ["herschel", "rickshaw", "timbuk2", "jansport"]
glasses_library = ["clear", "off_brand_sun", "silver_rim", "no"]
hardware_library = ["apple", "windows_with_stickers", "windows_without_stickers"]
drinks_library = ["mint_mojito", "jacobs_wonderbar", "tantilizing_turkish", "latte", "chocolate_milk", "plain_coffee"]

approval_library = {
	lower: {
		torn_jeans: 1,
		horizontal_corduroy: 1,
		plaid_slacks: 1,
		shorts: 0,
		plain_jeans: 0,
		trousers: 0
	},
	upper: {
		diagonal_hoodie: 1,
		giants_t: 1,
		start_up_t: 1,
		button_down: 0,
		plain_polo: 0,
		soccer_jersey: 0
	},
	hat: {
		top_hat: 1,
		fedora: 1,
		visor: 0,
		no: 0
	},
	glasses: {
		clear: 1,
		off_brand_sun: 1,
		silver_rim: 0,
		no: 0
	},
	bag: {
		herschel: 1,
		rickshaw: 1,
		timbuk2: 0,
		jansport: 0
	},
	hardware: {
		apple: 1,
		windows_with_stickers: 1,
		windows_without_stickers: 0
	},
	drinks: {
		mint_mojito: 1,
		jacobs_wonderbar: 1,
		tantilizing_turkish: 1,
		latte: 0,
		chocolate_milk: 0,
		plain_coffee: 0
	}
}
// ____________________________ DECLARE AND INITIALIZE VARIABLES ____________________________________________

bjorn ={}

var game_over = false;

// ____________________________ DEFINE FUNCTIONS ____________________________________________________________

function introduction() {
	console.log("Welcome to Coding at Philz! Let's get started! \n . \n . \n");
	console.log("You are going to have to blend in! Let's hit your closet! \n . \n . \n")	
}

function random_item(item_library){
	return [Math.floor(Math.random()*item_library.length)]
}

function closet_visit(){

	dress_up();
	console.log("You chose to wear " + bjorn.lower + " with " + bjorn.upper + " and bring your " + bjorn.bag + " bag. \n . \n . \n")
	if (bjorn.hat == "no") {
		console.log("You decided it would be wise to not wear a hat with that combination \n . \n . \n");
	}
	else {
		console.log("You decided it would be wise to top that look off with a " + bjorn.hat + " \n . \n . \n")
	};
}

function random_laptop(){
	bjorn.hardware = hardware_library[random_item(hardware_library)] 
}

function dress_up() {
	bjorn.lower = lower_library[random_item(lower_library)]
	bjorn.upper = upper_library[random_item(upper_library)]
	bjorn.hat = hat_library[random_item(hat_library)]
	bjorn.glasses = glasses_library[random_item(glasses_library)]
	bjorn.bag = bag_library[random_item(bag_library)]
}

function meet_kelly(dress_check){
	if (bjorn_dress_score === 5) {
		console.log("Kelly says: \"Nice get-up dude!\" \n . \n . \nYou proceed to order a drink with hipster points in hand!!! \n . \n . \n")
	}
	else if (bjorn_dress_score <= 2) {
		console.log("Kelly says: \"Where do you shop dude? At the Gap?\" \nGAME OVER! \n . \n . \n")
		game_over = true;
	}
	else {
		console.log("You made it in unnoticed. \n . \n . \nYou proceed to order a drink \n . \n . \n")
	}
}

function order_drink() {
	bjorn.drink = drinks_library[random_item(drinks_library)]
	if (approval_library["drinks"][bjorn.drink] === 1) {
		console.log("You ordered a " + bjorn.drink + " \n . \n . \nThe barrista Ajay said: \"Nice choice!\"  \n . \n . \n You proceed to grab a seat with techie points in hand!!. \n . \n . \n")
	}
	else {
		game_over = true;
		console.log("You ordered a " + bjorn.drink + " \n . \n . \nThe barrista Ajay gave you the stink-eye.   \n . \n . \n GAME OVER!")
	};
}

function start_work(){
	if (approval_library["hardware"][bjorn.hardware] === 0){
		game_over === true;
		console.log("You came to Philz with a windows laptop without stickers and do not fit in at all!   \n . \n . \n GAME OVER!")
	}
	else
		console.log("Congratulations! You pulled out your " + bjorn.hardware + " laptop and totally fit in at Philz and can start working on your code!")

}


// ____________________________ RUN THE GAME BY CALLING FUNCTIONS ____________________________________________

introduction();

closet_visit();


var bjorn_dress_score = 0

for (var i in bjorn) {
	bjorn_dress_score += approval_library[i][bjorn[i]]
}

if (game_over === false){

	meet_kelly(bjorn_dress_score);
}

if (game_over === false){

	order_drink();
}

if (game_over === false){

	random_laptop();
	start_work();
}


// Refactored Code






// Reflection

/*
What was the most difficult part of this challenge?
	=> Not getting carried away. Which I unfortunatley did. Time management and setting expectations was the lesson for me.

What did you learn about creating objects and functions that interact with one another?
	=> I learned to keep the master step by stpe code fairly clean and strainghtforward by nesting all of the grunt work in functions and then calling those functions as part of the master code. 

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	=> I unfortunately did not have time to research new methods and was not able to attempt a refactored solution.

How can you access and manipulate properties of objects?
	=> This can be done using dot notation and bracket notation. I covered this in my blog post this week, including the pros and cons of each, and how they compare to Ruby Hashes.
*/
