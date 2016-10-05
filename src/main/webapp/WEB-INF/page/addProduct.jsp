<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/register.css"/>">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<h1 class="well">Add Product</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
				<c:url value="/admin/product/addProduct" var="url"></c:url>


				<form:form method="post" action="${url}"
					commandName="productFormObj">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="productId">Product Id</form:label>
								<form:input type="text" placeholder="Product Id.."
									class="form-control" path="productId" disabled="true" />
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="productName">Product Name</form:label>
								<form:input type="text" placeholder="Enter Product Name.."
									class="form-control" path="productName" />
								<form:errors path="productName"></form:errors>
							</div>
						</div>
						<div class="form-group">
							<form:label path="productCategory">Product Category</form:label>

							<form:radiobutton path="ProductCategory.categoryId" value="1" />
							Android
							<form:radiobutton path="ProductCategory.categoryId" value="2" />
							Windows
							<form:radiobutton path="ProductCategory.categoryId" value="3" />
							Linux
							<form:radiobutton path="ProductCategory.categoryId" value="4" />
							Mac
						</div>
						<div class="form-group">
							<form:label path="productDescription">Product Description</form:label>
							<form:textarea placeholder="Enter Description.." rows="3"
								class="form-control" path="productDescription"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="productManufacturer">Product Manufacturer</form:label>
								<form:input type="text" placeholder="Enter Manufacturer.."
									class="form-control" path="productManufacturer" />
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productPrice">Product Price</form:label>
								<form:input type="text" placeholder="Enter Price.."
									class="form-control" path="productPrice" />
								<form:errors path="productPrice"></form:errors>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="unitStock">Product Stock</form:label>
								<form:input type="text" placeholder="Enter Product Stock.."
									class="form-control" path="unitStock" />
							</div>
						</div>

						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>