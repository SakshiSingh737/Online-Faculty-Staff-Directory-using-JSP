<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="pack.*" %>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Account</title>
</head>
<body>
<%
int count1=0;
String aid = request.getParameter("email");
String apwd = request.getParameter("psw");
try{
	Connection c = MyConn.MyCon();
	Statement s = c.createStatement();
	ArrayList<String> a_id = new ArrayList<String>();
	ArrayList<String> pwd = new ArrayList<String>();
	ResultSet rs = s.executeQuery("Select * from LoginTable");
	while(rs.next())
	{
		a_id.add(rs.getString(1));
		pwd.add(rs.getString(3));
	}
	int l = a_id.size();
	String[] a_id2 = new String[l];
	String[] pwd2 = new String[l];
	int i=0,j=0;
	for(String p: a_id)
	{
		a_id2[i++] = p;
	}	
		for(String q: pwd)
		{
			pwd2[j++] = q;
	}
		for(int a=0;a<l;a++)
		{
			if((a_id2[a].equalsIgnoreCase(aid)) && (pwd2[a].equalsIgnoreCase(apwd)))
				{
				    session.setAttribute("aid",aid);
				count1++;
			break;}
		}
		c.close();
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(count1 == 1)
			response.sendRedirect("adminAccount.jsp");
	
		else
			response.sendRedirect("NotAdmin.jsp");
		 %>

</body>
</html>