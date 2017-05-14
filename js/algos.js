// take array of strings
// loop through comparing strings
// compare first two strings
// store longer string in a new variable
// compare next string, store longer one in the variable.
// return the variable at after comparing all the strings

// # RELEASE 0
arr = ["long phrase","longer phrase", "very very long phrase", "longest phrase", "lil phrase"];
cars = [
"Honda",
"Lexus",
"Chevrolet",
"Ford",
"Toyota",
"Audi"
];

function longestStr(arr) {
var length = 0;
var longest;
for(var i=0; i < arr.length; i++){
			if (arr[i].length > length) {
        length = arr[i].length;
        longest = arr[i];
    }      
} 
	return longest;
}
// DRIVER CODE
console.log(longestStr(arr));
console.log(longestStr(cars));


// # RELEASE 1
// comparing key value pairs
// accept two objects as arguments
// create an array from the keys of each object
// create an array from the values (MUCH HARDER THAN MAKING ONE FROM KEYS WTF JAVASCRIPT)
// check array element pairs for equality
// return true or false for a match

var animal1 = {animal: "dog", fur: "gray"};
var animal2 = {animal: "dog", fur: "brown"};
var animal3 = {animal: "cat", fur: "yellow"};
var animal4 = {animal: "mouse", fur: "white"};
var person1 = {name: "matteus", age: 13}
var person2 = {name: "diego", age: 10}
var person3 = {name: "matteus", age: 14}

function matches(obj1, obj2) {
	var match = false // match starts out false and will update to true if theres a match
	var keys1 = Object.keys(obj1); // create an array of the keys - 1st object
	var keys2 = Object.keys(obj2); // create an array of the keys - 2nd object
	var values1 = [] // empty arrays for the values
	var values2 = []
	for (var i=0; i<keys1.length; i++){ // adding values to array - 1st object
		values1.push(obj1[keys1[i]])
		}
	for (var i=0; i<keys2.length; i++){ // adding values to array - 1st object
	values2.push(obj2[keys2[i]])
		}
		// now that we have everything in arrays we can check for equality
	for (var c=0; c<keys1.length; c++){
		if (keys1[c] == keys2[c] && values1[c] == values2[c]){
			match = true
		}
	}
return match
}
// DRIVER CODE to test the function
console.log(matches(animal3, animal4)); // false
console.log(matches(animal1, animal2)); // true
console.log(matches(animal1, animal3)); // false
console.log(matches(animal1, person2)); // false - note that it doesn't break if there no key matches either
console.log(matches(person1, person2)); // false
console.log(matches(person1, person3)); // true
// console.log(keys1); Debugging code that no longer works because the variables are no longer global
// console.log(keys2)
// console.log(values1)
// console.log(values2)


// # RELEASE 2
// Function that takes an argument
// Start with an empty array
// Create non-sense words with a random number generator
// Loop the creation of non-sense words to match the argument
// push non-sense words to the array
// return the array

function randString() { // This function makes ONE word of a random length)
	var newString = "";
	var stringLength = Math.floor((Math.random() * 10) + 1); // generates a number between 1 and 10
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	for (var s=0; s < stringLength; s++){
//	while (counter < stringLength){
		newString += alpha.charAt(Math.floor(Math.random() * alpha.length)); // populates string with random letters from ALPHA
			}
	return newString
}

// console.log(randString())

function randArray(x) { // This function takes a parameter and calls the previous function that many times to fill the array
	var arr = []
	var counter = 0
	while (counter < x){
		arr.push(randString())
		counter++
	}
	return arr
}

//Add driver code that does the following 10 times:
// generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

driverCounter = 0
while (driverCounter < 10){
	var workingArray; // storing array so I can run operations on it
	workingArray = randArray(3);
	console.log(workingArray);
	console.log(longestStr(workingArray));
		driverCounter++;
}
