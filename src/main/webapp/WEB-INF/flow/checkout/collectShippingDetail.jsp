<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
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
			href="<c:url value="/resource/css/register.css"/>">

	</head>
	<body style="padding: 0px;">

	<div class="container" style="margin-bottom: 19px">
			<h1 class="well">Confirm Shipping Address!</h1>
			<div class="col-lg-12 well">
				<div class="row">

					<form:form commandName="order">
						<div class="col-sm-12">
							<div class="row">
							
							<div><center>Shipping Address</center></div>
							<div class="form-group">
								<label for="address">Address</label>
								<form:textarea type="text" 
									class="form-control" path="cart.customer.shippingAddress.address"></form:textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="city">City</label>
									<form:input type="text" 
										class="form-control" path="cart.customer.shippingAddress.city"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="state">State</label>
									<form:input type="text" 
										class="form-control" path="cart.customer.shippingAddress.state"></form:input>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="country">Country</label>
									<form:input type="text" 
										class="form-control" path="cart.customer.shippingAddress.country"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="zipcode">Zipcode</label>
									<form:input type="text" 
										class="form-control" path="cart.customer.shippingAddress.zipcode"></form:input>
								</div>
							</div>
							<input type="hidden" name="_flowExecutionKey" />

							<div class="form-actions">
								<button style="float: left; margin-left: 0px" class="btn btn-lg btn-default"	name="_eventId_backToCollectCustomerInfo">Back</button>
								<button type="Submit" style="margin-right: 10px; margin-left: 0px" class="btn btn-lg btn-info" name="_eventId_shippingDetailCollected">Next</button>
								<button style="float: right;" class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
							</div>
						</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	  </body>
</html>
<%@ include file="/WEB-INF/page/footer.jsp"%>
