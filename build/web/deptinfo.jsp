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
String uname = request.getParameter("aname");
String passwd = request.getParameter("aid");
try{
Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
       
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from emp where aname='"+uname+"' and aid='"+passwd+"'");

 int count=0;        
 while(rs.next())          
 {                   
                       
    count++;         
  }                    
  if(count>0)         
   {            
   response.sendRedirect("deptpatientlogin.jsp");         
   }  
   else          
    {                       
    response.sendRedirect("departmentlogin.jsp?msg=Invalid Username or Password");          
    }       
   }catch(Exception e){
}        
    
    %>
   
 

</body>
</html>







