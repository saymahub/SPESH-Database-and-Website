<!DOCTYPE html>
<html>
  <head>
    <title>SPESH! 
    <body>
    <title>Item</title>
		<h1 style="color: #6D4F60; font-size:60px; text-align:center;">SPESH Market! </h1>
		
    <style>
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
  <body style="background-color:#DBCCD4">   
    <div class="west">
  	<p style = "text-align:center; font-size:30px;" > <strong>Payment and Shipping</strong><p>
        <form action="/form/submit" method="post">
            <?php echo " Enter differemt payment and shipping information or use default information";
           ?>
           <br>
            <input type="submit" value="Use default" />
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
                <br>
                <br>
                <input type="submit" value="Place order" />
            </div>
        </form>
    
 
    </div>
  </body>
</html>