<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "utility.*, resources.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>UPLOAD PRODUCTS</title>
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
	<h4 style="margin-left:100px;">PRODUCT DETAILS TABLE</h4><br>
	<div class="ser-para"></div>
	<div class="hei">
	<center>
			<div style="height: auto;">	<div class="w3-container">
			<form action="UploadProduct" method="post" enctype="multipart/form-data">
					<table class="w3-table-all w3-card-4 w3-hoverable">
						<tr> 
							<th class="w3-grey">Product ID</th><td><input type="text" name="pid" value="<%=randint.rlevel(10000, 999999) %>" readonly></td>
							<th class="w3-grey">Unit</th>
							<td>
								<select name="unt">
									<option value="">-SELECT-</option>
									<option value="units">units</option>
									<option value="mg">mg</option>
									<option value="g">g</option>
									<option value="kg">kg</option>
									<option value="ml">ml</option>
									<option value="l">l</option>
									<option value="meters">meters</option>
								</select>  
							</td>
						</tr>
						<tr> 
							<th class="w3-grey">Product Name</th><td><input type="text" name="pname" ></td>
							<th class="w3-grey">Cost Per Unit</th><td><input type="text" name="cost" ></td>
						</tr>
						<tr> 
							<th class="w3-grey">Product Image</th>
							<td><label for="file" style="cursor: pointer;">Click Here</label><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)"></td>
							<th class="w3-grey">Product Specification</th>
							<td><label for="inputfile" style="cursor: pointer;">Click Here to Choose File</label><input type="file" name="inputfile" id="inputfile" style="display: none;"></td>
						</tr>
						<tr height="200px"> 
							<th class="w3-grey">Selected Image</th><td><img id="output" width="200" /></td>
							<th class="w3-grey">Specification Details</th>
							<td><textarea rows="4" cols="10" id="output1" name="fileData"></textarea></td>
						</tr>
						<tr>
							<th>Date</th><td><input type="text" name="date" value="<%=strDateNew %>" readonly></td>Click here to Update<th><input type="submit" name="Update"></th><td></td>
						</tr>
					</table>
					</form>
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