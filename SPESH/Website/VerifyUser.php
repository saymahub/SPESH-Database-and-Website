<?php

    $username = $_POST["username"];
    $password = $_POST["password"];


    // Create connection
    $con=mysqli_connect("localhost","root","","speshdb");
    // Check connection
    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }



    //Prevent SQL injections
    $query = $con->prepare("SELECT user_type FROM users WHERE username = ? AND password = ?");
    $query->bind_param("ss", $username, $password);
    $success = $query->execute();
    $query->close();

    $user_type = "";

    if($success) //If username and password are correct, retrieve the user type
    {

        $sql = "SELECT user_type FROM users WHERE username = '$username' AND password = '$password'";
        $result = mysqli_query($con, $sql);
        $user_type=mysqli_fetch_column($result, 0);
    }
    else
    {
        header("Location: HomePage.php");
    }

    //close connection
    mysqli_close($con);

    if($user_type == "customer")
    {
        header("Location: ExplorePage.php");
    } 
    else if($user_type == "admin")
    {
        header("Location: DistributorsPage.php");
    }


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
<title>Login Page</title>
</head>

<body style=>
	<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
	
	<h2 style="color: #451C29; font-size:30px; text-align:center;" >Hmm, looks like we can't find your account :/</h2>

	<h2 style="color: #451C29; font-size:20px; text-align:center;" >Enter your details wrong? Just go back and try again.</h2>
    <h2 style="color: #451C29; font-size:20px; text-align:center;" >Want to be part of the SPESH team? Shoot us an email!</h2>
    <h2 style="color: #451C29; font-size:15px; text-align:center;" >spesh@spesh.com</h2>

    <a href="Login.php"><input type="button" value="Back" style="float: left;"></a>
		
</body>
</html>