<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE jsp:useBean PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>

</head>
<body style="padding: 0px;">

	<div class="container-wrapper">
		<div class="container" >
			<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Thank you for your business!</h1>

					<p>Your order will be deliverd within </p>
				</div>
			</div>
<%@ include file="/WEB-INF/page/countdown.jsp"%>
			</section>
			<section class="container" style="margin-bottom: 30px;">
			<p style="text-align: center;">
				<a href="<spring:url value="/" />" class="btn btn-default">OK</a>
			</p>
			</section>
		</div>
	</div>
</body>
</html>

<%@ include file="/WEB-INF/page/footer.jsp"%>