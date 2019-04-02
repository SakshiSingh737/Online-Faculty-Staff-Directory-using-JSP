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
<style type="text/css">
table{
table-layout:fixed;
width:100%;
}
td{
width:40%;
}
</style>
</head>
<body>
<%@include file="img2.jsp" %>
<%
String course = request.getParameter("course");
out.println("<h1>Details of Course: "+course+"</h1>");
try {
	Connection c = MyConn.MyCon();
	%>
	<%="<table border=12px cellpadding=20px>"%>
	<%="<tr>"%>
	<%="<th>Faculty ID</th>"%>
	<%="<th>Faculty Name</th>"%>
	<%="<th>Department</th>"%>
	<%="<th>Area of Experience</th>"%>
	<%="<th>Professional Interest</th>"%>
	<%="<th>Courses</th>"%>
	<%="</tr>"%>
	<%="</table>"%>
<%
String str="SELECT * FROM FACULTY NATURAL JOIN COURSE WHERE courses='"+course+"'";
PreparedStatement ps = c.prepareStatement(str);
ResultSet rs = ps.executeQuery();  
while(rs.next())
{
int id = rs.getInt(1);
String name = rs.getString(2);
String dept = rs.getString(3);
String aoe = rs.getString(4);
String pfi = rs.getString(5);
%>
<%="<table border=12px cellpadding=20px>"%>
<%="<tr>"%>
<%="<th>"+id+"</th>"%>
<%="<th>"+name+"</th>"%>
<%="<th>"+dept+"</th>"%>
<%="<th>"+aoe+"</th>"%>
<%="<th>"+pfi+"</th>"%>
<%="<th>"+course+"</th>"%>
<%="</tr>"%>
<%="</table>"%>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>