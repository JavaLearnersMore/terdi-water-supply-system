<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Payment Success</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', Arial, Helvetica, sans-serif;
  background: linear-gradient(to right, #43cea2, #185a9d);
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #333;
}

/* Modal Container */
.modal {
  display: none;
  position: fixed;
  z-index: 10;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0,0,0,0.6);
}

/* Modal Box */
.modal-content {
  background: #fff;
  border-radius: 12px;
  width: 90%;
  max-width: 400px;
  padding: 30px;
  margin: 10% auto;
  text-align: center;
  box-shadow: 0 4px 20px rgba(0,0,0,0.3);
  animation: fadeIn 0.4s ease;
}

/* Success Icon */
.success-icon {
  font-size: 60px;
  color: #28a745;
  margin-bottom: 10px;
}

/* Message Text */
.error-message h2 {
  color: #28a745;
  margin-bottom: 10px;
}

.error-message p {
  color: #333;
  font-size: 16px;
}

/* Buttons */
.btn {
  display: inline-block;
  background: #28a745;
  color: #fff;
  padding: 10px 20px;
  border-radius: 6px;
  text-decoration: none;
  margin-top: 15px;
  font-weight: bold;
  transition: background 0.3s ease;
}

.btn:hover {
  background: #218838;
}

.close {
  position: absolute;
  right: 20px;
  top: 10px;
  color: #aaa;
  font-size: 28px;
  cursor: pointer;
}

.close:hover {
  color: #333;
}

@keyframes fadeIn {
  from { opacity: 0; transform: scale(0.9); }
  to { opacity: 1; transform: scale(1); }
}
</style>
</head>

<body onload="showModal()">

<div id="errorModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <div class="error-message">
      <h2>Payment Failed!</h2>
      <p>Your transaction failed.</p>
      <a href="http://localhost:8080/userPaymentDetails" class="btn">Back to Payments</a>
    </div>
  </div>
</div>

<script>
function showModal() {
  document.getElementById("errorModal").style.display = "block";
}

function closeModal() {
  document.getElementById("errorModal").style.display = "none";
  window.location.href = "http://localhost:8080/userPaymentDetails";
}
</script>

</body>
</html>
