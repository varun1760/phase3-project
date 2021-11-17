<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>All Users</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand">Sporty Shoes</a>
			</div>
			<div><h4>Admin Privilege</h4></div>
			<ul class="navbar-nav">
				<li><a href="/admin/changepassword" class="nav-link">Change Password</a><br></li>
				<li><a href="/" class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<h1>Users Details</h1>
	<table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>UserName</th>
        </tr>
        <c:forEach var="user" items="${allUsers}">
            <tr>
                <td>${user.userId}</td>
                <td>${user.username}</td>
            </tr>
        </c:forEach>
    </table><br><br>
	<div>
		<fieldset style="background: green">
			<div class="container col-md-20">
				<a href="/admin-dashboard">Go To DashBoard</a><br> 
			</div>
		</fieldset>
	</div>
</body>