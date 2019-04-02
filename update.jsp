<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Account</title>
<link rel="stylesheet" href="admin.css">
</head>
<body>
 <header><h1> <u>What do you want to update ???</u> 
         </h1></header>
    <form action="DBupdate.jsp" method="post">
    <input type="text" placeholder="ENTER FACULTY ID" name="id">
        <input type="text" placeholder="ENTER NEW NAME" name="name">  <input type="submit" value="UPDATE" id="sss">
        <input type="text" placeholder="ENTER NEW AREA OF EXPERIENCE" name="aoe">  <input type="submit" value="UPDATE" id="sss">
        <input type="text" placeholder="ENTER NEW PROFESSIONAL INTEREST" name="pint">  <input type="submit" value="UPDATE" id="sss">
        <input type="text" placeholder="ENTER NEW COURSE" name="crs">  <input type="submit" value="UPDATE" id="sss">
      
        </form>
</body>
</html>