<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<div style="padding-left:16px">
  <h2>WATER SUPPLY SYSTEM</h2>
  
</div>

<div class="topnav">
  <a class="active" href="http://localhost:8080/back">HOME</a>
  <a href="http://localhost:8080/insert">Add Member</a>
  <a href="http://localhost:8080/monthly_pay">Monthly Pay</a>
  <a href="http://localhost:8080/members">All Members</a>
  <a class="active" href="http://localhost:8080/home">LOGOUT</a>
</div>
<br><br>

<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body bgcolor="#3285a8">
	<h2 font style="color: black;" align="center">Member Details</h2>
		<table style="border-bottom-color: black; border: black;" align="center">
			<tr align="center">
			
			    <td><b>Sr no</td>
				<td><b>First name</td>
				<td><b>Middle name</td>
				<td><b>Last name</td>
				<td><b>Village</td>
				<td colspan="2"><b>Operations</b></td>
				
				
			</tr>
			
			<c:forEach items="${memberDetails}" var="memberDetail">
			
			<tr>
			<td>${memberDetail.sr_no}</td>
			<td>${memberDetail.first_name}</td>
			<td>${memberDetail.middle_name}</td>
			<td>${memberDetail.last_name}</td>
			<td>${memberDetail.village}</td>
			<td><b><a href="/update/${memberDetail.sr_no}">Update</b></td>
			<td><b><a href="/delete/${memberDetail.sr_no}">Delete</b></td>
			</tr>
			
			</c:forEach>
			
		</table>
		
		
		 
		
</body>
</html>