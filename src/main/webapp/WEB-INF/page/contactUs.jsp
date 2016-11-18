<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact Us</title>
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<c:url value="/resource/css/form-elements.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/css/style.css"/>">

<!--  JavaScript -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<c:url value="/resource/js/retina-1.1.0.min.js"/>"></script>
<script src="<c:url value="/resource/js/scripts.js"/>"></script>
<style>
body {
	background-image: url("<c:url value="/ resource/ images/ 1.jpg "/>");
}
</style>

</head>
<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<h1>
						<strong>ShopIeasy</strong> Contact Form
					</h1>
					<div class="description">
						<p>If you need any help from Us please contact us. Write your
							Queries.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Contact us</h3>

						</div>
						<div class="form-top-right">
							<i class="fa fa-envelope"></i>
						</div>
					</div>
					<div class="form-bottom contact-form">
						<c:url value="/contactus" var="url"></c:url>
						<form:form role="form" method="post" action="${url}"
							commandName="contact">
							<div class="form-group">
								<label class="sr-only" for="contact-email">Email</label>
								<form:input path="email" type="text" class="contact-email form-control" placeholder="Email..." required="required"></form:input>
							</div>
							<div class="form-group">
								<label class="sr-only" for="contact-subject">Subject</label>
								<form:input type="text" path="subject" class="contact-subject form-control" placeholder="Subject..." required="required"></form:input>
							</div>
							<div class="form-group">
								<label class="sr-only" for="contact-message">Message</label>
								<form:textarea path="message" class="contact-message form-control" placeholder="Message..." required="required"></form:textarea>
							</div>
							<button type="submit" class="btn">Send message</button>
							<button style="float: right;" type="button" class="btn"
								onclick="window.location.href='<c:url value="/index1" />'">Back
								to Home</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>