<!DOCTYPE html>
<html>
<head>
    <title>Arrays and loops in PHP</title>
</head>
<body>
<h1>Tutorial 2 - Arrays!</h1>

<?php
    $nums = array(5, 11, 14, 52, -80, 2, 4, 3, 8, 15, -12, 142);
    $sentence = "Hello and welcome to the second tutorial of INFO 263";
    $people = array("Jeff"=>"Red", "Alice"=>"Black", "Alex"=>"Green", "Batman"=>"Yellow", "Bruce"=>"Green",
        "Sally"=>"Blue", "Ashley"=>"Yellow", "Steve"=>"Black", "Michael"=>"Yellow", "Charlie"=>"Blue", "Ben"=>"Yellow");

    function print_array($nums) {
        // BEGIN EXERCISE 1.

        for ($i=0; $i < count($nums); ++$i){
            echo "$nums[$i]<br>";
        }
    }
    //print_array($nums);

    function print_smallest_number($nums) {
        // BEGIN EXERCISE 2a.
        echo min($nums);
    }

    //print_smallest_number($nums);

    function print_largest_number($nums) {
        // BEGIN EXERCISE 2b.
        echo max($nums);
    }

    //print_largest_number($nums);

    function print_odd_numbers($nums) {
        // BEGIN EXERCISE 3.
        for ($i = 0; $i < count($nums); $i++){
            if ($nums[$i] % 2 == 1){
                echo "$nums[$i]<br>";
            }
        }
    }

    //print_odd_numbers($nums);


    function remove_even_numbers(&$nums) {
        $even_nums = array();
        // BEGIN EXERCISE 4.
        for ($i = 0; $i < count($nums); $i++){
            if ($nums[$i] % 2 == 0){
                array_push($even_nums, $nums[$i]);
            }
        }
        $nums = array_diff($nums, $even_nums);
        return $even_nums;

    }

    //print_r(remove_even_numbers($nums));
    //print_r($nums);

    function reverse_the_sentence($sentence) {
        // BEGIN EXERCISE 5.
        $result = array();
        $result = explode(" ", $sentence);
        //print_r($result);
        for ($i = (count($result) - 1); $i > -1; $i--){
            echo "$result[$i] ";
        }
    }

    //reverse_the_sentence($sentence);


    function print_favourite_colours($people) {
        // BEGIN EXERCISE 6.
        foreach ($people as $key => $value){
            echo "$key's favourite candy is $value <br>";
        }
    }

    //print_favourite_colours($people);
    function print_colour_occurrences($people) {
        // BEGIN EXERCISE 7.
        $counter_array = array_count_values($people);
        foreach ($counter_array as $colour => $count){
            print_r($counter_array);
            if ($colour == '1'){
                echo "1 person has $colour as their favourite colour<br>";
            }
            else{
                echo "$count people have $colour as their favourite colour<br>";
            }
        }
    }

    print_colour_occurrences($people);


?>
</body>
</html>
