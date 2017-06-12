<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>
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
d
{
background-image:url("bgf.jpg");
align:"left";
background-size:1% 1%;
}

c
{
font-size:180%
}
</style>
<body background="t13.jpg">
	<header>
			<d><img src="bgf.jpg" ></d>

	</header>
	<br><br><br>
	
	<marquee>
			<c>Hearty laughter is a good way to jog internally without having to go outdoors !!!
		</c></marquee>
<center>
<br><br><br><br>
<h2>APPOINTMENT DETAILS</h2>
<%
Connection conn=null;
try
{

    Class.forName("oracle.jdbc.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
	//out.println("connected to oracle database");
 boolean isValid=false;
 }
  catch(SQLException e)
	{
	  e.printStackTrace();
	}

String query = "select a.date_of_app,a.slot,a.couponno,a.pid,p.pname,a.id,d.dname,d.specialization from doctor d,Appointment a,patient p where d.id=a.id AND a.pid=p.pid AND p.pid=?";
PreparedStatement ps = conn.prepareStatement(query);
ps.clearParameters();

ps.setString(1, request.getParameter("pid"));
ResultSet rs = ps.executeQuery();
 %>
 <table border="1">
 <tr>
 
 <th>Date</th>
 <th>Slot</th>
 <th>CouponNo</th>
 <th>Patient_ID</th>
 <th>Patient_Name</th>
 <th>Doctor_ID</th>
 <th>Doctor_Name</th>
 <th>Doc_Specialization</th>
 </tr>
 
 <tr>
 <%
 while(rs.next())
{
  %>
  
 <td><%= rs.getDate(1) %></td>
 <td><%= rs.getString(2) %></td>
 <td><%= rs.getInt(3) %></td>
 <td><%= rs.getInt(4) %></td>
 <td><%= rs.getString(5) %></td>
 <td><%= rs.getInt(6) %></td>
 <td><%= rs.getString(7) %></td>
 <td><%= rs.getString(8) %></td>
 </tr>
 <%
 }
 %> 
 </table> 
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br>

</body>
</html>