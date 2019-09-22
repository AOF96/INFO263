<!DOCTYPE html>
<html>
    <body>
    <h2>POST Requests</h2>
<?php

require_once "Credential.php";

if (isset($_COOKIE['username'])) {
    // Username cookie is set, show welcome message
    $username = $_COOKIE['username'];
    echo "<p>Welcome back $username!</p>";
} else {
    // Cannot find username cookie, display login form
    echo <<< EOT
        <p>Login with your username and password.</p>
        <form action="post.php" method="POST">
            Username:<br>
            <input type="text" name="username" value="">
            <br>
            Password:<br>
            <input type="password" name="password" value="">
            <br><br>
            <input type="submit" value="Login">
        </form>
EOT;
}

if (isset($_POST['username']) && isset($_POST['password'])) {
    $username = htmlentities($_POST["username"]);
    $password = $_POST["password"];

    //login_user($username, $password);
    authenticate($username, $password);
}

/**
 * Function which attempts to login in a user and shows either an error message on a failed attempt or a success message
 * if the user's username and password match the one stored on the server.
 * @param $username String user's username
 * @param $password String user's password
 */
function login_user($username, $password) {
    $server_user = "superman";
    $server_pass = "Kryptonite";
    if ($username != $server_user || $password != $server_pass) {
        echo "ACCESS DENIED! Incorrect username/password";
    }
    else {
        echo "Welcome to INFO263!";
    }
    // BEGIN EXERCISE 4b
}


/**
 * Attempts to authenticate a user by checking if their credentials match that which are stored in the credentials array.
 * @param $user String username we are trying to use to authenticate.
 * @param $pass String password we are trying to use to authenticate.
 */
function authenticate($user, $pass) {
    $credential1 = new Credential("batman", "bruce");
    $credential2 = new Credential("spiderman", "peter_parker");
    $credential3 = new Credential("ethan-hunt", "impossible");
    $credential4 = new Credential("black.panther", "Wakanda");
    $credentials = array($credential1, $credential2, $credential3, $credential4);

    // BEGIN EXERCISE 4c.
    $found = false;
    foreach ($credentials as $username) {
        if ($username -> validate($user, $pass)) {
            $found = true;
            echo $user . " has been authenticated";
            break;
        }
    }
    if ($found == false){
        echo "Invalid username/password";
    }
    else {
        setcookie("username", $user, time() + 1000);
    }

    // BEGIN EXERCISE 5.

}

?>

    </body>
</html>
