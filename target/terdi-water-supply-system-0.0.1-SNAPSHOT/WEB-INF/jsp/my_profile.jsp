<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Terdi Water Supply Scheme - User Dashboard</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background: #f4f4f4; /* light grey background for the whole page */
}

/* ===== Header ===== */
.header {
  background-color: rgba(27,79,114,0.95);
  color: white;
  padding: 15px;
  text-align: center;
  position: relative;
}

.header img {
  position: absolute;
  left: 20px;
  top: 10px;
  width: 60px;
}

.header h1 {
  margin: 0;
  font-size: 24px;
}

.header p {
  margin: 0;
  font-size: 14px;
}

/* ===== Top Navigation ===== */
.topnav {
  overflow: hidden;
  background-color: rgba(21,67,96,0.95);
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #2980b9;
  color: white;
}

.topnav a.active {
  background-color: #21618c;
  color: white;
}

.topnav .right {
  float: right;
}

.profile-link {
    background-color: #28a745;
    color: white;
    padding: 10px 16px;
    text-decoration: none;
    border-radius: 4px;
    margin-left: 10px;
}

.profile-link:hover {
    background-color: #218838;
}

.logout-button {
    background-color: #c0392b;
    color: white;
    padding: 10px 16px;
    text-decoration: none;
    border-radius: 4px;
}

.logout-button:hover {
    background-color: #a93226;
}

/* ===== Layout ===== */
.layout {
  display: flex;
  min-height: calc(100vh - 120px); /* full height minus header & nav */
}

/* ===== Sidebar ===== */
.sidebar {
  width: 230px;
  background-color: rgba(33,97,140,0.95);
  padding-top: 20px;
  box-sizing: border-box;
  flex-shrink: 0;
}

.sidebar a {
  display: flex;
  align-items: center;
  padding: 14px 20px;
  text-decoration: none;
  color: #f2f2f2;
  font-size: 16px;
  transition: 0.3s;
}

.sidebar a i {
  margin-right: 12px;
  font-size: 20px;
}

.sidebar a:hover {
  background-color: #2980b9;
  color: #ffffff;
}

/* ===== Main Content ===== */
.content {
  flex-grow: 1;
  padding: 20px;
  background-color: #ffffff; /* solid white for readability */
  color: #000; /* black text */
  box-sizing: border-box;
  border-radius: 8px;
  overflow-x: auto; /* horizontal scroll if table is too wide */
}

/* ===== Table Styling ===== */
table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 10px;
}

table th, table td {
  border: 1px solid #ccc;
  padding: 8px;
  text-align: left;
}

table th {
  background-color: #2980b9;
  color: #fff;
}

/* ===== Marquee ===== */
.marquee {
  font-size: 24px;
  font-weight: bold;
  color: #ffffff;            
  text-shadow: 1px 1px 2px #000; 
  padding: 10px;
}
</style>
</head>
<body>

<!-- ===== Header ===== -->
<div class="header">
    <img src="image/water_img.jpeg" alt="Gov Emblem" />
    <h1>Water Supply Scheme</h1>
    <p>Terdi Mandangad</p>
</div>

<!-- ===== Top Navigation ===== -->
<div class="topnav">
  <div class="right">
    <a href="http://localhost:8080/home" class="logout-button">Logout</a>
  </div>
</div>

<!-- ===== Page Layout ===== -->
<div class="layout">

  <!-- Sidebar Menu -->
  <div class="sidebar">
    <a href="profile.jsp"><i class="fas fa-user"></i>My Profile</a>
    <a href="${pageContext.request.contextPath}/all_member"><i class="fas fa-users"></i>All Members</a>
    <a href="taxonomy.jsp"><i class="fas fa-leaf"></i>Paid Taxonomy</a>
    <a href="notice.jsp"><i class="fas fa-bell"></i>Notice</a>
    <a href="villageview.jsp"><i class="fas fa-map-marked-alt"></i>Village View</a>
    <a href="pay.jsp"><i class="fas fa-credit-card"></i>Pay</a>
  </div>
  
  <!-- First Name Field -->
          <label for="f_name"><b>First Name</b></label>
          <input type="text" id="f_name" name="first_name"  required>
          
          <!-- Middle Name Field -->
          <label for="m_name"><b>Middle Name</b></label>
          <input type="text" id="m_name" name="middle_name" placeholder="Middle Name" required> 

          <!-- Last Name Field -->
          <label for="l_name"><b>Last Name</b></label>
          <input type="text" id="l_name" name="last_name" placeholder="Last Name" required>

          <!-- Password Field -->
          <label for="password"><b>Password</b></label>
          <input type="password" id="password" name="password" placeholder="Password" required>

          <!-- Date of Birth Field -->
          <label for="dob"><b>Date of Birth</b></label>
          <input type="text" id="dob" name="dob" placeholder="Date of Birth" required>

          <!-- Address Field -->
          <label for="address"><b>Address</b></label>
          <input type="text" id="address" name="address" placeholder="Address" required>

          <!-- Email Address Field -->
          <label for="email_id"><b>Email Address</b></label>
          <input type="text" id="email_id" name="email_id" placeholder="Email ID" required>

          <!-- Mobile Number Field -->
          <label for="mob_number"><b>Mobile Number</b></label>
          <input type="number" id="mob_number" name="mobile_number" placeholder="Mobile Number" required>

</body>
</html>
