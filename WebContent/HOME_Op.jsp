<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>OPERATOR HOME</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
</head>
<body>
		<div class="header">
			<div class="wrap">
		<div class="logo">
			<a href="#"><img src="images/logo.png" alt=""/></a>
			</div>
				<ul class="menu">
				 <jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>
				</ul>
				   <div class="clear"> </div>
		    </div>
		       <div class="clear"> </div>	
		      </div>
			<div class="about-grids">
			<br><center><h3>OPERATOR HOME</h3></center>
      		<div class="about-grid">
      			<div class="about-grid1">
      				<a href="#"></a><img src="images/slider2.jpg" title="pic1" alt="">
      			</div>
      			  <div class="clear"> </div>
      		</div>
      		<div class="clear"></div>
</div>
	
<div class="footer-bg">
<div class="wrap">
	<div class="footer-grid">
		<h3>PAGES</h3>
		<ul>
			<jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>
		</ul>
	</div>
s	<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<div class="clear"> </div>
<div class="copy-right">
	<p> &copy; OPERATOR PANEL</p>
</div>
<div class="clear"></div>
</body>
</html>