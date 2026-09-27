<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Terdi Water Supply Scheme - Payment Dashboard</title>

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

.topnav .right {
  float: right;
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

/* ===== Main Content ===== */
.content {
  flex-grow: 1;
  padding: 20px;
  background-color: #ffffff;
  color: #000;
  box-sizing: border-box;
  border-radius: 8px;
  overflow-x: auto;
}

/* ===== Table Styling ===== */
table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 10px;
  font-size: 14px;
}

table th, table td {
  border: 1px solid #ccc;
  padding: 8px;
  text-align: center;
}

table th {
  background-color: #2980b9;
  color: #fff;
  position: sticky;
  top: 0;
}

table tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* ===== Pay Button ===== */
.pay-btn {
  background-color: #27ae60;
  color: white;
  padding: 6px 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  text-decoration: none;
  font-size: 14px;
  transition: background 0.3s;
}

.pay-btn:hover {
  background-color: #1e8449;
}

h2 {
  color: #154360;
  text-align: left;
  margin-bottom: 15px;
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
    <h2>User Payment Details</h2>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>User Name</th>
          <th>January</th>
          <th>February</th>
          <th>March</th>
          <th>April</th>
          <th>May</th>
          <th>June</th>
          <th>July</th>
          <th>August</th>
          <th>September</th>
          <th>October</th>
          <th>November</th>
          <th>December</th>
          <th>Year</th>
          <th>Total Paid</th>
          <th>Remaining</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${paymentDetails}" var="paymentDetail">
          <tr>
            <td>${paymentDetail.user_id}</td>
            <td>${paymentDetail.user_name}</td>
            <td>${paymentDetail.january}</td>
            <td>${paymentDetail.february}</td>
            <td>${paymentDetail.march}</td>
            <td>${paymentDetail.april}</td>
            <td>${paymentDetail.may}</td>
            <td>${paymentDetail.june}</td>
            <td>${paymentDetail.july}</td>
            <td>${paymentDetail.august}</td>
            <td>${paymentDetail.september}</td>
            <td>${paymentDetail.october}</td>
            <td>${paymentDetail.november}</td>
            <td>${paymentDetail.december}</td>
            <td>${paymentDetail.year}</td>
            <td>${paymentDetail.total_paid}</td>
            <td>${paymentDetail.remaining_amount}</td>
            <td>
              <button class="pay-btn"
                onclick="window.location.href='${pageContext.request.contextPath}/pay?userName=${paymentDetail.user_name}&user_id=${paymentDetail.user_id}'">
                <i class="fas fa-credit-card"></i> Pay
              </button>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

</div>

</body>
</html>
