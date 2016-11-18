<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
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
	<footer class="footer-distributed">
	<div class="footer-right">
		<a href="<c:url value="/index1"/>"><span
			class="glyphicon glyphicon-home"></span></a>
		<security:authorize access="hasRole('ROLE_USER')">
			<a href="<spring:url value="/cart/getCartById" />"><span class="glyphicon glyphicon-shopping-cart"></a>
		</security:authorize>
		<a href="<c:url value="/login"/>"><span
			class="glyphicon glyphicon-user"></a> <a href="#"><span
			class="glyphicon glyphicon-envelope"></a>
	</div>
	<div class="footer-left">

		<p class="footer-links">
			<a href="<c:url value="/index1"/>">Home</a> · <a
				href="<c:url value="/aboutus"/>">About Us</a> · <a href="<c:url value="/getAllProducts" />">Product
				List</a> · <a href="<c:url value="/contactus"/>">Contact Us</a>
		</p>

		<p>Created by Mohammed Ismail.A ShopIeasy &copy; 2017</p>
	</div>
	</footer>
</body>
</html>