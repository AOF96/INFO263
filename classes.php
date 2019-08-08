<!DOCTYPE html>
<html>
<head>
    <title>Classes in PHP</title>
</head>
<body>
    <h1>Classes</h1>

    <?php
        // BEGIN EXERCISE 8b.
        require_once "Person.php";

        $person1 = new Person("John", 21, "Green");
        $person2 = new Person("Sally", 24, "Yellow");
        $person3 = new Person("Alice", 19, "Red");
        $person4 = new Person("Patrick", 21, "Blue");
        $person5 = new Person("Batman", 30, "Black");
        $people = array($person1, $person2, $person3, $person4, $person5);

        //$alien1 = new Alien("Blork", "425", "Blorkenium Falcon", "Blork stunner");

        // BEGIN EXERCISE 9a.
        // Replace this line with something that prints out a persons name.
        function getName(){
            return $this -> $name;
        }
        // Replace this line with something that sets the person's name to something else.
        function setName($newName){
            $this -> $name = $newName;
        }
        // Replace this line with something that prints out a persons name and compare with the previous result.

        function getAge(){
            return $this -> $age;
        }

        function getColour(){
            return $this -> $favourite_colour;
        }

        function print_people($people) {
            // BEGIN EXERCISE 9b.
            for ($i = 0; $i < sizeof($people); $i++){
                echo "My name is " . $people[$i] -> getName() . ". I'm " . $people[$i] -> getAge() . " years old and my 
                favourite colour is " . $people[$i] -> getFavouriteColour() . ".<br>";
            }
        }

        //print_people($people);
        // BEGIN EXERCISE 9c.
        // Make Batman and patrick eat a 'Carrot' and some 'French Fries
        //for ($i = 0; $i < sizeof($people); $i++){
            //$people[$i] -> eatFood("Carrot and some French Fries");
            //echo ".<br>";
        //}

        // BEGIN EXERCISE 10a.
        // Fire the laser.
        // Then fly away in your spaceship.

        function print_aliens($aliens) {
            // EXERCISE 10b.
        }

        function make_all_species_jump($people, $aliens) {
            // BEGIN EXERCISE extra.
        }


    ?>
</body>
</html>
