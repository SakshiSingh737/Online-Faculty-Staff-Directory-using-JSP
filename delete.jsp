<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
</head>
<body>

<link rel="stylesheet" href="admin.css">
</head>
<body>
<marquee direction="slide"><font color="red">Once Deleted Can't be Recovered !! </font></marquee>
<br><br>
<form id="delete" action="DBdelete.jsp"  method="post">
<u>Enter faculty id whose record is to be deleted.</u><br>
<input type="text" placeholder="eg. 100" name="id">  <br>
<input type="submit" value="DELETE!" id="ss">      <br>
</form>
</body>
</html>