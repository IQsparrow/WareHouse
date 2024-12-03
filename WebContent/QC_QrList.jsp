<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>QR LIST</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/W3.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_b.css" rel="stylesheet" type="text/css" media="all" />
<style>
.hei{
height:500px;
}
textarea {
  width: 100%;
  height: 150px;
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
					onclick="location.href ='HOME_Qc.jsp';">
					<span>Back</span>
				</button>
	<h4 style="margin-left:100px;">Title</h4><br>
	<div class="ser-para"></div>
	<div class="hei">
	<center>
			<div style="height: auto;">	<div class="w3-container">
			<form action="QcList" method="post">
					<table class="w3-table-all w3-card-4 w3-hoverable">
						<tr class="w3-grey"> 
							<th>Choose Scanned Data</th>
							<td><label for="inputfile" style="cursor: pointer;">Click Here to Choose File</label><input type="file" name="file1" id="inputfile" style="display: none;"></td>
						</tr>
						<tr height="200px"> 
							<th class="w3-grey">Specification Details</th>
							<td><textarea rows="4" cols="10" id="output1" name="fileData"></textarea></td>
						</tr>
						<tr>
							<th></th>
							<td><input type="submit" value="CHECK"></td>
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