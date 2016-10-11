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
	<div class="container" id="productTable" style="width:1000px">
		<h2>Product Management</h2>
		<p>The List of Products in our Database</p>
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>Screen-Shot</th>
					<th>Product-Id</th>
					<th>Category</th>
					<th>Product-Name</th>
					<th>Product-Price</th>
					<th>Stock Unit</th>
					<th>Description</th>
					<th>Manufacturer</th>
					<th>View/Edit/Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="prod">
					<tr>
						<td><img src="<c:url value="/resource/images/products/${prod.productId}.jpg"/>" alt="${prod.productName}" width="40%" /></td>
						<td>${prod.productId}</td>
						<td>${prod.productCategory}</td>
						<td>${prod.productName}</td>
						<td>${prod.productPrice}</td>
						<td>${prod.unitStock}</td>
						<td>${prod.productDescription}</td>
						<td>${prod.productManufacturer}</td>
						<td><a href="getProductById/${prod.productId}"> <span
								class="glyphicon glyphicon-info-sign"></span></a> 
								<a href="admin/product/editProduct/${prod.productId}"> <span
								class="glyphicon glyphicon-edit"></span></a>
						    <a href="admin/delete/${prod.productId}"> <span
								class="glyphicon glyphicon-trash"></span></a></td>  
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>