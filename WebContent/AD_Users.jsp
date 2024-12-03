<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>USERS</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/W3.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_b.css" rel="stylesheet" type="text/css" media="all" />
<style>
.hei{
height:500px;
}
</style>
</head>
<body>
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="#"><img src="images/logo.png" alt="" /></a>
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
					onclick="location.href ='HOME_Admin.jsp';">
					<span>Back</span>
				</button>
	<h4 style="margin-left:100px;">USERS</h4><br>
	<div class="ser-para"></div>
	<div class="hei">
	<center>
			<div style="height: auto;">	<div class="w3-container">
					<table class="w3-table-all w3-card-4 w3-hoverable">
						<tr class="w3-grey" style="font-weight:bold; ">
							<th>S.NO</th>
							<th>User Id</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Address</th>
							<th>Role</th>
						</tr>
						<%
							ResultSet rs = null;
							Statement st = null;
							try {
								String qry = "SELECT * FROM 1_users";
								rs = DB.getconnection().createStatement().executeQuery(qry);
								int k = 1;
								while (rs.next()) {
						%>
						<tr>
								<td><%out.print(k);%></td>
								<td><%=rs.getInt(1)%></td>
								<td><%=rs.getString("name")%></td>
								<td><%=rs.getString("email")%></td>
								<td><%=rs.getString("phone")%></td>
								<td><%=rs.getString("address")%></td>
						<%
								if(rs.getString("role").equals("EMP")){
								%>
									<td>Employee</td>
								<%		
								}else if(rs.getString("role").equals("OP")){
								%>	
									<td>Operator</td>
								<%
								}else{
								%>
									<td>Quality Checker</td>
								<%	
								}
								%>
							</tr>
						<%		
						k++;
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