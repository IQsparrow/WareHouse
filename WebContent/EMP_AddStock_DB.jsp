<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DB_UPDATE</title>
</head>
	
<body>
<%
String id = request.getParameter("pid");  
String pri = request.getParameter("priority");
String avi = request.getParameter("avi");
String req = request.getParameter("req");


try{

	String sql = "UPDATE 2_prod SET prio='"+pri+"',pavail='"+avi+"',preq='"+req+"' WHERE pid='"+id+"'";
    int i1 = DB.getconnection().prepareStatement(sql).executeUpdate();
    if(i1>0) {
    	 response.sendRedirect("EMP_AddStock.jsp?st=cs");
    }else {
    	response.sendRedirect("EMP_AddStock.jsp?st=cns");
    }
}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>