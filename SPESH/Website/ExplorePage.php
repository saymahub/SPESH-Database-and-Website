<!DOCTYPE html>
<!-- <?php
    session_start();
    echo $_SESSION['test'];

?> -->
<html lang="en">
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

    .container { 
    height: 200px;
    position: relative;
    }

    .center {
    margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    }

</style>
</head>
  <title>Explore</title>
	<body>

		<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
		<p style = "text-align:center; font-size:20px;"> Explore the multitude of products SPESH has to offer!</p>
		<a href="Login.php"><input type="button" value="Back" style="position:relative; font-size:12px; left: 20px; top: -170px;"></a>
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
        
        $sql = " SELECT * FROM product ";
        $query = mysqli_query($mysqli, $sql);
                    $prod = mysqli_fetch_array($query);
        
                    
        $myvariable = 0;
        $prod_name = [];
        $prod_country = [];
        $prod_price = [];
        $prod_img = [];
        $prod_description = [];
        while($prod_row = mysqli_fetch_array($query)){
            $prod_name[$myvariable] = $prod_row['prod name'];
            $prod_country[$myvariable] = $prod_row['country'];
            $prod_price[$myvariable] = $prod_row['price'];
            $prod_img[$myvariable] = $prod_row['image url'];
            $prod_description[$myvariable] = $prod_row['description'];
            
            //echo $precio_digital;
            ?>
                <!-- <img src= "<?php echo $prod_img[$myvariable] ?>" alt="test" height=200/> -->
                <p style = "color: #6A475A;position:relative; font-size:30px; left: 300px; top: 90px;" class = "adjust-line-height"> 
                    <strong> "<?php echo $prod_name[$myvariable] ?>"</strong>
                </p>
                <img src= "<?php echo $prod_img[$myvariable] ?>" alt="test"
                    style = "width:200px; position:relative; left:60px; top: 30px;">
                <b> </b>
                <b> </b>

                <p style = "color: #6A475A; position:relative; font-size:24px; left:100px; top: 40px;"  class = "adjust-line-height"> 
                    <strong> <?php echo $prod_price[$myvariable] ?></strong>
                </p>

                <p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
                    <strong> "<?php echo $prod_country[$myvariable] ?>"</strong>
                </p>

                <p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
                    <strong> "<?php echo $prod_description[$myvariable] ?>"</strong>
                </p>
                <br> </br>
                <br> </br>
                <a href="Cart.php">
                    <a href="Login.php"><button style = "background-color:#F6F6F6; width:200px; height:30px; font-size:16px; position:relative; left:554px; top: -150px;">
                        Add to Cart 
                    </button>
                </a>
            <?php
            // echo '<div style="font-size:1.25em;color:#6A475A;font-weight:bold;"><span style="font-size:30px;color:#6A475A;font-weight:bold;position:relative;left: 300px; top: 90px;">'.$prod_name[$myvariable].'</span></div>';
           
            // echo "<br />";
            
    
            echo"\r\n";
            $myvariable = $myvariable + 1;

        }
            
        $mysqli->close();
    ?> 
        
        <title>Item</title>
        <style>
        
        .adjust-line-height {
            line-height: 1em;
        }
        </style>


	</body>
</html>