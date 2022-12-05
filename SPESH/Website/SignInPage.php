<!DOCTYPE html>
<html>
  <head>
    <title>Title of the document</title>
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
      }
    </style>
    
  </head>
  <body style="background-color:#DBCCD4">
  
    <div class="center">
  	<p style = "text-align:center; font-size:30px;" > <strong>Sign Up</strong><p>
        <form action="/form/submit" method="post">
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
  </body>
</html>








