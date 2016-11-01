<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Invalid Cart!</h1>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/getAllProducts" />"
					class="btn btn-default">Browse Products</a>
			</p>
		</section>
	</div>
</div>
<%@ include file="/WEB-INF/page/footer.jsp"%>