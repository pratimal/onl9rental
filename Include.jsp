<%@ page import="java.util.*"%>
<%  Date d=new Date();
   
	%>
	<html>
	<body bgcolor:yellow;>
	<h1>Hie welcome</h1>
	<div>
	<p>Current Date is:<%=d%></p>
	</div>
	</body>
	</html>package p1;
public class DBInfo
{
	public static Connection con;
  static
  {
    	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trbatch1","root","rat");
	  
	  
	}
	catch(Exception e)
	{
	  e.printStackTrace();
	}
	
  }
  }
	
