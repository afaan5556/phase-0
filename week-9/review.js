/*
Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)
*/

/*
PSUEDOCODE

0. Use an object for the list so that items and quantities can both be tracked

1. Create a list
1.1 Define a function that takes a string as an argument
1.2 Create an empty array and break up the string at white space to populate the array
1.3 Create an empty object and iterate over the populated array to populate the object
1.4 Return the populated object

2. Add an item with a quantity to the list
2.1 Define a function that takes the list, a new item, and a new item quantity as arguments
2.2 Update the list object with the new item and new item quantity
2.3 Return the updated list

3. Remove an item from the list
3.1 Define a function that takes the updated list, and the item to remove from the list as arguments
3.2 Update the list object with the item to remove
3.3 Return the updated list

4. Update quantities for items in the list
4.1 Define a function that takes the updated and removed item list, the item to update, and the updated quantity as arguments
4.2 Update the item quantity
4.1 Return the updated list

5. Print the list
5.1 Define a function that takes the updated list as an argument
5.2 Print the list
*/

// REFACTORED SOLUTION

function list_creator(list_string){
	list_array = list_string.split(" ");
	list_object = {};
	for (var i = 0; i < list_array.length; i++){
		if (list_object.hasOwnProperty(list_array[i])){
			list_object[list_array[i]] += 1;
		}
		else {
			list_object[list_array[i]] = 1;
		}
	};
	return list_object;
};

my_list = list_creator("Apples Carrots Bananas Strawberries Apples Bananas")

function add_item(list, item, quantity){
	list[item] += quantity;
	return list;
};

added_item_list = add_item(my_list, "Carrots", 45)

function remove_item(list, item){
	delete list[item];
	return list;
};

removed_item_list = remove_item(added_item_list, "Carrots");

function update_quantites(list, item, quantity){
	list[item] = quantity;
	return list;
}

updated_quantity_list = update_quantites(removed_item_list, "Bananas", 36)

function print_list(list){
	for (i in list){
		console.log("Item: " + i + " , Quantity: " + list[i])
	};
};

print_list(updated_quantity_list);

/*REFLACTION

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
	=> The creation of small functions/methods and passing information between them
	=> Some JavaScript syntax (will this ever come naturally!!!???)

What was the most difficult part of this challenge?
	=> Getting started. JavaScript just always seems intimidating at first

Did an array or object make more sense to use and why?
	=> Definitely an object so that quantities could be tracked side-by-side against items

*/