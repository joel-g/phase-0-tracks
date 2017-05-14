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

console.log(longestStr(arr));
console.log(longestStr(cars));


// # RELEASE 1

var animal1 = {animal: "Dog", fur: "gray"};
var animal2 = {animal: "Dog", fur: "brown"};


function matches(obj1, obj2) {


var keys1 = Object.keys(obj1);
var keys2 = Object.keys(obj2);
// var values1 = Object.values(obj1);
// var values2 = Object.values(obj2);
for(var key in obj1) {
    var values1 = obj1[key];
}

// for (var i = 0; i < keys1.length; i++) {
//   if keys1[i] == keys2[i];
// }
return values1
}

matches(animal1, animal2)
// console.log(keys1)
console.log(matches(animal1, animal2))


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
