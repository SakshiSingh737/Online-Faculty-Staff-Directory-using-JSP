package pack;

import java.sql.*;
import java.util.*;

public class MyConn {


Connection c;
public static Connection MyCon()
{
	Connection c=null;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAKSHISINGH","2181998");
	}
	
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}
	return c;
	}
}
