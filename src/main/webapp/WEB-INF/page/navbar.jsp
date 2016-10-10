<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/overall.css"/>">
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">

		<div class="nav navbar">
			<img class="navbar-brand"
				src="<c:url value="/resource/images/shopieasy-logo.png"/>"
				href="<c:url value="/index"/>" width="200px" height="100px"
				alt="logo-image"></img>
			<div class="col-xs-6 ">
				<label for="ex2"></label> <input class="form-control" id="ex3"
					type="text" placeholder="Search...">
			</div>
			<div>
				<a href="#" class="btn btn-info"> <span
					class="glyphicon glyphicon-search"></span> Search
				</a>
			</div>
		</div>

		<div class="navbar-header">

			<a class="navbar-brand" href="<c:url value="/index1" />">ShopIeasy</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href=" <c:url value="/index1" />">Home</a></li>
			<li><a href=" <c:url value="/aboutus" />">About Us</a></li>
			<li><a href=" <c:url value="/getAllProducts" />">Product List</a></li>
			<li><a href=" <c:url value="/admin/product/addProduct" />">Add Product</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span
					class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
			<li><a href="<c:url value="/register" />"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="<c:url value="/login" />"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
	</div>
	</nav>


</body>
</html>