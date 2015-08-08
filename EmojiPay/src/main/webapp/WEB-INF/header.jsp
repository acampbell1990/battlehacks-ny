<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Emoji PAY :)</title>

	<!--Import JQUERY-->
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    <div class="topNav" id="homeButton"><h1>EmojiPAY :)</h1></div>
    
  </head>
  <body>
  	<div class="topNav_menu">
  		<div class="topNav_button"><a href="">Register</a></div>
  		<div class="topNav_button"><a href="">Edit Profile</a></div>
  		<div class="topNav_button"><a href="">Create Merchant</a></div>
  		<div class="topNav_button"><a href="">Edit Merchant</a></div>
  		<div class="topNav_button"><a href="">Log In</a></div>
  	</div>
  </body>
  
  <script type="text/javascript">
  $(document).ready(funtion(){	  
	  $('#homeButton').click(funtion(){
		  document.location.href=window.location.origin.toString()+"/index.jsp";
	  });
  });
  </script>
  
  
</html>