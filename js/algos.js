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