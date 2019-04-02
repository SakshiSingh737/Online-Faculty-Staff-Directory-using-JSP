<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pack.*" %>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Deleted</title>
</head>
<body  background="images/bg2.jpg">
 <%="<h1>Faculty details deleted...</h1>"%>
<%="<a href=AdminHome.jsp>Go to HomePage</a>" %>
<%="<br><br>" %>
<%="<a href=index.html>Logout</a>" %>
<%
String id = request.getParameter("id");
try{
	Connection c = MyConn.MyCon();
	Statement s = c.createStatement();
	s.executeUpdate("Delete from course where id = '"+id+"'");
	s.executeUpdate("Delete from Faculty where id = '"+id+"'");%>
   <%
     c.close();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

</body>
</html>