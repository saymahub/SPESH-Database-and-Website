<?php
 
// Username is root
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

$sql = " SELECT * FROM country ";
$country_query = mysqli_query($mysqli, $sql);
            $country = mysqli_fetch_array($country_query);
// SQL query to select data from database
// $sql = " SELECT * FROM country ";
// $result = $mysqli->query($sql);

// $country_query = mysqli_query($mysqli, $sql);

// <table>
//     <tr>
//         <td>name</td>
//     <tr>

    while($country_row = mysqli_fetch_array($country_query)){
        echo $country_row['name'];
        echo"\r\n";

    }
//echo $country['name'];
// while(rs.next())
// {
//     String name = rs.getString("name");
//     countries.add(new Country(name));
// }
    
$mysqli->close();
?>


<!-- HTML code to display data in tabular format -->
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#DBCCD4">
<h1 style="color: #6D4F60; font-size:50px; text-align:center;">Countries </h1>
		
<form name="loginForm" method="post" action="SearchCountryWeb">
    <input type="submit" value="Login" />
</form>
</body>
</html>