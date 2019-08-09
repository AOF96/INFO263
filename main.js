// console.log("Lets print the current time once per second");
//
// setInterval(function() {
//     console.log("The current Unix time is: " + new Date().getTime());
// }, 1000);

var stringOne = "Hello World";
var numberTwo = 7;
var booleanThree = true;

var lengthOfName = function(firstName, middleName, lastName) {
    var fullName = firstName + middleName + lastName;
    return fullName.length;
}

var testNameLength = lengthOfName("Joe", "Fred", "Bloggs");

//console.log(testNameLength);

var power = function(base, exponent){
    return Math.pow(base, exponent);
}

var testPower = power(2, 4);
//console.log(testPower);


// var fizzBuzz = function(number){
//     if (number % 3 === 0 && number % 5 === 0){
//         console.log("FizzBuzz");
//     }
//     else if (number % 5 === 0){
//         console.log("Buzz");
//     }
//     else if (number % 3 === 0){
//         console.log("Fizz");
//     }
//
// }

//fizzBuzz(30);

var fizzBuzz = function(number){
    switch (true){
        case (number % 3 === 0 && number % 5 === 0):
            console.log("FizzBuzz");
            break;

        case (number % 5 === 0):
            console.log("Buzz");
            break;

        case (number % 3 === 0):
            console.log("Fizz");
            break;

    }


}

//fizzBuzz(30);

var inList = function(item, listOfItems) {

    // Iterate over list of items and return true if item is in list.
    for (var i = 0; i < listOfItems.length; i++){
        if (listOfItems[i] === item){
            return true;
        }
    }
    // If item is not in list and we have reached the end of the loop, return false
    return false;
}

var result = inList("Dog", ["Dog", "Cat", "Bird"]);
console.log(result)

var result = inList("Hamster", ["Dog", "Cat", "Bird"]);
console.log(result)
