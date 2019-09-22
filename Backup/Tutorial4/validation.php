    <!DOCTYPE html>
<html>
    <body>

    <h2>HTML Form Validation</h2>

    <form action="validation.php" method="get">
        Date Of Birth:<br>
        <input type="date" name="dob" value="">
        <br>
        Favourite colour:<br>
        <input type="text" name="favouritecolour" value="">
        <br><br>
        <input type="submit" value="Submit">
    </form>

    <p>Enter your date of birth and favourite colour.</p>

    </body>
</html>

<?php

if(isset($_GET["dob"])) {
    $input_dob = $_GET["dob"];
      check_dob($input_dob);

}
if (isset($_GET["favouritecolour"])) {
    $input_colour = $_GET["favouritecolour"];
      check_favourite_colour($input_colour);
}

/**
 * Takes in a string representation of a dob and informs the user if it is valid.
 * @param $input String representation of a date of birth
 */
function check_dob($input) {
    // BEGIN EXERCISE 3a.
    if (empty($input)) {
        echo "Please enter a date<br>";
    }
    elseif (strtotime($input) > strtotime('now')){
        echo "This date is after today. Please enter a valid date.<br>";
    }
    else {
        echo strtotime($input) . "<br>";
    }

}


/**
 * Takes in a colour and informs the user if it is in the favourite colours array.
 * @param $colour String representation of a colour.
 */
function check_favourite_colour($colour) {
    $favourite_colours = array("blue", "red", "yellow", "orange", "black");
    // BEGIN EXERCISE 3b.
    $colour = strtolower($colour);
    if (empty($colour)) {
        echo "Please enter a colour<br>";
    }
    elseif (in_array($colour, $favourite_colours)) {
        echo $colour . " is one of the favourites colours!<br>";
    }
    else {
        echo $colour . " is not one of the favourite colours<br>";
    }
}