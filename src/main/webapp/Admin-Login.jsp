<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>DK Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="Admin/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="Admin/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="favicon.ico" type="image/x-icon" >
<!-- font-awesome icons -->
<link href="Admin/css/font-awesome.css" rel="stylesheet"> 
<!-- Add Icon Web Pages -->
<link href="https://i.pinimg.com/600x315/d3/b0/ec/d3b0ec40a8046297bf67fdba2450c78f.jpg" rel='icon'/>
<!-- //font-awesome icons -->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!-- js -->
<script src="Admin/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
</head> 
<body class="login-bg">
		<div class="login-body">
			<div class="login-heading">
				<h1>Login</h1>
			</div>
			<div class="login-info">
			<h6 class="text-center">
			  	<% String msg = (String) request.getAttribute("msg"); %>
			  	<% if(msg!=null){ %>
			  	<% out.print(msg); %>
			  	<% } %>
 			</h6>
				<form action="AdminController" method="post">
					<input type="text" class="user" name="Email" placeholder="Email" required="">
					<input type="password" name="Password" class="lock" placeholder="Password">
					<input type="submit" name="action" value="Login">
					<hr>
					<h2>or login with</h2>
					<div class="login-icons">
						<ul>
							<li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="dribbble"><i class="fa fa-dribbble"></i></a></li>
						</ul>
					</div>
				</form>
			</div>
		</div>
</body>
</html>