<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <%@page import="java.sql.*"%>

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
                    <li><a href="pahome.jsp">Home</a></li>

			<li><a href="patient.jsp">Patient Details</a></li>
			<li><a href="contactus.jsp">Doctor's Times</a></li>
			<li><a href="login.jsp">Logout</a></li>
			<!--<li><a href="doctorlogin.jsp">Doctor</a></li>
   
			<li><a href="billlogin.jsp">Billing</a></li>
			<li class="last"><a href="insurancelogin.jsp">Insurance</a></li> -->
		</ul>
		</div>
		
		<div id="skip-menu"></div>
		<div class="column-right">
			<div class="box">
			<div class="box-top"></div>
			<div class="box-in">
	
                            <h2>Welcome :<%= session.getAttribute("pname") %></h2>
				<ul class="main-list">
					<li>Patient can obtain their entry details,drugs and billing through patient tab.</li>
					<li>Clerk can manage the patient record through clerk tab.</li>
					<li>Admin can lead the patient to the respective doctor and allocate room through admin tab.</li>
					<li>Respective drugs and tests can be updated by the doctor through Doctor tab. </li>
					<li>Billing details can be done through billing tab</li>
					<li>Billing details of the patient can be obtained by Insurance company through Insurance tab.</li>
				</ul>
			</div>
			</div>

			<div class="box-bottom">

<hr class="noscreen" />

			

	<div class="cleaner">&nbsp;</div>
	</div>	
</div>
</body>
</html>