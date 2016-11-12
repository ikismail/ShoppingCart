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
<link rel="stylesheet" type="text/css"	href="<c:url value="/resource/css/register.css"/>">

</head>
<body style="padding: 0px;">

	<div class="container" style="margin-bottom: 19px">
		<center><h1 class="well">Customer Details!</h1></center>
		<div class="col-lg-12 well">
			<div class="row">

				<form:form commandName="order">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="firstName">First Name</label>
								<form:input type="text" class="form-control"
									path="cart.customer.firstName"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label for="lastName">Last Name</label>
								<form:input type="text" class="form-control"
									path="cart.customer.lastName"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="users.emailId">Email Id</label>
								<form:input type="text" class="form-control"
									path="cart.customer.users.emailId"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label for="customerPhone">Phone Number</label>
								<form:input type="text" class="form-control"
									path="cart.customer.customerPhone"></form:input>
							</div>
						</div>

						<div>Billing Address:</div>
						<div class="form-group">
							<label for="address">Address</label>
							<form:textarea type="text" class="form-control"
								path="cart.customer.billingAddress.address"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="city">City</label>
								<form:input type="text" class="form-control"
									path="cart.customer.billingAddress.city"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label for="state">State</label>
								<form:input type="text" class="form-control"
									path="cart.customer.billingAddress.state"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="country">Country</label>
								<form:input type="text" class="form-control"
									path="cart.customer.billingAddress.country"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label for="zipcode">Zipcode</label>
								<form:input type="text" class="form-control"
									path="cart.customer.billingAddress.zipcode"></form:input>
							</div>
						</div>
						<input type="hidden" name="_flowExecutionKey" />

						<div class="form-actions">
							<button type="Submit" class="btn btn-lg btn-info"
								name="_eventId_customerInfoCollected" style="margin-right: 44px; margin-left: 0px">Next</button>
							<button class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
						</div>

					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/page/footer.jsp"%>