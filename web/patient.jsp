<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*" %>	
<html>
<head>
<link rel="stylesheet" href="css/style1.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />
<link type="text/css" rel="stylesheet" href="style1.css"/>
<link rel="shortcut icon" href="favicon.icon" type="image/x-icon" />

<title>Global Cure Hospitals | patent details</title>
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
	

<hr class="noscreen" />

	<div class="content">

	<div class="column-left">
		<h3>Data Access</h3>
		<a href="#skip-menu" class="hidden">Skip menu</a>
		<ul class="menu">
<li><a href="pahome.jsp">Home</a></li>
	
                    
		</ul>
		</div>
		
		<div id="skip-menu"></div>
		<div class="column-right">
			<div class="box">
			<div class="box-top"></div>
			<div class="box-in">
	<br/>
				<h2>Patient Details</h2>
				
<%
String name=(String)session.getAttribute("pname");
String id=(String)session.getAttribute("pwd");
try{
 Class.forName("com.mysql.jdbc.Driver");
           Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/global","root","root");
          Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * FROM patient WHERE NAME='"+name+"' AND ID='"+id+"'");
%>
<table Border="1" bordercolor="#10578D" cellspacing="0.5" cellpadding="0" width=400 align="center">
<% 
while(rs.next()){
 %>
 
 <tr>
<td>Name </td><td> <%= rs.getString(1) %> </td></tr>
<tr>
<td> ID </td><td> <%= rs.getString(2) %> </td></tr>
<tr>
<td > Gender</td><td><%=rs.getString(3) %></td></tr>
<tr>
<td> Age</td><td><%=rs.getString(4) %></td></tr>
<tr>
<td> Occupation</td><td><%=rs.getString(5) %></td></tr>
<tr>
<td> Address</td><td><%=rs.getString(6) %></td></tr>
<tr>
<td> Phone Number</td><td><%=rs.getString(7) %></td></tr>
<tr>
<td> Complaint</td><td><%=rs.getString(8) %></td></tr>

<%
}
}catch(Exception e){
}

 %>

 </table>
 <p></p>
 
			</div>
			</div>

			<div class="box-bottom">

<hr class="noscreen" />

			

	<div class="cleaner">&nbsp;</div>
	</div>	
</div>
</body>
</html>







