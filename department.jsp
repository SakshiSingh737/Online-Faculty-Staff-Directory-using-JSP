<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DEPARTMENT OF FACULTIES</title>
 <link rel ="stylesheet" href ="project.css" >
</head>
<body>
<%@include file="img.jsp" %>
 <header><h1> <u>SELECT DEPARTMENT</u> 
         </h1></header>

    <div class="department">
        <form action="DBdept.jsp" method="post">
            <select name="dept">
                <option value="COMPUTER SCIENCE">COMPUTER SCIENCE</option>
                <option value="ELECTRICAL DEPARTMENT"> ELECTRONICS AND COMMUNICATION</option>
                 <option value="IT DEPARTMENT">IT DEPARTMENT</option>
                  <option value="MECHANICAL DEPARTMENT">MECHANICAL DEPARTMENT</option>
            </select>
             <input type="submit" value="SEARCH" id="ss">
        </form>
    </div>

</body>
</html>