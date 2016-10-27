<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resource/js/productController.js"/>"></script>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container-wrapper">
		<div class="container">
			<section>
			<div class="jumbotron">
				<div class="container" style="margin-top: 15px; ">
					<h3>Cart</h3>
					<p>All the selected books in your shopping cart</p>
				</div>
			</div>
			</section>
			<div ng-app="myapp" ng-controller="myController" style="margin-bottom: 30px">
				<div ng-init="getCart(${cartId})">
					<br> List of Products Purchased
					<div>
						<a class="btn btn-danger pull-left" ng-click="clearCart()"> <span
							class="glyphicon glyphicon-remove-sign"> </span>Clear Cart
						</a>
					</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Quantity</th>
								<th>Price</th>
								<th>Total Price</th>
							</tr>
						</thead>
						<tr ng-repeat="cart in carts.cartItem">
							<td>{{cart.product.productName}}</td>
							<td>{{cart.quality}}</td>
							<td>{{cart.product.productPrice}}</td>
							<td>{{cart.price}}</td>
							<td><a href="#" class="btn btn-danger"
								ng-click="removeFromCart(cart.cartItemId)"><span
									class="glyphicon glyphicon-remove"></span>remove</a></td>
						</tr>
					</table>
					Grand Total Price: {{calculateGrandTotal()}}
				</div>
				<c:url value="/getAllProducts" var="url"></c:url>
				<a href="${url}" class="btn btn-default">Continue Shopping</a>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>