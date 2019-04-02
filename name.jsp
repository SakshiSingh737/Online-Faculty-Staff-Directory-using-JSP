<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FACULTIES NAME</title>
 <link rel ="stylesheet" href ="project.css" >
</head>

<body>
<%@include file="img.jsp" %>
 <header><h1> <u>ENTER FACULTY NAME</u>
         </h1></header>
    <div  id="faculty_name">
        <form action="DBname.jsp" method="post">
            <input type="text" placeholder="Faculty Name" name="name"><br>
            <input type="submit" value="SEARCH" id="ss">
    </div>
     
</body>
</html>