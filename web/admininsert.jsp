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


<h2> <center> Patient Information </center></h2>







<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<!-- CSS -->
<link rel="stylesheet" href="css/style1.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />
<link type="text/css" rel="stylesheet" href="style1.css"/>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

<title>Global Cure Hospitals | Login</title>
</head>

<body>


<div id="wrapper">

	<!-- Title -->
	<div class="title">
		<div class="title-top">
		<div class="title-left">
		<div class="title-right">
		<div class="title-bottom">
		<div class="title-top-left">
		<div class="title-bottom-left">
		<div class="title-top-right">
		<div class="title-bottom-right">
			<h1><a href="/" title="Go to homepage"> <span>Global Cure</span> Hospitals</a></h1>
			<p>Health care with a smart heart&hellip;</p>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
	</div>
	<!-- Title end -->
	<div id="menu">
				<ul>
			                        <li><a href="index.jsp">Home</a></li>
                                                <li><a href="aboutus.jsp">AboutUs</a></li>
                                                <li><a href="login.jsp">Login</a></li>
                                                <li><a href="contactus.jsp">ContactUs</a></li>
</ul>

		        </div>			
	

<hr class="noscreen" />

	<div class="content">

	<div class="column-left">
		<h3>Data Access</h3>
		<a href="#skip-menu" class="hidden">Skip menu</a>
		<ul class="menu">
			<li><a href="plogin.jsp">Patient</a></li>
			<li><a href="clerk.jsp">Clerk</a></li>
			<li><a href="departmentlogin.jsp">Admin</a></li>
			<li><a href="doctorlogin.jsp">Doctor</a></li>
			<li><a href="billlogin.jsp">Billing</a></li>
			<li class="last"><a href="insurancelogin.jsp">Insurance</a></li>
		</ul>
		</div>

		
		<div id="skip-menu"></div>
		<div class="column-right">
			<div class="box">
			<div class="box-top"></div>
			<div class="box-in">
	
				
<h2>Doctor's Details</h2>
<%
try{

    Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
Statement st = con.createStatement();
String id=request.getParameter("des");

ResultSet rs = st.executeQuery("SELECT * FROM bill WHERE ID='"+id+"'");
%>
<table Border="1" bordercolor="#10578D" cellspacing="0.5" cellpadding="0" width=400 align="center">
<%
while(rs.next()){
 %>

<tr>
<td> Drug Amount </td><td><%= rs.getString(2) %> </td></tr>
<tr>
<td> Test Amount </td><td><%= rs.getString(3) %> </td></tr>
<tr>
<td> Room Amount</td><td><%=rs.getString(4) %></td></tr>



<%
}
}catch(Exception e){
}

 %>
 </table>
 
 
 
 
 <p></p>
</body>
</html>







