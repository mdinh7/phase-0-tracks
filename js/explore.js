// Look at string
// Separate string into individual letters
// Place letter into an array
// For each letter, look at its place in the array
// Reverse where it should be
// Return result

function reverse(string) {
	var splitString = string.split("");
	var reverseArray = splitString.reverse();
	var joined = reverseArray.join("");
	return joined
}

reversed = reverse("hello")

if (2 >= 1) {
	console.log(reversed)
}

