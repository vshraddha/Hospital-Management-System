<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>patient</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR"
	content="Rational® Application Developer for WebSphere® Software">
</head>
<body>
<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>

<%String id=request.getParameter("id");
String drugamount=request.getParameter("drugamount");
String testamount=request.getParameter("testamount");
String roomamount=request.getParameter("roomamount");
   
try{ 
Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
Statement st=con.createStatement();           
int i=st.executeUpdate("insert into bill(id,drugamount,testamount,roomamount) values('"+id+"','"+drugamount+"','"+testamount+"','"+roomamount+"')");        
 response.sendRedirect("admininsert1.jsp"); 
      
}        
catch(Exception e){        
System.out.print(e);        
e.printStackTrace();        
}        
%>

</body>
</html>
