<!DOCTYPE html>
<!-- <?php
    // session_start();
    // echo $_SESSION['test'];
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
    * {
    box-sizing: border-box;
    }

    .row {
    display: flex;
    }

    /* Create two equal columns that sits next to each other */
    .column {
    flex: 50%;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
    }

</style>
</head>
  <title>Explore</title>
	<body>

		<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
		<p style = "text-align:center; font-size:20px;"> Explore the various paintings SPESH has to offer!</p>
        <p style = "text-align:center; font-size:15px;"> Customers can only purchase a maximum of 3 paintings per transaction!</p>
		<a href="Login.php"><input type="button" value="Back" style="position:relative; font-size:12px; left: 20px; top: -170px;"></a>
        
		<div>
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
            
            $sql = " SELECT * FROM product";
            $query = mysqli_query($mysqli, $sql);
                        $prod = mysqli_fetch_array($query);
            
                        
            $myvariable = 0;
            $prod_id = 0;
            $prod_name = [];
            $prod_country = [];
            $prod_style = [];
            $prod_price = [];
            $prod_img = [];
            $prod_artist = [];
            $counter = 1;
            while($prod_row = mysqli_fetch_array($query)){
                $prod_id = $prod_row['id'];
                $prod_name[$myvariable] = $prod_row['prod name'];
                $prod_style[$myvariable] = $prod_row['style'];
                $prod_price[$myvariable] = $prod_row['price'];
                $prod_img[$myvariable] = $prod_row['image url'];
                $prod_artist[$myvariable] = $prod_row['artist'];

                //echo $prod_country[$myvariable];
                $myvariable = $myvariable + 1;
            }

            // $iter = 0;
        
            // while($iter < sizeof($prod_country)){
            //     echo $prod_country[$iter];
            //     echo $iter
            //     $iter++;
            // }

            $uniqArtist = array_unique($prod_artist);
            $uniqArtist = array_filter($uniqArtist);
            $uniqArtist = array_values($uniqArtist);
          
            $uniqStyle = array_unique($prod_style);
            $uniqStyle = array_filter($uniqStyle);
            $uniqStyle = array_values($uniqStyle);
            
            
           
            ?>

        <div class="row">
        <div class="column">
            <h2>Artists:</h2>
            <?php
            $iter = 0;
            while($iter < sizeof($uniqArtist)){
            echo $uniqArtist[$iter];
            ?>
            <br></br>
            <?php
          
            
            $iter ++;
            }
            ?>
    
        </div>
        <div class="column">
        <h2>Style:</h2>
        <?php

            $iter = 0;
            while($iter < sizeof($uniqStyle)){
            echo $uniqStyle[$iter];
            ?>
            <br></br>
            <?php
            // if($iter == 6 || $iter == 7 || $iter == 8 || $iter == 9 || $iter == 10 || $iter == 12){
            //     $iter = $iter + 2;
            // }

            
            $iter ++;
            }
            ?>
            <?php
            
        ?>
        </div>
        </div>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <br></br>
        <form action="SpecificSearch.php" method="post">
			<label>Search By Artist:</label>
			<input type="text" name="artist"/>           
            <label>OR</label>
            <br></br>
            <input type="submit" value="Confirm Search" />
            <br></br>
            <label>Search By Style:</label>
			<input type="text" name="style"/>
            <br></br>
            <input type="submit" value="Confirm Search" />
        </form>
        <form action="Cart.php" method="post">
		<div>
        <br></br>
        <label>OR</label>
        <br></br>
			<label>Selection 1:</label>
			<input type="text" name="selection1"/>
            <label>Selection 2:</label>
			<input type="text" name="selection2"/>
            <label>Selection 3:</label>
			<input type="text" name="selection3"/>
            <input type="submit" value="Confirm Selection" />
            <br></br>
            <p> Please enter painting ID into selection </p>
		</div>
        
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
            
            $sql = " SELECT * FROM product WHERE bought = 'no'";
            $query = mysqli_query($mysqli, $sql);
                        $prod = mysqli_fetch_array($query);
            
                        
            $myvariable = 0;
            $prod_id = 0;
            $prod_name = [];
            $prod_style = [];
            $prod_price = [];
            $prod_img = [];
            $prod_artist = [];
            $counter = 1;
            while($prod_row = mysqli_fetch_array($query)){
                $prod_id = $prod_row['id'];
                $prod_name[$myvariable] = $prod_row['prod name'];
                $prod_style[$myvariable] = $prod_row['style'];
                $prod_price[$myvariable] = $prod_row['price'];
                $prod_img[$myvariable] = $prod_row['image url'];
                $prod_artist[$myvariable] = $prod_row['artist'];

                //echo $precio_digital;
                ?>
                <!-- <img src= "<?php echo $prod_img[$myvariable] ?>" alt="test" height=200/> -->
                
                <p style = "color: #6A475A;position:relative; font-size:30px; left: 450px; top: 90px;" class = "adjust-line-height"> 
                    <strong> <?php echo $prod_id ?></strong>. <strong> <?php echo $prod_name[$myvariable] ?></strong>
                </p>
                <img src= "<?php echo $prod_img[$myvariable] ?>" alt="test"
                    style = "width:300px; position:relative; left:60px; top: 30px;">
                <b> </b>
                <b> </b>

                <p style = "color: #6A475A; position:relative; font-size:24px; left:100px; top: 40px;"  class = "adjust-line-height"> 
                    <strong> <?php echo $prod_price[$myvariable] ?></strong>
                </p>

                <!-- <p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
                    <strong> "<?php echo $prod_country[$myvariable] ?>"</strong>
                </p> -->

                <p style = "color: #6A475A; position:relative; font-size:18px; left:450px; top: -70px;"  class = "adjust-line-height"> 
                    <strong> "<?php echo $prod_artist[$myvariable] ?>"</strong>
                </p>
                <br> </br>
                <br> </br>

                <?php
                $counter = $counter + 1;
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