<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
	crossorigin="anonymous">

<title>Admin DashBoard</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="admin-dashboard" class="navbar-brand">Sporty Shoes</a>
				<div><h4>Welcome Admin</h4></div>
			</div>
			
			<ul class="navbar-nav">
				<li><a href="/admin/changepassword" class="nav-link">Change Password</a></li>
				<li><a href="/" class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div>
		<div class="container col-md-20">
			<h4>Administrator Access:</h4><br><br>
			<a href="/admin/allusers">Show Users List</a><br>
			<a href="/admin/allproducts">Show All Products</a><br>
			<a href="/admin/ordersdetails">Show Purchase Report</a><br> 
		</div>
	</div>
</body>
</html>