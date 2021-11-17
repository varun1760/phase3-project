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

<title>Sporty Shoes</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand">Sporty Shoes</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="register" class="nav-link">User Registration</a></li>
				<li><a href="adminLogin" class="nav-link">Admin Login</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div>
		<fieldset style="float: right; background: cyan">
			<div class="container col-md-20">
				<h4>User Login:</h4>
				<div class="card">
					<div class="card-body">
						<form method="post" action="login">
							<fieldset class="form-group">
								<label> <i class="fa fa-user"></i>&nbsp&nbspUser Name :
								</label> <input type="text" class="form-control" name="username"
									placeholder="enter your username" value="" required="required">
							</fieldset>
	
							<fieldset class="form-group">
								<label> <i class="faa fa-unlock-alt"></i>&nbsp&nbspPassword
									:
								</label> <input type="password" class="form-control" name="password"
									placeholder="enter your password" value="" required="required">
							</fieldset>
							<br>
							<fieldset class="form-group">
							<button type="submit" class="btn btn-success">Sign In</button>
							</fieldset>
							<br>
							<fieldset class="form-group">
								<label>Create an Account</label> <a href="register"><input
									type="button" class="btn btn-success" value="Sign Up"></a>
							</fieldset>
							<br>
							<fieldset style="color: red">${message}</fieldset>
						</form>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
</body>
</html>