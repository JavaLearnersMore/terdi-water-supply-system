<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Terdi Water Supply Scheme</title>

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
  padding: 20px;
  text-align: center;
  position: relative;
  z-index: 2;
}

.header img {
  position: absolute;
  left: 20px;
  top: 15px;
  width: 60px;
}

/* Force all header text to white */
.header h1,
.header p {
  color: white;
  margin: 0;
}

.header h1 {
  font-size: 24px;
}

.header p {
  font-size: 14px;
}

/* ===== Top Navigation ===== */
.topnav {
  overflow: hidden;
  background-color: rgba(21,67,96,0.95);
  position: relative;
  padding: 0 20px;
  height: 50px;
}

.topnav .right {
  float: right;
}

.logout-button {
  float: right;
  background-color: #c0392b;
  color: white;
  padding: 10px 16px;
  text-decoration: none;
  border-radius: 4px;
  line-height: 30px;
  margin-top: 10px;
}

.logout-button:hover {
  background-color: #a93226;
}

/* ===== Layout ===== */
.layout {
  display: flex;
  min-height: calc(100vh - 100px);
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

.sidebar a:hover,
.sidebar a.active {
  background-color: #2980b9;
  color: #ffffff;
}

/* ===== Content Area ===== */
.content {
  flex-grow: 1;
  padding: 30px;
  background-color: #ffffff;
  box-sizing: border-box;
  border-radius: 8px;
  margin: 20px;
}

h1, h2 {
  color: #154360;
  text-align: center;
}

/* ===== Form Styling ===== */
form {
  max-width: 600px;
  margin: 20px auto;
  background-color: #f9f9f9;
  padding: 25px;
  border-radius: 10px;
  box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
}

label {
  font-weight: bold;
  display: block;
  margin-bottom: 6px;
  color: #154360;
}

input[type=text], textarea {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

textarea {
  height: 100px;
  resize: none;
}

input[type=submit] {
  background-color: #27ae60;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  font-size: 15px;
}

input[type=submit]:hover {
  background-color: #1e8449;
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

<!-- ===== Top Navigation with Logout ===== -->
<div class="topnav">
  <div class="right">
    <a href="${pageContext.request.contextPath}/home" class="logout-button">
      <i class="fa fa-sign-out"></i> Logout
    </a>
  </div>
</div>

<!-- ===== Layout with Sidebar ===== -->
<div class="layout">

  <!-- Sidebar -->
  <div class="sidebar">
    <a href="${pageContext.request.contextPath}/register"><i class="fas fa-user-plus"></i> Add User</a>
    <a href="${pageContext.request.contextPath}/loginUser"><i class="fas fa-users"></i> All Users</a>
    <a href="${pageContext.request.contextPath}/userPaymentDetails"><i class="fas fa-credit-card"></i> Payment Details</a>
    <a href="${pageContext.request.contextPath}/contactUs" class="active"><i class="fas fa-envelope"></i> Contact</a>
    <a href="${pageContext.request.contextPath}/about-us"><i class="fas fa-info-circle"></i> About</a>
  </div>

  <!-- Main Content -->
  <div class="content">
    <h1>Contact Us</h1>
    <p align="center"><b>Send your comments through this form and we will get back to you.</b></p>

    <form action="contactUsData" method="POST" novalidate>
      <label for="pp-name">Name:</label>
      <input type="text" id="pp-name" name="Name" placeholder="Enter your name" required>

      <label for="pp-email">Email:</label>
      <input type="text" id="pp-email" name="Email_id" placeholder="Enter your email" required>

      <label for="pp-phone">Phone Number:</label>
      <input type="text" id="pp-phone" name="Phone_no" placeholder="Enter your phone number" required>

      <label for="about-project">Message:</label>
      <textarea id="about-project" name="Message" placeholder="Enter your message"></textarea>

      <input type="submit" value="Send Message">
    </form>
  </div>
</div>

</body>
</html>
