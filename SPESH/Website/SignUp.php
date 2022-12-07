

<!-- if($username != null && $email != null && $cardnum != null && $cvv != null && $expiry != null && $addy != null && $pass != null){ -->

<?php

$a = $_POST["newuser"];
$b = $_POST["newemail"];
$c = $_POST["newcardnum"];
$d = $_POST["newcvv"];
$e = $_POST["newexpiry"];
$f = $_POST["newaddy"];
$g = $_POST["newpass"];

$username = str_pad($a, strlen($a) +2, "'", STR_PAD_BOTH);
$email = str_pad($b, strlen($b) +2, "'", STR_PAD_BOTH);
$cardnum = str_pad($c, strlen($c) +2, "'", STR_PAD_BOTH);
$cvv = str_pad($d, strlen($d) +2, "'", STR_PAD_BOTH);
$expiry = str_pad($e, strlen($e) +2, "'", STR_PAD_BOTH);
$addy = str_pad($f, strlen($f) +2, "'", STR_PAD_BOTH);
$pass = str_pad($g, strlen($g) +2, "'", STR_PAD_BOTH);

// echo $username;
// echo $email;
// echo $cardnum;
// echo $cvv;
// echo $expiry;
// echo $addy;
// echo $pass;

$user = 'root';
$password = '';

$database = 'speshdb';

// Server is localhost with
// port number 3306
$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,
                $password, $database);

// Checking for connections
if ($mysqli->connect_error) {
    die('Connect Error (' .
    $mysqli->connect_errno . ') '.
    $mysqli->connect_error);
}

$sql = "INSERT INTO users (username, email, card, cvv, expiry, password, address, user_type) VALUES ($username, $email, $cardnum, $cvv, $expiry, $pass, $addy, 'customer')";
$query = mysqli_query($mysqli, $sql);
//close connection
$mysqli->close();

header("Location: ExplorePage.php");


?>