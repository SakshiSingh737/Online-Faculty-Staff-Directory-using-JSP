<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FACULTY ID</title>
 <link rel ="stylesheet" href ="project.css" >

</head>
<body>
<%@include file="img.jsp" %>

</div>
 <header><h1> <u>ENTER FACULTY ID</u> 
         </h1></header>
 <div  id="faculty_name">
        <form action="DBid.jsp" method="post">
            <input type="text" placeholder="Faculty ID" name="id"><br>
            <input type="submit" value="SEARCH" id="ss">
    </div>
</body>
</html>