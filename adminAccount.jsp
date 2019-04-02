<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>

  <link rel ="stylesheet" href ="admin.css" >
</head>
<body>
<%
if(session != null)
{
	String aid = (String) session.getAttribute("aid");
}
%>
<p id="admin">
Welcome Admin!!
</p>

<div class="modify">
WHAT WOULD YOU LIKE TO DO??   <br>
<hr>

<div id="anchor">
<a href="update.jsp">Update</a> a record.
<hr>
<a  href="delete.jsp">Delete</a> a record.
<hr>
 <a href="add.html"> Add </a> a new record. 

</p>
</div>
<div id="logout">
<a href="index.html"><< Logout</a>
</div>

</body>
</html>