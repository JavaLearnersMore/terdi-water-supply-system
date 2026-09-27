<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
  background: url("image/Terdi_img.jpeg") no-repeat center center fixed;
  background-size: cover;
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
.main-content {
  flex-grow: 1;
  padding: 20px;
  background: transparent;    /* ❌ remove the white overlay */
  margin: 0;
  box-sizing: border-box;
  color: #fff;                 /* ✅ ensure text is visible */
}


.marquee {
  font-size: 24px;
  font-weight: bold;
  color: #ffffff;            /* White text specifically for marquee */
  text-shadow: 1px 1px 2px #000; /* Optional for readability */
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

  <!-- ✅ Sidebar Menu -->
  <div class="sidebar">
    <a href="${pageContext.request.contextPath}/myProfile"><i class="fas fa-user"></i>My Profile</a>
    <a href="${pageContext.request.contextPath}/all_member"><i class="fas fa-users"></i>All Members</a>
    <a href="taxonomy.jsp"><i class="fas fa-leaf"></i>Paid Taxonomy</a>
    <a href="notice.jsp"><i class="fas fa-bell"></i>Notice</a>
    <a href="villageview.jsp"><i class="fas fa-map-marked-alt"></i>Village View</a>
    <a href="pay.jsp"><i class="fas fa-credit-card"></i>Pay</a>
  </div>

  <!-- ✅ Main Content -->
  <div class="main-content">
    <marquee class="marquee" behavior="scroll" direction="left" scrollamount="6">
      Welcome to Terdi Water Supply User Dashboard
    </marquee>
  </div>

</div>

</body>
</html>
