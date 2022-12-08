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

    * {
    box-sizing: border-box;
    }

    /* Create four equal columns that floats next to each other */
    .column {
        float: left;
        width: 25%;
        padding: 10px;
        /* height: 300px; Should be removed. Only for demonstration */
    }

    /* Clear floats after the columns */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    * {
    box-sizing: border-box;
    }

    /* Create four equal columns that floats next to each other */
    .column {
    float: left;
    width: 25%;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
    }

    /* Clear floats after the columns */
    .row:after {
    content: "";
    display: table;
    clear: both;
    }

    /* Responsive layout - makes the four columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 600px) {
    .column {
        width: 100%;
    }
    }

</style> 
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>

<body style=>
	<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
	
	<h2 style="color: #451C29; font-size:30px; text-align:center;" >Distributor Info</h2>
   
    <div class="row">
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
        
        $sql = " SELECT * FROM distributer";
        $query = mysqli_query($mysqli, $sql);
                    $prod = mysqli_fetch_array($query);
        
                    
        $myvariable = 0;
        $prod_id = 0;
        $first_name = [];
        $last_name = [];
        $email = [];
        $country = [];
        $phone = [];
        $image = [];
        $counter = 1;
       

        while($prod_row = mysqli_fetch_array($query)){
            $prod_id = $prod_row['id'];
            $first_name[$myvariable] = $prod_row['first name'];
            $last_name[$myvariable] = $prod_row['last name'];
            $email[$myvariable] = $prod_row['email'];
            $phone[$myvariable] = $prod_row['phone'];
            $image[$myvariable] = $prod_row['image'];

            ?>
            <div class="column">
                <h2 style="color: #4F2E38;"><?php echo $first_name[$myvariable] ?> <?php echo " " ?> <?php echo $last_name[$myvariable] ?></h2>
                <p><?php echo $email[$myvariable] ?></p>
                <p><?php echo $phone[$myvariable] ?></p>
                <img src="<?php echo $image[$myvariable] ?>" height="130" class="center"{margin-right: 30%}>
                <br></br>
                <a href="ContactDistributor.php"><input type="button" value="Contact" style="float: left;"></a>
            
            </div>

            <?php
            $counter = $counter + 1;
        }
        $mysqli->close();
        ?>
        
</body>
</html>