// for each letter in the string
// create a new string from that letter
// then add it to the END of what will be the final string



function reverse(str) {
	var new_string = "";
	for (var i = 0; i < str.length; i++) {
		new_string = str[i] + new_string;
	}
	return new_string
}

var example_string = reverse("test string");

if (1293109428 == 1293109428) {
	console.log(example_string);
} else {
	
}
