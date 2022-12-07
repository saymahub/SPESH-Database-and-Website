

<!-- if($username != null && $email != null && $cardnum != null && $cvv != null && $expiry != null && $addy != null && $pass != null){ -->

<?php

$username = $_POST["newuser"];
$email = $_POST["newemail"];
$cardnum = $_POST["newcardnum"];
$cvv = $_POST["newcvv"];
$expiry = $_POST["newexpiry"];
$addy = $_POST["newaddy"];
$pass = $_POST["newpass"];



// Create connection
$con=mysqli_connect("localhost","root","","speshdb");
// Check connection
if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql1 = "INSERT INTO users (username, email, card, cvv, expiry, password, address, user_type) VALUES ($username, $email, $cardnum, $cvv, $expiry, $pass, $addy, 'customer')";
$query = mysqli_query($con, $sql1);

//close connection
mysqli_close($con);

if($user_type == "customer")
{
    header("Location: ExplorePage.php");
} 



?>