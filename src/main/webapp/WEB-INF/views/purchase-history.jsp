<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Orders</title>
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
  <h1>Purchase Reports</h1>
  	<p>
  	<div style="width:300px; display:inline-block;">
  	<form method="post">
    Filter: <input type="text" name="category" placeholder="category" required />
    &nbsp;
    <input type="submit" value="Search"/>
   	</form>
   	</div>
   	
   	<div style="width:300px; display:inline-block;">
   	<form method="post">
    Filter: <input type="date" name="date" required />
    &nbsp;
    <input type="submit" value="Search"/>
   </form>
   </div>  
   <br>
   ${message}
   <hr>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Order ID</th>
            <th>Order Date</th>
            <th>User ID</th>
            <th>User Name</th>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Brand</th>
            <th>Color</th>
            <th>Size</th>
            <th>Category</th>
        </tr>
        <c:forEach var="order" items="${purchases}">
            <tr>
                <td>${order.orderId}</td>
                <td>${order.orderDate}</td>
                <td>${order.users.userId}</td>
                <td>${order.users.username}</td>
                <td>${order.products.productId}</td>
                <td>${order.products.productName}</td>
                <td>${order.products.price}</td>
                <td>${order.products.brand}</td>
                <td>${order.products.color}</td>
                <td>${order.products.size}</td>                
                <td>${order.products.category}</td>
            </tr>
        </c:forEach>
    </table><br><br>
    <hr>
	<div>
		<fieldset style="background: green">
			<div class="container col-md-20">
				<a href="/admin-dashboard" style="color: white">Go To DashBoard</a><br> 
			</div>
		</fieldset>
	</div>
</body>
</html>