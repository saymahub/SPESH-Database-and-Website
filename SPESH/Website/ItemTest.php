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
        $sql = " SELECT name FROM country WHERE name = 'China'";
        $chinaquery = mysqli_query($mysqli, $sql);
        $china = mysqli_fetch_array($chinaquery);

    session_start();
    $_SESSION['test'] = $china[0];
    
    
    //echo $country['name'];
    // while(rs.next())
    // {
    //     String name = rs.getString("name");
    //     countries.add(new Country(name));
    // }
        
    $mysqli->close();
?>
<title>TEST</title>
<a href="ExplorePage.php"><button style = "background-color:#F6F6F6; width:200px; height:60px"> View Items </button></a>