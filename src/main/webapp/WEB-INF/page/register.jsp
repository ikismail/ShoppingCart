<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
  <script src="<c:url value="/resource/js/jquery.js"/>"></script>
  <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/register.css"/>">
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1 class="well">Register Here !</h1>
	<div class="col-lg-12 well">
	<div class="row">
	
		<!--  RegisterServlet  form -->
				<form method="post" action="registerServlet">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								<input type="text" placeholder="Enter First Name.." class="form-control" name="fname">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Names.." class="form-control" name="lname">
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Your Address.." rows="3" class="form-control" name="address"></textarea>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label>
								<input type="text" placeholder="Enter Your City.." class="form-control" name="city">
							</div>	
							<div class="col-sm-4 form-group">
								<label>State</label>
								<input type="text" placeholder="Enter Your State.." class="form-control" name="state">
							</div>
							<div class="col-sm-4 form-group">
								<label>Gender</label>
								<select class="form-control" name="gender">
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>			
						</div>
												
					<div class="form-group">
						<label>Phone Number</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control" name="phnumber" maxlength="10">
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<input type="text" placeholder="Enter Email Address Here.." class="form-control" name="EmailId" id="txtEmail">
					</div>	
					<div class="row">
							<div class="col-sm-6 form-group">
								<label>Password</label>
								<input type="text" placeholder="********" class="form-control" id="pass">
							</div>		
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label>
								<input type="text" placeholder="********" class="form-control" name="password" id="confirmpass">
							</div>	
						</div>
						<div class="form-actions">
					<button type="submit" class="btn btn-lg btn-info" onclick="return Validate()">Submit</button>		</div>			
					</div>
				</form> 
				</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>

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