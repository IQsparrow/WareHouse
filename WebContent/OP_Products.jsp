<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "utility.*, resources.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>STOCK UPDATE</title>
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
	<%
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	String DATE_FORMAT = "dd-MM-yyyy";
	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
	String strDateNew = sdf.format(now) ;

	%>
	<h4 style="margin-left:100px;">SKU DETAILS TABLE</h4><br>
	<div class="ser-para"></div>
	<div class="hei">
	<center>
			<div style="height: auto;">	<div class="w3-container">
			<form action="OP_Products.jsp" method="post">
					<table class="w3-table-all w3-card-4 w3-hoverable">
						<tr> 
							<th class="w3-grey">SKU CHECK</th><td class="w3-grey"></td>
						</tr>
						<tr>
						<td>
						<input type="text" list="cars" name="pid" class="w3-input w3-animate-input" placeholder="ENTER SKU ID"/>
						<datalist class="category" required="" id="cars" name="pid">
						<option>- SEARCH SKU -</option>
						<%
							String pname = null;
							ResultSet rs = null;
							Statement st = null;
							try {
								String qry = "SELECT * FROM 3_barcodedata";
								rs = DB.getconnection().createStatement().executeQuery(qry);
								while (rs.next()) {
						%>
							<option value="<%=rs.getString("sku")%>"><%=rs.getString("pname")%> - <%=rs.getString("uniqid")%> </option>
						<%
							}
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
						</td>
						<td><input type="submit" value="SEARCH"></td>
						</tr>
					</table>
					</form>
				</div>
			</div>
	</center>
	<br>
	<br>
	<center>
			<div class="w3-container">
				<div style="height:300px;overflow:auto;"> 
					<table class="w3-table-all w3-card-4 w3-hoverable">
						<tr class="w3-grey"> 
							<th>Unique ID</th>
							<th>Name</th>
							<th>SKU</th>
							<th>Segment</th>
							<th>Category</th>
							<th>Sub-Category</th>
						</tr>
						<%
							ResultSet rs1 = null;
							Statement st1 = null;
							try {
								String qry = "SELECT * FROM 3_barcodedata WHERE sku='"+request.getParameter("pid")+"' group by sku";
								rs1 = DB.getconnection().createStatement().executeQuery(qry);
								while (rs1.next()) {
						%>
						<tr>
							<td><%=rs1.getString(1)%></td>
							<td><%=rs1.getString(4)%></td>
							<td><%=rs1.getString(5)%></td>
							<td><%=rs1.getString(6)%></td>
							<td><%=rs1.getString(7)%></td>
							<td><%=rs1.getString(8)%></td>
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
<script>
// For Showing Selected Image
var loadFile = function(event) {
	var image = document.getElementById('output');
	image.src = URL.createObjectURL(event.target.files[0]);
};
</script>
<script type="text/javascript">
//For Showing Selected File
        document.getElementById('inputfile')
            .addEventListener('change', function() {
              
            var fr=new FileReader();
            fr.onload=function(){
                document.getElementById('output1')
                        .textContent=fr.result;
            }
              
            fr.readAsText(this.files[0]);
        })
    </script>
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