<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pack.*" %>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Updated</title>
</head>
<body  background="images/bg2.jpg">
<%="<h1><u>Account Updated Successfully...</u></h1>"%>
<%="<a href=update.jsp>Click to update more</a>" %>
<%="<br><br>" %>
<%="<a href=AdminHome.jsp>Go to HomePage</a>" %>
<%="<br><br>" %>
<%="<a href=index.html>Logout</a>" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String area = request.getParameter("aoe");
String interest = request.getParameter("pint");
String course = request.getParameter("crs");
System.out.println("name="+name);
System.out.println("area="+area);
System.out.println("interest="+interest);
System.out.println("courses="+course);

try{
	Connection c = MyConn.MyCon();
      Statement ps;
	System.out.println(name);
	if(name != "")
	{
	      String query = "update faculty set name ='"+name+"' where id = '"+id+"'";
	       ps = c.createStatement();
	    int x = ps.executeUpdate(query);
	      System.out.println(x);
	}
	else if(area != "")
	{
	      String query = "update faculty set AOEX ='"+area+"' where id = '"+id+"'";
	      ps = c.createStatement();
		    int x = ps.executeUpdate(query);
		      System.out.println(x);
	}
	else if(interest != "")
	{
	      String query = "update faculty set PRFINT ='"+interest+"' where id = '"+id+"'";
	      ps = c.createStatement();
		    int x = ps.executeUpdate(query);
		      System.out.println(x);
	}
	else if(course != "")
	{
	      String query = "update course set COURSES ='"+course+"' where id = '"+id+"'";
	      ps = c.createStatement();
		    int x = ps.executeUpdate(query);
		      System.out.println(x);
	}
	
     c.close();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>