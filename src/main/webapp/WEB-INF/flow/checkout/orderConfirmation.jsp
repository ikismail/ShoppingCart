<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<jsp:useBean id="now" class="java.util.Date" />

<%@ include file="/WEB-INF/page/navbar.jsp"%>
<!DOCTYPE jsp:useBean PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/register.css"/>">
		
	</head>
	<body style="padding: 0px;">
		<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Order</h1>
			<p class="lead">Order confirmation</p>
		</div>
	<div class="container">
	 <div class="row">
     <form:form commandName="order" class="form-horizontal">
		<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
		<div class="txt-center"><h1>Receipt</h1></div>
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<address>
				<strong>Shipping Address</strong><br />
				${order.cart.customer.shippingAddress.address} <br />
				${order.cart.customer.shippingAddress.city},
				${order.cart.customer.shippingAddress.state} <br />
				${order.cart.customer.shippingAddress.country},
				${order.cart.customer.shippingAddress.zipcode}
				</address>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 text-right">
				<p>Shipping Date:<fmt:formatDate type="date" value="${now}" /></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<address>
				<strong>Billing Address</strong><br />
				${order.cart.customer.billingAddress.address} <br />
				${order.cart.customer.billingAddress.city},
				${order.cart.customer.billingAddress.state} <br />
				${order.cart.customer.billingAddress.country},
				${order.cart.customer.billingAddress.zipcode}
				</address>
			</div>
		</div>
		<div class="row">
			<table class="table table-hover">
				<thead>
    				<tr>
					<td>Product</td>
					<td>#</td>
					<td class="text-center">Price</td>
					<td class="text-center">Total</td>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="cartItem" items="${order.cart.cartItem}">
					<tr>
					<td class="col-md-9"><em>${cartItem.product.productName}</em></td>
					<td class="col-md-1" style="text-align: center">${cartItem.quality}</td>
					<td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
					<td class="col-md-1" style="text-align: center">${cartItem.price}</td>
					</tr>
				</c:forEach>
					<tr>
					<td></td>
					<td></td>
					<td class="text-right">
					<h4><strong>Grand Total:</strong></h4>
					</td>
					<td class="text-center text-danger">
					<h4><strong>$ ${order.cart.totalPrice}</strong></h4>
					</td>
					</tr>

				</tbody>
			</table>
		</div>


						<input type="hidden" name="_flowExecutionKey" /> <br /> <br />

						<button class="btn btn-default"
							name="_eventId_backToCollectShippingDetail">Back</button>

						<input type="submit" value="Submit Order" class="btn btn-default"
							name="_eventId_orderConfirmed" />

						<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
		
	</body>
</html>


<%@ include file="/WEB-INF/page/footer.jsp"%>