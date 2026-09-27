<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 <!--  <a href="http://localhost:8080/login">LOGIN</a> -->
 <!--   <a href="http://localhost:8080/register">REGISTRATION</a> -->
  <a href="http://localhost:8080/about-us">ABOUT-US</a>
  <a class="active" href="http://localhost:8080/home">LOGOUT</a>
</div><br><br><br>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 80%;
  width: 180px;
  position: fixed;
  z-index: 1;
  top: 20;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
</style>
</head>
<body>

<div class="sidebar">
  <a href="http://localhost:8080/insert"><i class="fa fa-fw fa-home"></i> Add Members</a>
  <a href="http://localhost:8080/monthly_pay"><i class="fa fa-fw fa-wrench"></i> Monthly Pay</a>
  <a href="http://localhost:8080/members"><i class="fa fa-fw fa-user"></i>All Members</a>
  <a href="#contact"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  
</div>

<body bgcolor="#3285a8">
<form action ="dburl" method="post">
<h3 align="center"><b style="color: black;">Add member details here...</b> </h3>
<table border="1" style="color: black" align="center">
<tr><td><b>Sr no </td><td><input type ="text" name ="sr_no" placeholder="sr no"></td></tr>
<tr><td><b>First name</td><td><input type ="text" name ="first_name" placeholder="first name"></td></tr>
<tr><td><b>Middle name</td><td><input type ="text" name ="middle_name" placeholder="middle name"></td></tr>
<tr><td><b>Last name</td><td><input type ="text" name ="last_name" placeholder="last name"></td></tr>
<tr><td><b>Village</td><td><input type ="text" name ="village" placeholder="village"></td></tr>
<tr><td colspan="2" align="center"><input type ="submit" value ="Add Member" name ="m1"></td></tr>
</table><br><br>

</form>
</body>
</html>