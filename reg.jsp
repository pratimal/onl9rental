<html>
<body bgcolor="cyan">
<center>
<%@ page import="java.sql.*","p1.DBInfo.java" %>
<%@ page errorPage="error.jsp" isErrorPage="true" %>
<%
   String s1=request.getParameter("uname");
   String s2=request.getParameter("pass");
   String query="select *from login where username=? and password=?";
    con=DBInfo.con;
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,s1);
	ps.setString(2,s2);
	ResultSet rs=ps.executeQuery();
	int flag=0;
	String utype="";
	 while(rs.next())
	  {
	  flag=1;
	  utype=rs.getString("usertype");
	  break;
	  }
  
  
	if(flag==1&& utype.equalsIgnoreCase("admin"))
	{
	
	response.sendRedirect("Admin");
	}
	if(flag==1 && utype.equalsIgnoreCase("student"))
	{ 
	  response.sendRedirect("student");
	}
	if(flag==0)
	{
	   response.sendRedirect("reg.html");
	   
	}
	else
	{
	out.println("login failed");
	}
	
%>	