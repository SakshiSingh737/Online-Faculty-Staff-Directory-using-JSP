<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Found !!</title>
</head>
<body>
<h1>Something went Wrong !!!</h1>
<%= exception.getMessage() %>
<a href="index.html">Go to Homepage</a>
</body>
</html>