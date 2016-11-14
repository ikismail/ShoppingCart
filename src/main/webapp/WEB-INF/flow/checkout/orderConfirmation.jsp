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
	<div class="container" style="margin-bottom: 19px">
	 <div class="row" style="margin-top: 20px">
     <form:form commandName="order" class="form-horizontal">
		<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="width: 100%; margin-left: 0%">
		<div style="text-align: center;"><h1>Receipt</h1></div>
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
		<div class="container">
			<table class="table table-hover">
				<thead>
    				<tr>
					<th class="text-center">Product</th>
					<th class="text-center">Quantity</th>
					<th class="text-center">Price</th>
					<th class="text-center">Total</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="cartItem" items="${order.cart.cartItem}">
					<tr>
					<td style="text-align: center"><em>${cartItem.product.productName}</em></td>
					<td style="text-align: center">${cartItem.quality}</td>
					<td style="text-align: center">${cartItem.product.productPrice}</td>
					<td style="text-align: center">${cartItem.price}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			</div>
					<div>
					<h4><strong>Grand Total: </strong> <strong class="text-danger">$ ${order.cart.totalPrice}</strong></h4>
					</div>
					
		</div>

				
						<input type="hidden" name="_flowExecutionKey" /> <br /> <br />
					
						<button style="float: left;" class="btn btn-lg btn-default"
							name="_eventId_backToCollectShippingDetail">Back</button>
						
						<input style="margin-left: 200px" type="submit" value="Submit Order" class="btn btn-lg btn-info"
							name="_eventId_orderConfirmed" />
						
						<button style="float: right;" class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
		
	</body>
</html>


<%@ include file="/WEB-INF/page/footer.jsp"%>