<!DOCTYPE html>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details</title>
<link
	href="https://fonts.googleapis.com/css?family=Overpass:100,100i,200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/common.css" />
</head>
<style>
a{
color:white;
}
b{
font-size:130%

}

</style>
<body background="da1.jpg">

	<%@include file="head.jsp"%>
	<div align="center""wrap">
	<br><br><br><br>
<marquee>
			<b> A health attitude is contagious but don't wait to catch it from others.Be a carrier !!!
		</b></marquee>
		<br><br>
		<h1 align="center">Patient Details</h1>
		<form method="post" action="PatientDetails.jsp">
		
			<table>

				<tr>
					<td>Patient ID</td>
					<td><input type="number" name="pid" class="inputFields" required></td>
				</tr>
<br><br>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" class="inputFields" required></td>
				</tr>

				<tr>
					<td>Contact</td>
					<td><input type="text" pattern="[789]{1}[0-9]{9}"  name="contact"   class="inputFields" required ></td>
				</tr>

				<tr>
					<td>Age</td>
					<td><input type="text" pattern="[0-9]{1}[0-9]{1}" name="age" class="inputFields" required>
						yrs</td>
				</tr>

				<tr>
					<td>Gender </td>
					<td><input type="radio" name="gender" required><label>Male</label>
						<input type="radio" name="gender" required><label>Female</label></td>

				</tr>

				<tr>
					<td>Address</td>
					<td><textarea type="text" class="inputFields" name="address"
							rows="5" cols="20" required></textarea></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Add Appointment"
						class="buttons"> <input type="reset" value="Clear"
						class="buttons"></td>

				</tr>



			</table>
			
			
			<br><br><br><br><br><br><br><br><br>
			<br><br><br><br>
			
			


		</form>
	</div>
</body>
</html>