<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<?php
include "../phpHandlers/dbh.config.php";
?>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/serviceAppointmentControl.css" />
<link
rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
/>
<title>Admin</title>
</head>

<body>
	<div id="bannerBox1">
		<p class="logoText"><i class="fa fa-wrench fa-shake"></i>
			<a href="#">Auto Drive
			</a>
		</p>
	</div>
	<div id="profileWithNav">
		<div id="profilePosition">
			<div id="profile">
				<p class="name">
					Ethen<br />Administrator
				</p>
				<img src="../images/Profile.png" />
			</div>
		</div>
		<div id="behindBox">
			<ul id="nav">
				<li><a href="#">Dashboard</a></li>
				<li><a href="#" class="active">Bookings</a></li>
				<li><a href="#">Resources</a></li>
				<li><a href="#">Settings</a></li>
			</ul>
		</div>
	</div>

	<div id="positions">
		<div id="navPosition1">
			<div class="navBar">
				<nav>
					  <a
						href="http://localhost:8030/AutoDrive/admin/serviceAppointmentControl.jsp">SERVICE APPOINTMENTS</a>
					<a href="#">PACKAGE SELECTIONS</a> <a
						href="#">FEEDBACKS</a>
						<div class="animation start-appointment"></div>
				</nav>
			</div>
		</div>

		<div id="navPosition2">
			<div class="navBar2">
				<div>
					<nav>
						<a
							href="./adminControl.jsp">Admin</a>						
					</nav>
				</div>
				<div>
					<nav>
						<a
							href="#">User</a>
						<div class="line"></div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	<table>
		<tr>
			<th>Id number</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>contact Number</th>
			<th>password</th>
			<th>branch</th>
			<th>Scheduled Date & Time</th>
			<th>sType</th>
			<th>Manage</th>
		</tr>
	
	<%
	Connection conn;
	Statement stmt;
	ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/autodrive", "root", "root");

	String sql = "select * from serviceappointment";
	stmt = conn.createStatement();

	rs = stmt.executeQuery(sql);

	while (rs.next()) {
		String id = rs.getString("aptID");
	%>
	
		<tr>
			<td><%=rs.getString("aptID")%></td>
			<td><%=rs.getString("fname")%></td>
			<td><%=rs.getString("lname")%></td>
			<td><%=rs.getString("contactNum")%></td>
			<td><%=rs.getString("vehicleType")%></td>
			<td><%=rs.getString("branch")%></td>
			<td><%=rs.getString("dateTime")%></td>
			<td><%=rs.getString("sType")%></td>
			<td>
				<button class='addNew'>
					<a
						href='../EngineCare.jsp'>Add
						an EngineCare Appointment</a>
				</button>
				<button class='addNew'>
					<a
						href='../AccidentRepair.jsp'>Add
						an Accident Repair Appointment</a>
				</button>
				<button class='addNew'>
					<a
						href='../washService.jsp'>Add
						an Wash Service Appointment</a>
				</button>
				<button class='update'>
					<a href='updateServiceAppointment.jsp?id=<%= id%>'>Modify</a>
				
				<form action="../deleteServiceAppointmentsServlet" method="POST"><button class="delete" name="delete" value='<%= id%>'>Delete</button></form>
				</button>
			</td>
		</tr>	
	<%
	}
	%>
	</table>
</body>

</html>