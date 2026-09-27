<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Member</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/home.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        /* Style similar to registration form */
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .card {
            padding: 20px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="card">
            <!-- Update Member Form with Header -->
            <h2>Update Details</h2>

            <!-- Form Section -->
            <spring:form action="/updateData" method="post" modelAttribute="MemberBean" commandName="MemberBean">
            
                <spring:input path="id" type="hidden" id="id" />

                <!-- First Name Field -->
                <label for="first_name"><b>First Name:</b></label>
                <spring:input path="first_name" id="first_name" placeholder="Enter First Name" />
                
                <!-- Middle Name Field -->
                <label for="middle_name"><b>Middle Name:</b></label>
                <spring:input path="middle_name" id="middle_name" placeholder="Enter Middle Name" />

                <!-- Last Name Field -->
                <label for="last_name"><b>Last Name:</b></label>
                <spring:input path="last_name" id="last_name" placeholder="Enter Last Name" />

                <!-- email Field -->
                <label for="email_id"><b>Email:</b></label>
                <spring:input path="email_id" id="email_id" placeholder="Enter email" />
                
                 <!-- dob Field -->
                <label for="dob"><b>Date Of Birth:</b></label>
                <spring:input path="dob" id="dob" placeholder="Enter date of birth" />
                
                 <!-- Village Field -->
                <label for="mobile_number"><b>Mobile Number:</b></label>
                <spring:input path="mobile_number" id="mobile_number" placeholder="Enter mobile number" />

                <!-- Submit Button -->
                <button type="submit">Update</button>
            </spring:form>
            <button onclick="history.back()">Cancel</button>
        </div>
    </div>

</body>
</html>
