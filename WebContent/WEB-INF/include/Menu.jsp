<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!-- 
BASIC MENU STYLE CODE :	
				<li class="active"><a href="index.html">HOME</a></li>
				<li><a href="about.html">ABOUT</a></li>
				<li><a href="services.html">SERVICES</a></li>
				<li><a href="products.html">PRODUCTS</a></li>
				<li><a href="contact.html">CONTACT</a></li>
-->

<!-- NO USER -->
<c:if test="${sessioScope.Role==null && sessionScope.uid==null}">

	<li><a href="Logout.jsp?st=logout">LOGOUT</a></li>
	
</c:if>

<!-- ADMIN MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">

	<li><a class="active" href="HOME_Admin.jsp">HOME</a></li>
	<li><a class="active" href="AD_Users.jsp">USERS</a></li>
	<li><a href="AD_UploadProduct.jsp">UPLOAD PRODUCT</a></li>
	<li><a href="Logout.jsp?st=logout">LOGOUT</a></li>
	
</c:if>

<!-- EMPLOYEE MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==2}">

	<li><a class="active" href="HOME_Emp.jsp">HOME</a></li>
	<li><a href="EMP_AddStock.jsp">ADD STOCK</a></li>
	<li><a href="EMP_TrainData.jsp">TRAIN DATA</a></li>
	<li><a href="Logout.jsp?st=logout">LOGOUT</a></li>
	
</c:if>

<!-- QUALITY CHECKING MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">

	<li><a class="active" href="HOME_Qc.jsp">HOME</a></li>
	<li><a href="QC_QrList.jsp">QR LIST</a></li>
	<li><a href="QC_Viewproducts1.jsp">PRODUCT SKU'S</a></li>
	<li><a href="Logout.jsp?st=logout">LOGOUT</a></li>
	
</c:if>

<!-- OPERATOR MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==4}">

	<li><a class="active" href="HOME_Op.jsp">HOME</a></li>
	<li><a href="OP_Products.jsp">PRODUCT</a></li>
	<li><a href="Logout.jsp?st=logout">LOGOUT</a></li>
</c:if>

