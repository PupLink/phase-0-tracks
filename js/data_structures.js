 // colors = ["blue", "purple", "red", "green"]
 // names = ["Jyno", "Avain", "Martini", "Trigger"]

 // colors.push("yellow")
 // names.push("Link")


colors =["a"]
names = ["b"]

 function Car(color, name) {
 	this.color = color
 	this.name = name
	console.log("your new car:", this)
 }

 for (i = 0; i < colors.length; i++){
 	var newCar = new Car ("red", "Mini-cooper");
 }

// *** release 3 question 1 ***
//
// The for...in statement iterates over the enumerable properties of an object, in arbitrary order.
// For each distinct property, statements can be executed.
//
// *** release 3 question 2 ***
//
// Advantages for constructor functions are good for 
// creating an object, its probably wiser to set variables
// in a constructor rather than the object tself...
