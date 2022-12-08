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
  <title>Search Results</title>
	<body>

		<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
        <form action="Cart.php" method="post">
                    <div>
                        <br></br>

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
                </form>
        <?php
			$artistFlag = 0;
			$styleFlag = 0;
			if($_POST["artist"] != null){
				$artist= $_POST["artist"];
				$artistFlag = 1;
			}
			
			else if ($_POST["style"] != null){
				$style = $_POST["style"];
				$styleFlag = 1;
			}
			
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
                
                <?php
				if($artistFlag == 1){
					if($prod_artist[$myvariable] == $artist && $_POST["artist"] != null){
					?>
				
					<p style = "color: #6A475A;position:relative; font-size:30px; left: 300px; top: 90px;" class = "adjust-line-height"> 
						<strong> <?php echo $prod_id ?>. </strong><strong> <?php echo $prod_name[$myvariable] ?></strong>
					</p>
					<img src= "<?php echo $prod_img[$myvariable] ?>" alt="test"
						style = "width:200px; position:relative; left:60px; top: 30px;">
					<b> </b>
					<b> </b>

					<p style = "color: #6A475A; position:relative; font-size:24px; left:100px; top: 40px;"  class = "adjust-line-height"> 
						<strong> <?php echo $prod_price[$myvariable] ?></strong>
					</p>

					<!-- <p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
						<strong> "<?php echo $prod_country[$myvariable] ?>"</strong>
					</p> -->

					<p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
						<strong> "<?php echo $prod_artist[$myvariable] ?>"</strong>
					</p>
					<br> </br>
					<br> </br>

					<?php
					}
				}

				else if($styleFlag == 1){
					if($prod_style[$myvariable] == $style && $_POST["style"] != null){
					?>
				
					<p style = "color: #6A475A;position:relative; font-size:30px; left: 300px; top: 90px;" class = "adjust-line-height"> 
						<strong> <?php echo $prod_id ?></strong><strong> <?php echo $prod_name[$myvariable] ?></strong>
					</p>
					<img src= "<?php echo $prod_img[$myvariable] ?>" alt="test"
						style = "width:200px; position:relative; left:60px; top: 30px;">
					<b> </b>
					<b> </b>

					<p style = "color: #6A475A; position:relative; font-size:24px; left:100px; top: 40px;"  class = "adjust-line-height"> 
						<strong> <?php echo $prod_price[$myvariable] ?></strong>
					</p>

					<!-- <p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
						<strong> "<?php echo $prod_country[$myvariable] ?>"</strong>
					</p> -->

					<p style = "color: #6A475A; position:relative; font-size:18px; left:300px; top: -70px;"  class = "adjust-line-height"> 
						<strong> "<?php echo $prod_artist[$myvariable] ?>"</strong>
					</p>
					<br> </br>
					<br> </br>

					<?php
					}
				}

				?>

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