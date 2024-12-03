<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>LOADED DATA</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/W3.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_b.css" rel="stylesheet" type="text/css" media="all" />
<style>
.hei{
height:500px;
}
</style>
<script>
	function move() {
		var elem = document.getElementById("myBar");
		var width = 10;
		var id = setInterval(frame, 50);
		function frame() {
			if (width >= 100) {
				clearInterval(id);
				window.location.href = "EMP_TrainData2.jsp";
			} else {
				width++;
				elem.style.width = width + '%';
				elem.innerHTML = width * 1 + '%';
			}
		}
	}
</script>
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
	<h4 style="margin-left:100px;">Title</h4><br>
	<div class="ser-para"></div>
	<div class="hei">
	<center>
			<div class="w3-container">
			<div class="w3-light-grey">
			<div id="myBar" class="w3-container w3-orange w3-center"
				style="height: 20px; width: 0"></div>
		</div></div>
			<div style="height:400px;overflow:auto;"> 
					<table class="w3-table-all w3-card-4 w3-hoverable">
					<tr>
		<center>
		 <button href="#"
				role="button" onclick="move()">PRE-PROCESS DATASET </button> 
		</center>
					</tr>
						<tr class="w3-grey"> 
							<th>Unique ID</th>
							<th>Date & Time</th>
							<th>Product ID</th>
							<th>Name</th>
							<th>SKU</th>
							<th>Segment</th>
							<th>Category</th>
							<th>Sub-Category</th>
							<th>Container</th>
							<th>Joining Key</th>					
						</tr>
						<%
							ResultSet rs = null;
							Statement st = null;
							try {
								String qry = "SELECT * FROM 3_barcodedata";
								rs = DB.getconnection().createStatement().executeQuery(qry);
								while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(9)%></td>
							<td><%=rs.getString(10)%></td>
						</tr>
						<%
							}
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
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