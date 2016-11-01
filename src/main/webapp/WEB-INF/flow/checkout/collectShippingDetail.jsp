<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>

<%@ page isELIgnored="false"%>
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Cutomer</h1>


			<p class="lead">Customer Details:</p>
		</div>

		<form:form commandName="order" class="form-horizontal">

			<h3>Shipping Address:</h3>

			<div class="form-group">
				<label for="shippingStreet">Street Name</label>
				<form:input path="cart.customer.shippingAddress.address"
					id="shippingStreet" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingCity">City</label>
				<form:input path="cart.customer.shippingAddress.city"
					id="shippingCity" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingState">State</label>
				<form:input path="cart.customer.shippingAddress.state"
					id="shippingState" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingCountry">Country</label>
				<form:input path="cart.customer.shippingAddress.country"
					id="shippingCountry" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="shippingZip">Zipcode</label>
				<form:input path="cart.customer.shippingAddress.zipcode"
					id="shippingZip" class="form-Control" />
			</div>

			<input type="hidden" name="_flowExecutionKey" />

			<br />
			<br />

			<button class="btn btn-default"
				name="_eventId_backToCollectCustomerInfo">Back</button>

			<input type="submit" value="Next" class="btn btn-default"
				name="_eventId_shippingDetailCollected" />

			<button class="btn btn-default" name="_eventId_cancel">Cancel</button>

		</form:form>
	</div>
</div>

<%@ include file="/WEB-INF/page/footer.jsp"%>