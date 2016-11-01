<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>

<div class="container" style="margin-bottom: 19px">
	<h1 class="well">Customer Information !</h1>
	<div class="col-lg-12 well">
		<div class="row">

			<!--  RegisterServlet  form -->
			<form:form commandName="order">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-6 form-group">
							<form:label path="cart.customer.firstName">First Name</form:label>
							<form:input type="text" class="form-control"
								path="cart.customer.firstName"></form:input>

						</div>
						<div class="col-sm-6 form-group">
							<form:label path="cart.customer.lastName">Last Name</form:label>
							<form:input type="text" class="form-control"
								path="cart.customer.lastName"></form:input>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<form:label path="cart.customer.users.emailId">Email Id</form:label>
							<form:input type="text" class="form-control"
								path="cart.customer.users.emailId"></form:input>

						</div>
						<div class="col-sm-6 form-group">
							<form:label path="cart.customer.customerPhone">Phone Number</form:label>
							<form:input type="text" class="form-control"
								path="cart.customer.customerPhone"></form:input>

						</div>
					</div>

					<div class="form-actions">
						<button type="submit" class="btn btn-lg btn-default" value="Next"
							name="_eventId_customerInfoCollected"></button>
					</div>
					<div class="form-actions">
						<button class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/page/footer.jsp"%>