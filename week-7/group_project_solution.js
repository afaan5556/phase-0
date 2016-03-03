// DBC Rock Doves 2016
// Group 2
// Challenge 7.8 JavaScript Telephone

// Code [FROM AFAAN]

function sum(number_array){
	console.log(number_array.reduce(function(a, b){
		return a + b;
	}));
};

function mean(number_array){
	console.log(number_array.reduce(function(a, b){
		return a + b;
	})/number_array.length);
};

function median(number_array){
	len = number_array.length;
	sorted_array = number_array.sort(function(a, b){
		return a - b;
	});
	if (len % 2 == 0) {
		console.log((sorted_array[len/2] + sorted_array[(len/2 - 1)])/2);
	};
};