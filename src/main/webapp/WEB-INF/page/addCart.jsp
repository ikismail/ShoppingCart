<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="navbar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="margin-bottom:19px">
		<h1 class="well">Hello ${pageContext.request.userPrincipal.name} Add Cart !</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
				<c:url value="/cart/addCart" var="url"></c:url>
				<form:form method="post" action="${url}" commandName="cartFormObj">
					<div class="col-sm-12">
						<div class="row">
						<div style="visibility: hidden;">
								<form:label path="cartId"></form:label>
								 <form:input type="text"
									path="cartId" ></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productName">Product Name</form:label>
								 <form:input type="text" value="${productObj.productName}"
									placeholder="Enter Product Name.." class="form-control"
									path="productName" ></form:input>
								 <form:errors path="productName"></form:errors>
							</div>
							
							<div class="col-sm-4 form-group">
								<form:label path="productPrice">Product Price</form:label>
								 <form:input type="text" id="price"
									placeholder="Enter Product Price.." class="form-control"
									path="productPrice"></form:input>
								 <form:errors path="productPrice"></form:errors>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="quantity">Number of Quantity</form:label>
								 <form:input type="number" id="quantity" onkeyup="myfunction()"
									placeholder="Number of Quantity.." class="form-control"
									path="quantity"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="totalPrice">Total Price</form:label>
								 <form:input type="text"  id="totalPrice"
									placeholder="Number of Quantity.." class="form-control"
									path="totalPrice" readonly="true" ></form:input>
							</div>
						
						</div>
						<div class="row">
<!-- 					 	<div class="col-sm-4 form-group"> -->
<!-- 							<button class="btn btn-primary" on="myfunction()">Update</button> -->
<!-- 						</div> -->
						<div class="col-sm-4 form-group">
							<button type="submit" class="btn btn-lg btn-info">Submit</button>
						</div>
						<div>
						<a href=" <c:url value="/getAllProducts" />" class="col-sm-4 form-group">Continue Shopping</a>
						</div>
						</div>
					</div>
					
				</form:form>
			</div>
		</div>
	</div>

<script type="text/javascript">

function myfunction(){
	var price = document.getElementById("price").value;
	var quantity = document.getElementById("quantity").value;
	var answer = price * quantity;

	var totalPrice = document.getElementById('totalPrice');
	totalPrice.value=answer;
}
</script>
</body>
</html>
<%@ include file="footer.jsp"%>
