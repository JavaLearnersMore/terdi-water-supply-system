<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Water Supply Scheme - Contact / About</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background: #f4f4f4;
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

.topnav .right {
  float: right;
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
  min-height: calc(100vh - 120px);
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

/* ===== Content ===== */
.content {
  flex-grow: 1;
  padding: 20px;
  background-color: #ffffff;
  color: #000;
  box-sizing: border-box;
  border-radius: 8px;
  overflow-x: auto;
}

.content h2 {
  margin-top: 0;
}

.content table {
  margin: 20px auto;
  border-collapse: collapse;
}

.content table td {
  padding: 10px 20px;
}

.content p {
  text-align: justify;
  line-height: 1.6;
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
    <a href="${pageContext.request.contextPath}/home" class="logout-button">
      <i class="fa fa-sign-out"></i> Logout
    </a>
  </div>
</div>

<!-- ===== Page Layout ===== -->
<div class="layout">

  <!-- Sidebar Menu -->
  <div class="sidebar">
    <a href="${pageContext.request.contextPath}/register"><i class="fas fa-user-plus"></i> Add User</a>
    <a href="${pageContext.request.contextPath}/loginUser"><i class="fas fa-users"></i> All Users</a>
    <a href="${pageContext.request.contextPath}/userPaymentDetails"><i class="fas fa-credit-card"></i> Payment Details</a>
    <a href="${pageContext.request.contextPath}/contactUs"><i class="fas fa-envelope"></i> Contact</a>
    <a href="${pageContext.request.contextPath}/about-us"><i class="fas fa-info-circle"></i> About</a>
  </div>
  
  <!-- Main Content Area -->
  <div class="content">
    <h2>About</h2>
    
    <table>
      <tr>
        <td>
          <h5>Name: <b>Nikhil More</b></h5>
          <h6>Mobile: <b>+91 72619 31820</b></h6>
        </td>
      </tr>
      <tr>
        <td>
          <h5>Name: <b>Prakash More</b></h5>
          <h6>Mobile: <b>+91 7770045984</b></h6>
        </td>
      </tr>
    </table>
    
    <p>
      Water supply is the provision of water by public utilities, commercial organisations, community endeavors or by individuals, usually via a system of pumps and pipes. Public water supply systems are crucial to properly functioning societies. These systems are what supply drinking water to populations around the globe. Aspects of service quality include continuity of supply, water quality and water pressure. The institutional responsibility for water supply is arranged differently in different countries and regions (urban versus rural). It usually includes issues surrounding policy and regulation, service provision and standardization.
      The cost of supplying water consists, to a very large extent, of fixed costs (capital costs and personnel costs) and only to a small extent of variable costs that depend on the amount of water consumed (mainly energy and chemicals). Almost all service providers in the world charge tariffs to recover part of their costs.
    </p>
    
  </div>
</div>

</body>
</html>
