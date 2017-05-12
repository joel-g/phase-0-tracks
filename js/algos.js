// take array of strings
// loop through comparing strings
// compare first two strings
// store longer string in a new variable
// compare next string, store longer one in the variable.
// return the variable at after comparing all the strings

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