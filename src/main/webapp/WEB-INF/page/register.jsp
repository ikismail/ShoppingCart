<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

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
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container" style="margin-bottom: 19px">
		<h1 class="well">Register Here !</h1>
		<div class="col-lg-12 well">
			<div class="row">

				<!--  RegisterServlet  form -->
				<c:url value="/register" var="url"></c:url>
				<form:form method="post" action="${url}" commandName="userFormObj"
					enctype="multipart/form-data">
					<div class="col-sm-12">
						<div class="row">
							<div style="visibility: hidden;">
								<form:label path="userId">User Id</form:label>
								<form:input type="text" placeholder="Enter ProductId.."
									path="userId" disabled="true"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="firstName">First Name</form:label>
								<form:input type="text" placeholder="Enter Product Name.."
									class="form-control" path="firstName"></form:input>
								<form:errors path="firstName"></form:errors>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="lastName">Last Name</form:label>
								<form:input type="text" placeholder="Enter Last Name.."
									class="form-control" path="lastName"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="emailId">Email Id</form:label>
								<form:input type="text" placeholder="Enter Email ID.."
									class="form-control" path="emailId"></form:input>
								<form:errors path="emailId"></form:errors>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="phNumber">Phone Number</form:label>
								<form:input type="text" placeholder="Enter Phone Number.."
									class="form-control" path="phNumber"></form:input>
								<form:errors path="phNumber"></form:errors>
							</div>
						</div>
						<div class="form-group">
							<form:label path="address">Address</form:label>
							<form:textarea type="text" placeholder="Enter Address.."
								class="form-control" path="address"></form:textarea>
						</div>
						
							<div class="col-sm-6 form-groups">
								<form:label path="gender">Gender</form:label>
								<form:radiobutton path="gender" value="male" />
								Male
								<form:radiobutton path="gender" value="female" />
								Female
							</div>
							<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="city">City</form:label>
								<form:input type="text"
									placeholder="Enter Current City.." class="form-control"
									path="city"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="state">State</form:label>
								<form:input type="text" placeholder="Enter Product Price.."
									class="form-control" path="state"></form:input>
								<form:errors path="state"></form:errors>
							</div>
							</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="password">Password</form:label>
								<form:input type="password" placeholder="********" class="form-control" path="password" id="pass" ></form:input>
							</div>		
							<div class="col-sm-6 form-group">
								<label >Confirm Password</label>
								<input type="password" placeholder="********" class="form-control"  id="confirmpass" />
							</div>	
						</div>
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info" onclick="return Validate()">Submit</button>
						</div>
						<div style="visibility: hidden;">
								<form:label path="roleType">Role_Type</form:label>
								<form:radiobutton path="roleType" value="ROLE_USER" />ROLE_USER
							</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	
	<!-- Validating Password -->
	<script type="text/javascript">
		function Validate(){
			var password = document.getElementById("pass").value;
			var confirmpass = document.getElementById("confirmpass").value;
			if(password != confirmpass){
				alert("Password does Not Match.");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>