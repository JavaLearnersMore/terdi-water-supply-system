<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Error</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', Arial, Helvetica, sans-serif;
  background: linear-gradient(to right, #ff6a00, #ee0979);
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
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
  background-color: rgba(0,0,0,0.6);
}

/* Modal Box */
.modal-content {
  background-color: #fff;
  margin: 10% auto; 
  padding: 30px;
  border-radius: 12px;
  width: 90%; 
  max-width: 450px;
  box-shadow: 0 6px 25px rgba(0,0,0,0.3);
  text-align: center;
  color: #333;
  animation: fadeIn 0.4s ease-in-out;
  position: relative;
}

/* Close Button */
.close {
  position: absolute;
  right: 20px;
  top: 10px;
  color: #aaa;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}

.close:hover {
  color: #333;
}

/* Error Message Styling */
.error-message h2 {
  color: #e74c3c;
  font-size: 20px;
  margin-bottom: 10px;
}

.error-message p {
  font-size: 16px;
  color: #444;
}

.error-message a {
  color: #007bff;
  text-decoration: none;
  font-weight: bold;
  display: inline-block;
  margin-top: 10px;
  transition: color 0.3s ease;
}

.error-message a:hover {
  color: #0056b3;
  text-decoration: underline;
}

/* Animation */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-20px); }
  to { opacity: 1; transform: translateY(0); }
}
</style>
</head>

<body onload="showModal()">

<div id="errorModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <div class="error-message">
      <h2>Oops! Unable to locate user with the specified credentials</h2>
      <p>or</p>
      <p>Create an account below.</p>
      <a href="http://localhost:8080/register">Click here to create an account</a>
    </div>
  </div>
</div>

<script>
function showModal() {
  document.getElementById("errorModal").style.display = "block";
}

function closeModal() {
  document.getElementById("errorModal").style.display = "none";
  window.history.back();
}

// Close when clicking outside modal
window.onclick = function(event) {
  var modal = document.getElementById("errorModal");
  if (event.target == modal) {
    modal.style.display = "none";
    window.history.back();
  }
}
</script>

</body>
</html>
