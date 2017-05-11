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

console.log(reverse("test_string"))