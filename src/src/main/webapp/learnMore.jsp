<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/learnMore.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
	<i class="fa fa-wrench fa-shake"></i>
	<div class="logo">Auto Drive</div>
	<div class="navBar">
		<nav>
			<a href="http://localhost/Reserva360/Explore/PHP/index.php">HOME</a>
			<a href="http://localhost/Reserva360/Flights/PHP/Flights.php">SERVICES</a>
			<a href="http://localhost/Reserva360/Hotel/PHP/Hotel.php">PACKAGES</a>
			<a href="http://localhost/Reserva360/ThingsToDo/PHP/ThingsToDo.php">ABOUT
				US</a> <a href="http://localhost/Reserva360/Deals/PHP/Deals.php">CONTACT
				US</a>
			<div class="animation start-services"></div>
		</nav>
	</div>
	<%
	Connection conn;
	Statement stmt;
	ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourguide", "root", "root");

	String id = request.getParameter("id");
	int lmID = Integer.parseInt(id);

	String sql = "select * from autodrive.learnmore where lmID=" + lmID + "";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);

	while (rs.next()) {
	%>
	<div class="firstPart"></div>
	<div class="backBox">
		<div class="diagonal-split3">
			<div class="banner">Services</div>
		</div>
	</div>
	<h4><%=rs.getString("title")%></h4>
	<p>
		<%=rs.getString("description")%>
	</p>
	<%
	}
	%>
	<div class="SecondSession"></div>
	<div class="Footer"></div>
</body>
</html>
