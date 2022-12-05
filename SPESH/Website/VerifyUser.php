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

    if($success) //If username and password are correct, retrieve the job type
    {

        $sql = "SELECT user_type FROM users WHERE username = '$username' AND password = '$password'";
        $result = mysqli_query($con, $sql);
        $user_type=mysqli_fetch_column($result, 0);
    }
    else
    {
        header("Location: Login.php");
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