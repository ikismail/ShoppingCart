<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>


<%@ include file="navbar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="width:829px">
		<h2>Bordered Table</h2>
		<p>The .table-bordered class adds borders to a table:</p>
		<table class="table table-bordered" id="prod" >
			<tbody>
				<tr>
					<td>Prodcut ID</td>
					<td>${productObj.productId }</td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td>${productObj.productName }</td>
				</tr>
				<tr>
					<td>Product Category</td>
					<td>${productObj.productCategory}</td>
				</tr>
				<tr>
					<td>Product Description</td>
					<td>${productObj.productDescription}</td>
				</tr>
				<tr>
					<td>Product Manufacturer</td>
					<td>${productObj.productManufacturer}</td>
				</tr>
				<tr>
					<td>Product Price</td>
					<td>${productObj.productPrice}</td>
				</tr>
				<tr>
					<td>Stock Available</td>
					<td>${productObj.unitStock}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
