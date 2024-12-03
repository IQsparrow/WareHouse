<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>VIEW PRODUCTS</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/W3.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_b.css" rel="stylesheet" type="text/css" media="all" />
<style>
.hei{
height:500px;
}
textarea {
  width: 80%;
  height: 100px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}
</style>
</head>
<body>
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt="" /></a>
			</div>
			<ul class="menu">
				<jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>
				<div id="lavalamp"></div>
				<div class="clear"></div>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>

	<div class="wrap">
			<div class="main1">
<div class="product-main">
<button class="button1" name="button" value="OK" type="button"
					onclick="location.href ='.jsp';">
					<span>Back</span>
				</button>
	<h4 style="margin-left:100px;">MISMATCH PRODUCTS</h4><br>
	<div class="ser-para"></div>
	<div class="hei">
	<%
	ArrayList<String> dup = (ArrayList<String>)session.getAttribute("dup"); 
	ArrayList<String> uptotal = (ArrayList<String>)session.getAttribute("uptotal"); 
	int dupc = (Integer)session.getAttribute("dupc");
	int uptotalc = (Integer)session.getAttribute("uptotalc");
	System.out.print(dup);
	%>
	<center>
			<div style="height: auto;">	<div class="w3-container">
					<table class="w3-table-all w3-card-4 w3-hoverable">
						<tr> 
							<th class="w3-grey">PRODUCT COUNT</th><td><%=uptotalc %></td>
						</tr>
						<tr> 
							<th class="w3-grey">SKU</th><td><textarea readonly><%=uptotal %></textarea></td></tr>
						<tr> 
							<th class="w3-grey">MISMATCHED COUNT</th><td><%=dupc %></td></tr>
						<tr> 
							<th class="w3-grey">MISMATCHED SKU</th><td><textarea readonly><%=dup %></textarea></td>
						</tr>
					</table>
				</div>
			</div>
	</center>
	</div>
	<div class="clear"></div>
</div>

</div>
<div class="footer-bg">
<div class="wrap">
	<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<div class="clear"> </div>
<div class="copy-right">
	<p> &copy; TABLE</p>
</div>
<div class="clear"></div>
</body>
</html>