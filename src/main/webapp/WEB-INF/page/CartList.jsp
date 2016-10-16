<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!-- 	navigation Bar -->
<%@ include file="navbar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/productList.css"/>">
</head>
<body>
	<div class="container" id="productTable" style="width:1145px">
		<h2>User Management</h2>
		<p>The List of Users in our Database</p>
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th style="visibility: hidden;">CartId</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Date</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carts}" var="cart">
					<tr>
						<td style="visibility: hidden;">${cart.cartId}</td>
						<td>${cart.productName}</td>
						<td>${cart.productPrice}</td>
						<td>${cart.quantity}</td>
						<td>${cart.totalPrice}</td>
						<td style="width: 170px">${cart.date}</td>
						<td>
						    <a href="delete/${cart.cartId}" class="btn btn-danger"> <span
								class="glyphicon glyphicon-trash"></span></a></td>  
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>