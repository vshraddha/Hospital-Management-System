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

<%String name=request.getParameter("name");
String id=request.getParameter("id");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String occupation=request.getParameter("occupation");
String address=request.getParameter("address");
String phonenumber=request.getParameter("phonenumber");
String complaint=request.getParameter("complaint");   
try{ 
  Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
        Statement st=con.createStatement();           
int i=st.executeUpdate("insert into patient(name,id,gender,age,occupation,address,phonenumber,complaint) values('"+name+"','"+id+"','"+gender+"','"+age+"','"+occupation+"','"+address+"',"+phonenumber+",'"+complaint+"')");        
//out.println("Data is successfully inserted!"); 
      response.sendRedirect("clerkentry1.jsp");
}        
catch(Exception e){        
System.out.print(e);        
e.printStackTrace();        
}        
%>

</body>
</html>
