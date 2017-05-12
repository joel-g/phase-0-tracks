var colorArray = [
  "blue",
  "green",
  "red",
  "gold"
];
​
var horseNameArray = [
  "Ed",
  "Secretariat",
  "Sausage",
  "Glue"
];
​
colorArray.push("cerulean");
console.log(colorArray);
horseNameArray.push("Snow");
console.log(horseNameArray);
​
var horses = {};
for (i = 0; i < colorArray.length; i++) {
  horses[horseNameArray[i]] = colorArray[i];
}
​
console.log(horses);
​
​
function Car(make, model, year, nitrous) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.nitrous = nitrous;
​
  this.honk = function() { console.log("BEEP BEEP!"); };
}
​
var honda = new Car("Honda", "Civic", 1991, true);
honda.honk();
​
console.log(honda);
​
var mercedes = new Car("Mercedes", "S600", 2017, false);
​
console.log(mercedes.model);
console.log(mercedes.nitrous);