<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*" %>	

<head>


<title>Global Cure Hospitals | Login</title>
</head>

<body>


<%
String uname = request.getParameter("cname");
String passwd = request.getParameter("cid");
try{
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
          PreparedStatement ps=con.prepareStatement("select * from emp where cname=? and cid=? ");
          ps.setString(1, uname);
          ps.setString(2, passwd);
   response.sendRedirect("clerklogin.jsp");               
   }catch(Exception e){
       out.print(e);
}        
    
    %>
   
 

</body>
</html>







