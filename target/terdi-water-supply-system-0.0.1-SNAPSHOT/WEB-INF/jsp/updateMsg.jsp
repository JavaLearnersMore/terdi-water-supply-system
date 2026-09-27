<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Message</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', Arial, Helvetica, sans-serif;
  background: linear-gradient(to right, #56ab2f, #a8e063);
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
}

/* Modal Background */
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
  border-radius: 12px;
  width: 90%; 
  max-width: 420px;
  padding: 30px;
  margin: 10% auto;
  text-align: center;
  box-shadow: 0 6px 25px rgba(0,0,0,0.3);
  position: relative;
  color: #333;
  animation: fadeIn 0.4s ease-in-out;
}

/* Close Button */
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

/* Dynamic Message */
.error-message p {
  font-size: 18px;
  margin-bottom: 20px;
  font-weight: bold;
  color: #28a745;
}

/* Link Button */
.error-message a {
  display: inline-block;
  background-color: #28a745;
  color: white;
  padding: 10px 20px;
  border-radius: 6px;
  text-decoration: none;
  font-weight: bold;
  transition: background 0.3s ease;
}
.error-message a:hover {
  background-color: #218838;
}

/* Animation */
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
      <p><b><%= request.getAttribute("info") %></b></p>
      <a href="http://localhost:8080/loginUser">Back</a>
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
</script>

</body>
</html>
