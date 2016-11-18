<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<div class="container-wrapper">
	<div class="container" style="margin-bottom: 180px;">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Invalid Cart!</h1>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<center><a href="<spring:url value="/getAllProducts" />"
					class="btn btn-default">Browse Products</a></center>
			</p>
		</section>
	</div>
</div>
<%@ include file="/WEB-INF/page/footer.jsp"%>