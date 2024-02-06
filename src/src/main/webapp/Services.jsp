<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/Service.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
	<i class="fa fa-wrench fa-shake"></i>
	<div class="logo">Auto Drive</div>
	<div class="navBar">
		<nav>
			<a href="#">HOME</a> <a href="#">SERVICES</a> <a href="#">PACKAGES</a>
			<a href="#">ABOUT US</a> <a href="#">CONTACT US</a>
			<div class="animation start-services"></div>
		</nav>
	</div>
	<div class="firstPart"></div>
	<div class="backBox">
		<div class="diagonal-split3">
			<div class="banner">
				AUTOMOBILE<br> SERVICES
			</div>
		</div>
	</div>
	<div class="SecondSession"></div>
	<div class="Sessions">
		<div class="diagonal-split1">
			<%
			Connection conn;
			Statement stmt, stmt1, stmt2, stmt3;
			ResultSet rs, rs1, rs2, rs3;

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/autodrive", "root", "root");

			String sql = "SELECT * FROM autodrive.services where serID=1";
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String id = rs.getString("serID");
			%>
			<h4>OUR SERVICES</h4>
			<h2>
				<span>Auto Drive </span><%=rs.getString("title")%></h2>
			<p>
				<%=rs.getString("description")%>
			</p>
			<img src="./images/<%=rs.getString("imagename")%>" />
			<button class="button1">
				<a href="learnMore.jsp?id=1">LEARN MORE</a>
			</button>
			<button class="button01">
				<a href="EngineCare.jsp">Make an Appointment >></a>
			</button>

		</div>
		<%
		}
		String sql1 = "SELECT * FROM autodrive.services where serID=2";
		stmt1 = conn.createStatement();

		rs1 = stmt.executeQuery(sql1);

		while (rs1.next()) {
		String id1 = rs1.getString("serID");
		%>
		<div class="diagonal-split5">
			<h2>
				<span>Auto Drive </span><%=rs1.getString("title")%></h2>
			</h2>
			<p><%=rs1.getString("description")%></p>
			<img src="./images/<%=rs1.getString("imagename")%>" />
			<button class="button2">
				<a href="learnMore.jsp?id=2">LEARN MORE</a>
			</button>
			<button class="button02">
				<a href="AccidentRepair.jsp">Make an Appointment >></a>
			</button>
		</div>
		<%
		}
		String sql2 = "SELECT * FROM autodrive.services where serID=3";
		stmt2 = conn.createStatement();

		rs2 = stmt.executeQuery(sql2);

		while (rs2.next()) {
		String id2 = rs2.getString("serID");
		%>
		<div class="diagonal-split2"></div>
		<div class="diagonal-split6">
			<h2>
				<span>Auto Drive </span><%=rs2.getString("title")%></h2>
			</h2>
			<p><%=rs2.getString("description")%></p>
			<img src="./images/<%=rs2.getString("imagename")%>" />
			<button class="button3">
				<a href="learnMore.jsp?id=3">LEARN MORE</a>
			</button>
			<button class="button03">
				<a href="washService.jsp">Make an Appointment >></a>
			</button>
		</div>

		<div class="diagonal-split7"></div>
	</div>
	<div class="backBox2">
		<div class="diagonal-split8">
			<div class="banner2">
				FUEL<br> SERVICES
			</div>
		</div>
	</div>

	<%
	}
	String sql3 = "SELECT * FROM autodrive.services where serID=4";
	stmt3 = conn.createStatement();

	rs3 = stmt.executeQuery(sql3);

	while (rs3.next()) {
	String id2 = rs3.getString("serID");
	%>
	<div class="diagonal-split11">
		<h2>
			<span>Auto Drive </span><%=rs3.getString("title")%></h2>
		</h2>
		<p><%=rs3.getString("description")%></p>
		<img src="./images/<%=rs3.getString("imagename")%>" />
		<button class="button4">
			<a href="learnMore.jsp?id=4">LEARN MORE</a>
		</button>
		<button class="button04">
			<a href="washService.jsp">Make an Appointment >></a>
		</button>
	</div>
	<div class="diagonal-split9"></div>
	<div class="SecondSession1"></div>
	<%
	}
	%>
	<div class="Footer"></div>
</body>
</html>