<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
    
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
h2{
color:red;
}
</style>
</head>
<body>
<%@include file="img2.jsp" %>
<%
String id = request.getParameter("id");
out.println("<h1>Details of Faculty id: "+id+"</h1>");
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
int count=0;
String str="SELECT * FROM FACULTY NATURAL JOIN COURSE WHERE id='"+id+"'";
PreparedStatement ps = c.prepareStatement(str);
ResultSet rs = ps.executeQuery();  
while(rs.next())
{
String name = rs.getString(2);
String dept = rs.getString(3);
String aoe = rs.getString(4);
String pfi = rs.getString(5);
String courses = rs.getString(6); 
count++;
%>
<%="<table border=12px cellpadding=20px>"%>
<%="<tr>"%>
<%="<th>"+id+"</th>"%>
<%="<th>"+name+"</th>"%>
<%="<th>"+dept+"</th>"%>
<%="<th>"+aoe+"</th>"%>
<%="<th>"+pfi+"</th>"%>
<%="<th>"+courses+"</th>"%>
<%="</tr>"%>
<%="</table>"%>
<%
}
if(count==0)
{
out.println("<br><h2>No Record for this faculty ID is found !!</h2>");
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>