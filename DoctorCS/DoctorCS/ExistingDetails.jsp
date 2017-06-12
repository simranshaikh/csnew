<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Details</title>
<link
	href="https://fonts.googleapis.com/css?family=Overpass:100,100i,200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/common.css" />
</head>
<style>
a {
	color: white;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

c {
	font-size: 130%
}
</style>
<body background="t13.jpg">
	<header> <d>
	<img src="bgf.jpg"></d> </header>
	
	<marquee>
		<c>To enjoy the glow of good health, you must exercise !!!</c>
	</marquee>
	<br><br><br>
	<center>
		<h2>PATIENT DETAILS</h2>
		<%
			Connection conn = null;
			try {

				Class.forName("oracle.jdbc.OracleDriver");
				conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:XE", "system",
						"system");
				//out.println("connected to oracle database");
				boolean isValid = false;
			} catch (SQLException e) {
				e.printStackTrace();
			}

			String query = "select pid,pname,page,pgender,pcontact,paddress from patient where pid=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.clearParameters();
			ps.setString(1, request.getParameter("pid"));
			ResultSet rs = ps.executeQuery();
		%>
		<table border="1">
			<tr>
				<th>Patient_ID</th>
				<br>
				<th>Patient_name</th>
				<br>
				<th>Patient_age</th>
				<th>Patient_Gender</th>
				<th>Patient_Contact</th>
				<th>Patient_Address</th>

			</tr>

			<tr>
				<%
					while (rs.next()) {
				%>

				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>

			</tr>
			<%
				}
			%>









		</table>

		<h2>Sorry!!! You can't take an appointment...Appointment Already
			Exist</h2>
		<div class="discretePageUnits">
			<a href="AlreadyExistingPatient.html"><input type="button"
				class="buttons" value="View Appointment"></a>
		</div>

	</center>
	<br>
	<br>
	<br>
	<br>
	
</body>
</html>