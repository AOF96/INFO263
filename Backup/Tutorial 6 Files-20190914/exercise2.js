var aPerson = {name: "Adrian", age: 23, degrees: "Computer Science"};


function betterPerson(firstName, lastName, age, degrees = []) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.degrees = degrees;

    this.getDegrees = function () {
        for (var i = 0; i < this.degrees.length; i++) {
            console.log(i + 1, this.degrees[i]);
        }
    }

    this.sayHi = function () {
        console.log(`Hello, my first name is ${this.firstName} . I also have
         a last name, it is ${this.lastName} . I am ${this.age} years old and I have these
         degrees:`);
        this.getDegrees();
    }

}


//console.log(aPerson);
//console.log(`Hi, my name is ${aPerson.name} , I am ${aPerson.age} years old and I have the following degrees: ${aPerson.degrees}.`);
var test = new betterPerson("Adrian", "Osuna", 23, ["Computer Science", "Software Engineering", "Music", "Commerce"]);
test.sayHi();