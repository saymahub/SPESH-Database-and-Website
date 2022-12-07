<!DOCTYPE html>
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
    <title>Contact Distributor </title>
	<body>
        <h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
        <p style = "color: #451C29; text-align:center; font-size:30px;" > <strong>Contact distributor</strong><p>
        <a href="DistributorsPage.php"><input type="button" value="Back" style="float: left; ;position:relative; top: -60px;"></a>
        <form action="ContactDistributor.php" method="post">
		<div>
        <br></br>
			<label>Enter your email:</label>
			<input type="text" name="Admin email"/>
            <br></br>
            <label>Enter distributor email:</label>
			<input type="text" name="Distributor email"/>
            <br></br>
            <label>Message:</label>
			<input type="text" name="Message"/>
            <br></br>
            <!-- <input type="submit" value="Send email" /> -->

		</div>
        </form>
        <html>
        <head>
        <script>
            function myFunction() {
                var x;
                var r = confirm("Press OK to send or Cancel.");
                if (r == true) {
                x = "The email has been sent.";
            }
                else {
                x = "The email has been cancelled.";
            }
            document.getElementById("demo").innerHTML = x;
        }
        </script>
        </head>
        <body>
        <?php
        ?>
        <button onclick="myFunction()">Send email</button>
        <p id="demo"></p>
        </body>
        </html>


    </body>
</html>

