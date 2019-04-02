<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Courses</title>
 <link rel ="stylesheet" href ="project.css" >

</head>
<body>
<%@include file="img.jsp" %>
 <header><h1> <u>SELECT COURSE</u> 
         </h1></header>
  <div class="course">
        <form action="DBcourse.jsp" method="post">
            <select name="course">
            <optgroup label="COMPUTER SCIENCE">
                <option value="DAA">DAA</option>
                <option value="DATABASE">DATABASE</option>
                <option value="WEBTECH">WEB TECH</option>
                <option value="CYBER SECURITY">CYBER SECURITY</option>
                <option value="DATA STRUCTURES">DATA STRUCTURES</option>
                 <option value="NETWORKING">NETWORKING</option>
                </optgroup>
                 <optgroup label="ELECTRONICS AND COMMUNICATION">
                <option value="ANTENNA">ANTENNA</option>
                <option value="IC">IC</option>
                <option value="SIGNAL">SIGNAL</option>
               </optgroup>
                <optgroup label="MECHANICAL">
                   <option value="MATHEMATICS">MATHEMATICS</option>
                <option value="FLUID MECHANICS">FLUID MECHANICS</option>
               </optgroup>
            </select>
             <input type="submit" value="SEARCH" id="ss">
        </form>
    </div>
</body>
</html>