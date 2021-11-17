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

<title>Product Update</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="/" class="navbar-brand">Sporty Shoes</a>
			</div>
		</nav>
	</header>
	<br>
	<br>
	<h4>Add Product:</h4>
	<form method="post">
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th><label></label></th>
				<th>Price</th>
				<th>Brand</th>
				<th>Color</th>
				<th>Size</th>
				<th>Category</th>
			</tr>
			<tr>
				<td><input type="text" class="form-control" name="productName" required="required"></td>
				<td><input type="text" class="form-control" name="price" required="required"></td>
				<td><input type="text" class="form-control" name="brand" required="required"></td>
				<td><input type="text" class="form-control" name="color" required="required"></td>
				<td><input type="text" class="form-control" name="size" required="required"></td>
				<td><input type="text" class="form-control" name="category" required="required"></td>
			</tr>
		</table>
		<br>
		<button type="submit" class="btn btn-success">Add</button>
		<span><a href="/admin/allproducts" class="btn btn-primary">Back</a></span>
		<fieldset style="color: green">${successMessage}</fieldset>
	</form>
</body>
</html>