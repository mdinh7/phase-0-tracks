// loops through array
// finds the lengths for each string
// compares lengths
// returns longest string

function longest(array) {
	for (var i = 0; i < array.length; i++)
	array[i].length 
	if (array[i].length < array[i-1].length) {
	console.log(array[i-1])
	}
	else {
	console.log(array[i])
	}
}

var names = ["Tom", "Jimmy", "Tomathy", "Rin"];

console.log(longest(names))