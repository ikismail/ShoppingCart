<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="js/jquery-3.1.0.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/header.css">
<style type="text/css">
    @media (min-width: 1200px)
    .container{
        width:1300px;
    }
    @media (min-width: 992px)
    .col-md-4{
        margin-left:330px;
    }
</style>
</head>
<body>
  <%@ include file="navbar.jsp" %>
    <div class="container" style="margin-top:30px" >
<div class="col-md-4">
<div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" align="center">Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <div id="button">
                                <a href="javascript:;" class="btn btn-sm btn-success" style="margin-right:79px; margin-left:60px">Login</a>
                                <a href="<c:url value="/register"/>" class="btn btn-sm btn-success" >Register</a>
                            	</div>
                            </fieldset>
                        </form>
                    </div>
                </div>
</div>

</div>
<%@ include file="footer.jsp" %>

</body>
</html>