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
        height: 300px; /* Should be removed. Only for demonstration */
    }

    /* Clear floats after the columns */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

</style> 
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>

<body style=>
	<h1 style="color: #451C29; font-size:60px; text-align:center;">SPESH Market! </h1>
	
	<h2 style="color: #451C29; font-size:30px; text-align:center;" >Distributor Info</h2>

<div class="row">
  <div class="column">
    <h2 style="color: #4F2E38;">Shelby Marcs</h2>
    <p>shelma12@gmail.com</p>
    <p>327 339 9302</p>
    <img src="https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg" width="150" height ="150" class="center"{margin-right: 30%}>
    <a href="HomePage.php"><input type="button" value="Contact" style="float: left;"></a>
  </div>
  <div class="column">
    <h2 style="color: #4F2E38;">Caleba Johnson</h2>
    <p>cjleba43@outlook.com</p>
    <p>823 349 6352</p>
    <img src="https://s2.r29static.com/bin/entry/099/0,71,2000,2000/x,80/1656776/image.jpg" width="150" height ="150" class="center"{margin-right: 30%}>
    <a href="HomePage.php"><input type="button" value="Contact" style="float: left;"></a>
  </div>
  <div class="column">
    <h2 style="color: #4F2E38;">Kyle Lee</h2>
    <p>23leekee@gmail.com</p>
    <p>394 849 2039</p>
    <img src="https://mediamass.net/jdd/public/documents/celebrities/6621.jpg" width="150" height ="150" class="center"{margin-right: 30%}>
    <a href="HomePage.php"><input type="button" value="Contact" style="float: left;"></a>
  </div>
  <div class="column" >
    <h2 style="color: #4F2E38;">Troy Bolton</h2>
    <p>basket.champ@yahoo.com</p>
    <p>587 829 1920</p>
    <img src="https://fotografias.antena3.com/clipping/cmsimages01/2018/10/18/226A74E0-C67D-40BA-BD22-9EE8E9909F51/69.jpg?crop=1:1,smart&width=1200&height=1200&optimize=low&format=webply" width="150" height ="150" class="center"{margin-right: 30%}>
    <a href="basket.champ@yahoo.com"><input type="button" value="Contact" style="float: left;"></a>
  </div>
</div>
<br></br>
<br></br>
<a href="Login.php"><input type="button" value="Back" style="float: left;"></a>
		
</body>
</html>