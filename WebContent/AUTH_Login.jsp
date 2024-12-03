<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!doctype html>
<html>
<head>
<title>LOGIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css_R/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css_R/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
</head>
<body>
<h1 class="w3ls">Enter Required Details</h1>
<div class="content-w3ls">
		<div class="content-agile1">
			<c:if test="${param.us eq 'emp'}">
				<h2 class="agileits1">EMPLOYEE <br>LOGIN</h2>
			</c:if>
			<c:if test="${param.us eq 'qc'}">
				<h2 class="agileits1">QUALITY CHECKING<br> LOGIN</h2>
			</c:if>
			<c:if test="${param.us eq 'op'}">
				<h2 class="agileits1">OPERATOR<br> LOGIN</h2>
			</c:if>
			<c:if test="${param.us eq 'ad'}">
				<h2 class="agileits1">ADMIN<br> LOGIN</h2>
			</c:if>
		</div>
		<div class="content-agile2">
		<form action="Login" method="post" autocomplete="off">

			<div class="form-control w3layouts">	
				<input type="email" id="email" name="em" placeholder="Email Id" title="Please enter a valid email" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="pw" placeholder="Password" id="password1" required="">
			</div>	
			
			<input type="submit" class="register" value="Login">
		</form>

	</div>
	<div class="clear"></div>
</div>
<p class="copyright w3l">© REGISTRATION FORM</p>
</body>
</html>