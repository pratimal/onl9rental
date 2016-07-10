<html>
<body bgcolor="cyan">
<center>
<%
   String s1=request.getParameter("fn");
    String s2=request.getParameter("sn");
	double d1=Double.parseDouble(s1);
	double d2=Double.parseDouble(s2);
	out.println(s1+"+"+s2+" = "+(d1+d2));
%>
<br>
<a href=sum.html>BACK</a>
</center>
</body>
</html>	