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

<title>User DashBoard</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="admin-dashboard" class="navbar-brand">Sporty Shoes</a>
				<div><h4>Welcome <%= request.getParameter("username") %></h4></div>
			</div>
			<ul class="navbar-nav">
				<li><a href="/user/changepassword/<%= request.getParameter("username")%>" class="nav-link">Change Password</a></li>
				<li><a href="/" class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<h1>Select the Product To Buy</h1>
	
	<table  border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Brand</th>
            <th>Color</th>
            <th>Size</th>
            <th>Category</th>
        </tr>
        <c:forEach var="product" items="${allProducts}">
            <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td>${product.price}</td>
            <td>${product.brand}</td>
            <td>${product.color}</td>
            <td>${product.size}</td>
            <td>${product.category}</td>
            <td><a href="/purchase/${product.productId}/<%=request.getParameter("username")%>">Buy Now</a></td>
            </tr>
        </c:forEach>
    </table><br><br>
</body>
</html>