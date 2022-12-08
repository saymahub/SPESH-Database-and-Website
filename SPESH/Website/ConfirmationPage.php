<?php

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

$month = strval(rand(1, 12));
$day = strval(rand(1, 28));
$year = strval(rand(2023, 2028));

$date = $month  . "/" . $day . "/" . $year;
$fulldate = str_pad($date, strlen($date) + 2, "'", STR_PAD_BOTH);

$sql = "INSERT INTO shipping_deets (ETA) VALUES ($fulldate)";
$query = mysqli_query($mysqli, $sql);
//close connection
$mysqli->close();


?>

<!DOCTYPE html>
<html>
<head>
<style> 
	body {
		height: 100%;
		margin: 0;
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-image: url("https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%2Fimages%3Fk%3Dpastel%2Bpink%2Bwhite%2Bbackgrounds&psig=AOvVaw0cYMKv7DKB2JAFUDCDF4gT&ust=1670289119178000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOio1f6l4fsCFQAAAAAdAAAAABAE");
		background-image: linear-gradient(#FFFFFF, #9E7E88);
	}

</style> 
<meta charset="ISO-8859-1">
<title>Thank You!</title>
</head>

<body style=>
	<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
	
	<h2 style="color: #451C29; font-size:30px; text-align:center;" >Thank you for Shopping at Spesh!</h2>

	<h2 style="color: #451C29; font-size:20px; text-align:center;" >Your package will arrive on: <?php echo $date ?></h2>
    <h2 style="color: #451C29; font-size:15px; text-align:center;" >why did you order things on such sketchy website. have you no shame</h2>

    <a href="HomePage.php"><input type="button" value="Return Home" style="float: left;"></a>
		
</body>
</html>