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
		background-image: linear-gradient(#9E7E88, #FFFFFF);
	}

	*{
	box-sizing: border-box;
	}

	/* Create two equal columns that floats next to each other */
	.column {
	float: left;
	width: 50%;
	padding: 10px;
	height: 300px; /* Should be removed. Only for demonstration */
	}

	/* Clear floats after the columns */
	.row:after {
	content: "";
	display: table;
	clear: both;
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

	div {
	margin-bottom: 10px;
	}
	label {
	display: inline-block;
	width: 150px;
	text-align: right;
	}
</style> 
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>

<body style="background-color:#DBCCD4">
	<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>

	<div class="row">
	<div class="column">
		<h2 style = "color: #4F2E38">Customer Login</h2>
		<form action="ExplorePage.php" method="post">
		<div>
			<label>Username:</label>
			<input type="text" />
		</div>
		<div>
			<label>Password</label>
			<input type="password" />
			
			<input type="submit" value="Sign In" />
		</div>
		<h2 style = "color: #4F2E38">Admin Login</h2>
		<form action="ExplorePage.php" method="post">
		<div>
			<label>Username:</label>
			<input type="text" />
		</div>
		<div>
			<label>Password</label>
			<input type="password" />
			
			<input type="submit" value="Sign In" />
		</div>
		</form>
		
    	</form>
		<!-- <a href="CustomerLogin.php"><button style = "background-color:#F6F6F6; width:200px; height:60px">Login Here</button></a>
		 -->
	</div>
	<div class="row">
	<div class="column">
		<h2 style = "color: #4F2E38">Not A Member? Sign Up Here!</h2>
		<form action="ExplorePage.php" method="post">
            <div>
                <label>Username:</label>
                <input type="text" />
            </div>
            <div>
                <label>Email:</label>
                <input type="text" />
            </div>
            <div>
                <label>Card Number:</label>
                <input type="text" />
            </div>
            <div>
                <label>CVV:</label>
                <input type="text" />
            </div>
            <div>
                <label>Expiration Date:</label>
                <input type="text" />
            </div>
            <div>
                <label>Country:</label>
                <input type="text" />
            </div>
            <div>
                <label>Province:</label>
                <input type="text" />
            </div>
            <div>
                <label>City:</label>
                <input type="text" />
            </div>
            <div>
                <label>Address:</label>
                <input type="text" />
            </div>
            <div>
            <label>Postal Code:</label>
                <input type="text" />
            </div>
            <div>
                <label>Password: </label>
                <input type="password" />
                <input type="submit" value="Sign Up" />
            </div>
			
        </form>
		</div>
		<a href="HomePage.php"><input type="button" value="Back" style="float: left;"></a>
		
	</div>
	</div>

	
	
	
	
</body>
</html>