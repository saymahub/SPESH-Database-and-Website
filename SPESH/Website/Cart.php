<!DOCTYPE html>
<html>
<style> 
body{
	margin: 0;
	padding: 0;
	background: linear-gradient(to bottom right, #9E7E88, #FFFFFF);
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.CartContainer{
	width: 70%;
	height: 90%;
	background-color: #ffffff;
    border-radius: 20px;
    box-shadow: 0px 10px 20px #1687d933;
}

.Header{
	margin: auto;
	width: 90%;
	height: 15%;
	display: flex;
	justify-content: space-between;
	align-items: center;	
}

.Heading{
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 700;
	color: #2F3841;
}

.Action{
	font-size: 14px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #E44C4C;
	cursor: pointer;
	border-bottom: 1px solid #E44C4C;
}

.Cart-Items{
	margin: auto;
	width: 90%;
	height: 22%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.image-box{
	width: 15%;
	text-align: center;
}
.about{
	height: 90%;
	width: 50%;
}
.title{
	padding-top: 10px;
	line-height: 10px;
	font-size: 32px;
	font-family: 'Open Sans';
	font-weight: 800;
	color: #202020;
	line-height: 1em;
}
.subtitle{
	line-height: 10px;
	font-size: 18px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #909090;
}

.counter{
	width: 15%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.btn{
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #d9d9d9;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 900;
	color: #202020;
	cursor: pointer;
}
.count{
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #202020;
}

.prices{
	height: 100%;
	text-align: right;
}
.amount{
	padding-top: 20px;
	font-size: 26px;
	font-family: 'Open Sans';
	font-weight: 800;
	color: #202020;
}
.save{
	padding-top: 5px;
	font-size: 14px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #1687d9;
	cursor: pointer;
}
.remove{
	padding-top: 5px;
	font-size: 14px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #E44C4C;
	cursor: pointer;
}

.pad{
	margin-top: 5px;
}

hr{
	width: 66%;
	float: right;
	margin-right: 5%;
}
.checkout{
	float: right;
	margin-right: 5%;
	width: 28%;
}
.total{
	width: 100%;
	display: flex;
	justify-content: space-between;
}
.Subtotal{
	font-size: 22px;
	font-family: 'Open Sans';
	font-weight: 700;
	color: #202020;
}
.items{
	font-size: 16px;
	font-family: 'Open Sans';
	font-weight: 500;
	color: #909090;
	line-height: 10px;
}
.total-amount{
	font-size: 36px;
	font-family: 'Open Sans';
	font-weight: 900;
	color: #202020;
}
.button{
	margin-top: 10px;
	width: 100%;
	height: 40px;
	border: none;
	background: linear-gradient(to bottom right, #875062, #FFFFFF);
	border-radius: 20px;
	cursor: pointer;
	font-size: 16px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #202020;
}

</style>
<body>
	<?php 
		$selection1 = $_POST["selection1"];
		$selection2 = $_POST["selection2"];
		$selection3 = $_POST["selection3"];
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
		
		$myvariable = 0;
		$prod_img = [];
		$prod_name = [];
		$prod_price = [];
		$sql = " SELECT * FROM product";
		$query = mysqli_query($mysqli, $sql);
    	$counter = 0;
    	$totalPrice = 0;

		while ($prod_row = mysqli_fetch_array($query)) {
			$prod_img[$myvariable] = $prod_row['image url'];
			$prod_name[$myvariable] = $prod_row['prod name'];
			$prod_price[$myvariable] = $prod_row['price'];
	    	$myvariable = $myvariable + 1;
		}
	?>
	<div class="CartContainer">
			<div class="Header">
				<h3 class="Heading">Shopping Cart</h3>

			</div>
	<?php
		if ($selection1 >= 1){
			$sql = " UPDATE product SET bought ='yes' WHERE id=$selection1";
			$query = mysqli_query($mysqli, $sql);
	    	$counter = $counter + 1;
			$price = $prod_price[$selection1];
			$price = ltrim($price, '$');
			$totalPrice = $totalPrice + floatval($price);
			?>	
			<div class="Cart-Items">
				<div class="image-box">
					<img src="<?php echo $prod_img[$selection1] ?>" style={{ height="120px" }} />
				</div>
				<div class="about">
					<h1 class="title"><?php echo $prod_name[$selection1] ?></h1>
				</div>
				<div class="prices">
					<div class="amount"><?php echo $prod_price[$selection1] ?></div>

				</div>
			</div>
			<?php
		}
	?>
   

   <?php
		if ($selection2 >= 1){
			$sql = " UPDATE product SET bought ='yes' WHERE id=$selection2";
			$query = mysqli_query($mysqli, $sql);
			$counter = $counter + 1;
			$price = $prod_price[$selection2];
			$price = ltrim($price, '$');
			$totalPrice = $totalPrice + floatval($price);
			
			?>
			<div class="Cart-Items">
				<div class="image-box">
					<img src="<?php echo $prod_img[$selection2] ?>" style={{ height="120px" }} />
				</div>
				<div class="about">
					<h1 class="title"><?php echo $prod_name[$selection2] ?></h1>
				</div>
				<div class="prices">
					<div class="amount"><?php echo $prod_price[$selection2] ?></div>

				</div>
			</div>
			<?php
		}
	?>
	  
	<?php
		if ($selection3 >= 1){
			$sql = " UPDATE product SET bought ='yes' WHERE id=$selection3";
			$query = mysqli_query($mysqli, $sql);
			$counter = $counter + 1;
			$price = $prod_price[$selection3];
			$price = ltrim($price, '$');
			$totalPrice = $totalPrice + floatval($price);
			?>
			<div class="Cart-Items">
				<div class="image-box">
					<img src="<?php echo $prod_img[$selection3] ?>" style={{ height="120px" }} />
				</div>
				<div class="about">
					<h1 class="title"><?php echo $prod_name[$selection3] ?></h1>
				</div>
				<div class="prices">
					<div class="amount"><?php echo $prod_price[$selection3] ?></div>

				</div>
			</div>
			<?php
		}
	?>
   	 <hr> 
   	 <div class="checkout">
   	 <div class="total">
   	 	<div>
   	 		<div class="Subtotal">Sub-Total</div>
			<?php
            	$counter .= " items";
			?>
   	 		<div class="items"><?php echo $counter?></div>
   	 	</div>
		<?php

			
		?>
   	 	<div class="total-amount"><?php echo $totalPrice ?></div>
   	 </div>
   	 <a href="CheckoutPage.php"><button class="button">Checkout</button></div></a>
   </div>
</body>
</html>