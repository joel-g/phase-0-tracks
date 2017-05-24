// alert("Test")

var header = document.getElementsByTagName("h1");
var list = document.getElementsByTagName("ul");
// var kid = document.getElementById("kid");
var kid = document.getElementsByTagName("img");


// list[0].style.visibility = "hidden";
header[0].style.border="3px solid red";

// kid2.style.border="3px solid red"
kid[0].style.visibility = "hidden";


function hide(event) {
	event.target.style.visibility = "hidden";
};

function unhideKid() {
	kid[0].style.visibility = "visible";
	button[0].style.visibility = 'hidden';

};
var button = document.getElementsByTagName("button")
button[0].addEventListener("click", unhideKid);

list[0].addEventListener("click", hide);
// kid[0].addEventListener("click", unhide);