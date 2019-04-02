<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pack.MyConn" %>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FACULTY DETAILS</title>
 <link rel ="stylesheet" href ="project.css" >
</head>
<body>
<div class= "topnav">
<a href="login.html">Login</a>
<a class="active" href="index.html">Home</a>

</div>
<%
try {
	Connection c = MyConn.MyCon();
String str="SELECT NAME FROM FACULTY";
PreparedStatement ps = c.prepareStatement(str);
ResultSet rs = ps.executeQuery();  
while(rs.next())
{
String name = rs.getString(1);
out.println("<table border=1px cellpadding=20px>");
out.println("<tr>");
out.println("<td>"+name+"</td>");

out.println("</tr>");
out.println("</table>");

}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>