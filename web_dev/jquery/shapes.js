$("h1").css({
	"color": "white",
	"font-size" : "4em",
	"-webkit-text-stroke" : "2px black"
});

$("#inst").css({
	"color": "blue",
	"font-size" : "1.5em",
});

// $("#wow").style.visibility = "hidden";

var speeds = [500, 1500, 2000, 2500, 3000, 3500]

$("#start").click(function(){
    $("#d1").animate({left: '90%'}, {duration: speeds[Math.floor(Math.random() * speeds.length)]});
    $("#d2").animate({left: '90%'}, {duration: speeds[Math.floor(Math.random() * speeds.length)]});
    $("#d3").animate({left: '90%'}, {duration: speeds[Math.floor(Math.random() * speeds.length)]});
    $("#d4").animate({left: '90%'}, {duration: speeds[Math.floor(Math.random() * speeds.length)]});
    $("#wow").slideUp(1).css("visibility", "visible").slideDown(3000)
}); 


$("#refresh").click(function(){
    location.reload();
}); 
