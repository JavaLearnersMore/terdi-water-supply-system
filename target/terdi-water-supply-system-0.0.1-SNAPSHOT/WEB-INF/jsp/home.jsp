<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/home.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            // Reset border color when user interacts with the field
            $("#e_address, #password").on('input', function() {
                $(this).css("border-color", "#3498db");
            });
        });

        function validateForm() {
            var email = $("#e_address").val();
            var password = $("#password").val();
            var isValid = true; // Track overall form validity

            // Email validation
            if (email === "") {
                $("#e_address").css("border-color", "red");
                isValid = false;
            } else if (!validateEmail(email)) {
                $("#e_address").css("border-color", "red");
                isValid = false;
            }

            // Password validation
            if (password === "") {
                $("#password").css("border-color", "red");
                isValid = false;
            }

            // If all validations pass, submit the form manually
            if (isValid) {
                $("form[name='frm']").submit(); // Manually submit the form
            }
        }

        // Helper function to validate email format
        function validateEmail(email) {
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }
    </script>
</head>
<body>

    <div class="container">
        <div class="card">
            <!-- Login Form with Header -->
            <h2>Login</h2>

            <!-- Form Section -->
            <form action="loginUser" method="post" name="frm">
                <!-- Email Field -->
                <label for="e_address"><b>Email</b></label>
                <input type="text" id="e_address" name="e_address" placeholder="EMAIL ID" required>

                <!-- Password Field -->
                <label for="password"><b>Password</b></label>
                <input type="password" id="password" name="password" placeholder="PASSWORD" required>

                <!-- Submit Button -->
                <button type="button" onclick="validateForm()">Login</button> <!-- Call validateForm on click -->
            </form>

            <!-- Or Create Account Section -->
            <p style="text-align:center;">or</p>
           
            <!-- Create Account Button -->
            <div class="create-account-btn-container">
                <button type="button" onclick="window.location.href='/register';">Create Account</button>
            </div>
        </div>
    </div>

</body>
</html>
