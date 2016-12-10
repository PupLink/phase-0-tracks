// the goal is to print the longest phrase in the array, how can we do that?
// start with looking at the lengths of each array
// how can i get the code to know the lengths of each string?
// can i sort the phrases to make it easier? (looked up methods in js and forund .sort)
// The sort() method sorts the elements of an array in place and returns the array.
// once i have the lengths of each string being processed how do i print just the longest?
// if i could re order the phrases so the shortest is always first then i could just always print the last phrase in the array

// well i did it, but its printing it one lingle letter at a time :/ 
// how can i get it to print one string?!?! oh so frustrating :/
// what is in my code that prints it, what did i do wrong?

// i got it to print out the longest string... but now it is printing it out 13 times :/
// where in my code does it say to print it that many times?!

// apparently i didnt need "for (var i = 0; i < creatures.length; i++) {" for code to print out the result all along

var creatures = ["Basilisk", "Dragon", "Flan" , "King Behemoth"]
var creatures = creatures.sort(function (a,b) { return b.length - a.length})[0];
console.log(creatures);

var longArray = ["longest phrase", "longer phrase", "long phrase"]
var longArray = longArray.sort(function (a,b) { return b.length - a.length})[0];
console.log(longArray);

var bugs = ["bumble bee", "lady bug", "beetle", "praying mantis"]
var bugs = bugs.sort(function (a,b) { return b.length - a.length})[0];
console.log(bugs);

// its working <3

//=====================================================================

// So im suppossed to write a code now that can return 
// things true if at least one key-value pair matches between 
// two objects.

// gets names and ages set to work with, 
// i think an array would work best so i can edit and add stuff later
// make dreams come true... or statments, that works too

// Eureka i need to use || to compare two values for a true or false statment
// var o4 = false || (3 == 4); // f || f returns false
// i need to compare the values in each array still
// take the name

// lets start at the begining, i need a function!
// set variables for names
// go from there, ill get back to you...
// ok i set up a function called compare, it hold all factors i need...
// now how do i compare them! ugh!


function compare(person1, person2) {
	//i want to compare person 1 and person 2 in an 'or' statment
//how do i do that, where do i start?
// print with console
// take variable 1 and compare it to variable 2
	// var name = ["DJ", "Josh"]
	// console.log( name[0] == name[1] )
	// console.log( )
	return (person1['age'] == person2['age']) || (person1['name'] == person2['name'])
//arr o4 = false || (3 == 4); // f || f returns false

}
result = compare({
	'name': 'DJ',
	'age': 24
},
{
	'name': 'Josh',
	'age': 24
})

// Victory!
// ====================================================================

// time to genorate blabble!
// so i need to create random words of babbling nonsense
// need a random number genorator
// make a function that takes an argument
// greate an array that can be filled with data
// turn the argument into an intiger for length of an array
// make a loop to do the function 10 times printes as a result
// im using a lot of variables, maybe i can DRY it up after
// what am i pushing into the array?
// hopfully random letters, i will have to find out latter, because first!
// i need to loop this x amount of times, where 'x = words'

//its 4 am :( i think i need to call it...)

function num(length){
return (length)
var stringLength = babble.push(length)
var babble = [i]
	var i = Math.floor((Math.random() * 25));
	var char = [String.fromCharCode(97+n)]
	for (var i = 0 ; i <= lenght.length ; i++) {
	console.log(babble[i]);
	}

}

console.log(num(8))

