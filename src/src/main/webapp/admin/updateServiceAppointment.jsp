<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Category - TourGuide</title>
<link rel="stylesheet" href="../css/updateServiceAppointment.css">
<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>

	<%
	try {
		Connection conn;
		Statement stmt;
		ResultSet rs;

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/autodrive", "root", "root");

		String id = request.getParameter("id");
		int aptID = Integer.parseInt(id);

		String sql = "select * from autodrive.serviceappointment where aptID=" + aptID + "";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);

		while (rs.next()) {
	%>
	
	<div class="title">
		<h1>
			Update
			<%=rs.getString("sType")%>
			Service Details
		</h1>
	</div>
	<div class="firstPart"></div>
	
	<div class="SecondSession"></div>

	<div class="content">
		

		<form action="../updateServiceAppointmentsServlet" method="post">
			<div class="container">
				<div class="row">
					<label for="fname">First name:</label> <input required
						autocomplete="off" type="text" id="fname" name="fname"
						value=<%=rs.getString("fname")%> />
				</div>
				<div class="row">
					<label for="lname">Last name:</label> <input required
						autocomplete="off" type="text" id="lname" name="lname"
						value="<%=rs.getString("lname")%>" />
				</div>
				<div class="row">
					<label for="phone">Phone number:</label> <input required
						autocomplete="off" type="number" id="phone" name="contactNum"
						value="<%=rs.getString("contactNum")%>" />
				</div>
				<div class="row">
					<label for="vehicle_type">Vehicle type:</label> <select
						id="vehicle_type" name="VehicleType">
						<option value=<%=rs.getString("VehicleType")%>><%=rs.getString("VehicleType")%></option>
						<option value="car">Car</option>
						<option value="van">Van</option>
						<option value="truck">Truck</option>
						<option value="motorcycle">Motorcycle</option>
					</select>
				</div>
				<div class="row">
					<label for="vehicle_number">Vehicle number:</label> <input required
						autocomplete="off" type="text" id="VehicleNum" name="VehicleNum"
						value=<%=rs.getString("VehicleNum")%> />
				</div>

				<div class="row">
					<label for="branch">Branch:</label> <select id="branch"
						name="branch">
						<option value=<%=rs.getString("branch")%>><%=rs.getString("branch")%></option>
						<option value="dehiwala">Dehiwala</option>
						<option value="colombo">Colombo</option>
						<option value="negombo">Negombo</option>
						<option value="galle">Galle</option>
					</select>
				</div>
				<div class="row">
					<label for="date_time">Date and time:</label> <input type="text"
						id="date_time" name="dateTime" value=<%=rs.getString("dateTime")%> />
				</div>
				<input type="hidden" value="AccidentRepair" name="sType" />


				<div class="row">
					<label for="anything_else">Anything else?</label>
					<textarea id="anything_else" name="anything_else"
						placeholder="Anything else you would like to let us know?"></textarea>
				</div>
				<input type="hidden" name="aptID" placeholder=<%=rs.getString("aptID")%> value=<%=rs.getString("aptID")%> readonly>
				
				<div class="row">
					<input type="submit" value="Submit" />
				</div>
			</div>
		</form>
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</div>
</body>
</html>
