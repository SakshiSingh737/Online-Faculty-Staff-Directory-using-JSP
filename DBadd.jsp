<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pack.*" %>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Account</title>
</head>
<body  background="images/bg2.jpg">
<%="<h1><u>Account Added Successfully...</u></h1>"%>
<%="<a href=AdminHome.jsp>Go to HomePage</a>" %>
<%="<br><br>" %>
<%="<a href=index.html>Logout</a>" %>
<%
String name = request.getParameter("name");
String dept = request.getParameter("dept");
String area = request.getParameter("area");
String interest = request.getParameter("interest");
String course = request.getParameter("course");
try{
	int myId=0;
	Connection c = MyConn.MyCon();
	String seq = "select myseq.NEXTVAL from dual";
	Statement stmt= c.createStatement();
	ResultSet rs = stmt.executeQuery(seq);
	if(rs.next())
	     myId = rs.getInt(1);
	     stmt.close();
	PreparedStatement ps = c.prepareStatement("insert into faculty values(?,?,?,?,?)");
	ps.setInt(1, myId);
	ps.setString(2, name);
	ps.setString(3, dept);
	ps.setString(4, area);
	ps.setString(5, interest);
	ps.executeUpdate();
	PreparedStatement ps1 = c.prepareStatement("insert into course values(?,?)");
	ps1.setInt(1, myId);
	ps1.setString(2, course);
	 ps1.executeUpdate();
     c.close();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>