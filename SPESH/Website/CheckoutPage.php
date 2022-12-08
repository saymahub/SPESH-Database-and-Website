<!DOCTYPE html>
<html>
  <head>
    <title>Checkout</title>
		<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
		
    <style>
    body {
      height: 100%;
      margin: 0;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-image: url("https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%2Fimages%3Fk%3Dpastel%2Bpink%2Bwhite%2Bbackgrounds&psig=AOvVaw0cYMKv7DKB2JAFUDCDF4gT&ust=1670289119178000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOio1f6l4fsCFQAAAAAdAAAAABAE");
      background-image: linear-gradient(#9E7E88, #FFFFFF);
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
      }/* width */
        ::-webkit-scrollbar {
        width: 10px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
        background: #f1f1f1; 
        }
        
        /* Handle */
        ::-webkit-scrollbar-thumb {
        background: #888; 
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
        background: #555; 
        }


    </style>

  </head>

  <body>   
    <div class="west">
  	<p style = "color: #451C29; text-align:center; font-size:30px;" > <strong>Payment and Shipping</strong><p>
        <html>
        <head>
        <!-- <script>
        function myFunction() {
            var r = confirm("Please confirm your cart or cancel your order.");
            document.getElementById("demo").innerHTML;
        }
        </script> -->
        </head>
        <body>
        <?php
        ?>
        <!-- <button onclick="myFunction()">Confirm Cart</button>
        <p id="demo"></p> -->
        </body>
        </html>
        
        <?php echo " Enter different payment and shipping information or use default information";
        ?>
        <br>
        <br>
        
        <form action="ConfirmationPage.php" method="post">

            <br>
                <br>
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
                <label>Address:</label>
                <input type="text" />
            </div>
            <div>
            <label>Email:</label>
                <input type="text" />
                <br>
                <br>
                <input type="submit" value="Place order" />
            </div>
        </form>
    
 
    </div>
  </body>
</html>