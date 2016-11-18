<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/page/navbar.jsp"%>
<%@ page isELIgnored="false"%>
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1 class="alert alert-danger">Checkout cancelled!</h1>

					<p>Your checkout process is cancelled! You may continue
						shopping.</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<c:url value="/getAllProducts" />" class="btn btn-default">Products</a>
			</p>
		</section>
	</div>
</div>
<%@ include file="/WEB-INF/page/footer.jsp"%>