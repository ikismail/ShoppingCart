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
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/productGrid.css"/>">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}

.w3-sidenav a, .w3-sidenav h4 {
	font-weight: bold
}
</style>
</head>
<body>
	<div class="w3-row-padding" style="padding:0px 30px; margin-bottom: 20px">
		<div class="w3-third w3-container w3-margin-bottom">
			<a href="getProductById/2"><img src="<c:url value="/resource/images/products/two.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity"></a>
			<div class="w3-container w3-white">
				<p>
					<b>Oppo A37</b>
				</p>
				<p>
					<ul>
						<li>Technology - GSM/HSPA/LTE</li>
						<li>Resolution - 720x1280 pixels</li>
						<li>OS - Android OS, v5.1(Lollipop)</li>
						<li>Price - 10,000.00</li>
					</ul>
				</p>
			</div>
		</div>
		<div class="w3-third w3-container w3-margin-bottom">
			<a href="getProductById/7"><img src="<c:url value="/resource/images/products/seven.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity"></a>
			<div class="w3-container w3-white">
				<p>
					<b>Oppo A53</b>
				</p>
				<p>
					<ul>
						<li>Technology - GSM/HSPA/LTE</li>
						<li>Resolution - 720x1280 pixels</li>
						<li>OS - Android OS, v5.1(Lollipop)</li>
						<li>Price - 8,000.00</li>
					</ul>
				</p>
			</div>
		</div>
		<div class="w3-third w3-container w3-margin-bottom">
			<a href="getProductById/5"><img src="<c:url value="/resource/images/products/five.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity"></a>
			<div class="w3-container w3-white">
				<p>
					<b>Oppo F1s</b>
				</p>
				<p>
					<ul>
						<li>Technology - GSM/HSPA/LTE</li>
						<li>Resolution - 720x1280 pixels</li>
						<li>OS - Android OS, v5.1(Lollipop)</li>
						<li>Price - 18,000.00</li>
					</ul>
				</p>
			</div>
		</div>
	</div>
</body>
</html>