<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Login - Terdi Water Supply Scheme</title>

    <link rel="stylesheet"
          type="text/css"
          href="${pageContext.request.contextPath}/CSS/login.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>


<body>

<div class="page-container">

    <div class="login-card">

        <!-- Header -->

        <div class="login-header">

            <h2>Login</h2>

            <p>
                Login to Terdi Water Supply Scheme
            </p>

        </div>


        <!-- Login Form -->

        <form action="loginUser"
              method="post"
              name="frm"
              id="loginForm">


            <!-- Email -->

            <div class="form-group">

                <label for="e_address">
                    Email Address
                </label>

                <input type="email"
                       id="e_address"
                       name="e_address"
                       placeholder="Enter email address"
                       required>

            </div>


            <!-- Password -->

            <div class="form-group">

                <label for="password">
                    Password
                </label>

                <input type="password"
                       id="password"
                       name="password"
                       placeholder="Enter password"
                       required>

            </div>


            <!-- Buttons -->

            <div class="button-container">

                <button type="button"
                        class="login-btn"
                        onclick="validateForm()">

                    Login

                </button>


                <button type="button"
                        class="cancel-btn"
                        onclick="history.back()">

                    Cancel

                </button>

            </div>

        </form>


        <!-- Registration -->

        <div class="register-section">

            <p>
                Don't have an account?
            </p>

            <button type="button"
                    class="register-btn"
                    onclick="window.location.href='${pageContext.request.contextPath}/register';">

                Create Account

            </button>

        </div>

    </div>

</div>


<script>

$(document).ready(function () {


    /* Reset border when user enters data */

    $("#e_address, #password").on("input", function () {

        $(this).css("border-color", "#d5dce5");

    });

});


function validateForm() {

    var email = $("#e_address").val().trim();

    var password = $("#password").val();

    var isValid = true;


    /* Email validation */

    if (email === "") {

        $("#e_address").css("border-color", "#e74c3c");

        isValid = false;

    }
    else if (!validateEmail(email)) {

        $("#e_address").css("border-color", "#e74c3c");

        isValid = false;

    }


    /* Password validation */

    if (password === "") {

        $("#password").css("border-color", "#e74c3c");

        isValid = false;

    }


    /* Submit */

    if (isValid) {

        $("#loginForm").submit();

    }

}


function validateEmail(email) {

    var emailRegex =
        /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    return emailRegex.test(email);

}

</script>


</body>

</html>