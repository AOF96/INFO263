var bigObject =
    {
        firstName: "Alex",
        middleName: "Justin",
        lastName: "Matthews",
        numberOfJunkSpeedingTickets: 305,
        dateOfBirth:
            {
                year: 1996,
                month: 4,
                day: 23,
            },
        age: 22,
        address:
            {
                number: 123,
                street: "Ilam Rd",
                city: "Christchurch",
                postcode: 8011,
                country: "New Zealand",
                countryShortName: "NZ",
            },
        junkData: "asadgasdgsabsavbjhvbjhsdkafvjhsadvjvbjhsavfjh4vvjvs a4k2",
        cars:
            [
                {
                    make: "Toyota",
                    model: "Corolla",
                    year: 1998,
                    colour: "White",
                    odometer: 190500,
                },
                {
                    make: "Tesla",
                    model: "Roadster",
                    year: 2017,
                    colour: "Red",
                    odometer: 20000,
                },
                {
                    make: "Mercedes",
                    model: "Benz",
                    year: 2006,
                    colour: "Black",
                    odometer: 385412,
                },
                {
                    make: "BMW",
                    model: "i8",
                    year: 2018,
                    colour: "Blue",
                    odometer: 100,
                },
            ],
        favouriteFood: "Sushi",
        moreJunkData: 12435253,
    };


// BEGIN EXERCISE 5
function removeBadFields(obj) {
    delete bigObject["age"];
    delete bigObject["favouriteFood"];
}

// BEGIN EXERCISE 6
function printAllCarMakesAndModels(obj) {
    var cars = bigObject["cars"];
    for (var i = 0; i < cars.length; i++) {
        console.log(`${i + 1}. Make ${cars[i].make} model ${cars[i].model} `);
    }
}

// BEGIN EXTRA EXERCISE
function removeJunkFields(obj) {
    var keys = Object.keys(bigObject);
    for (var i = 0; i < keys.length; i++) {
        if (keys[i].match(/junk/gi )) {
            delete  bigObject[keys[i]];
        }
    }
    console.log(keys);
    console.log(Object.keys(bigObject));

}

/*console.log(bigObject["age"]);
console.log(bigObject["favouriteFood"]);
removeBadFields(bigObject);
console.log(bigObject["age"]);
console.log(bigObject["favouriteFood"]); */
//printAllCarMakesAndModels(bigObject);
removeJunkFields(bigObject);
