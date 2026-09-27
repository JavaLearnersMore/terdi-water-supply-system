<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Registration - Terdi Water Supply Scheme</title>

    <!-- jQuery UI CSS -->
    <link rel="stylesheet"
          href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- Registration CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/CSS/registration.css">

</head>

<body>

<div class="page-container">

    <div class="registration-card">

        <!-- Header -->

        <div class="registration-header">

            <h2>Create Account</h2>

            <p>
                Register for Terdi Water Supply Scheme
            </p>

        </div>


        <!-- Registration Form -->

        <form id="registrationForm"
              action="registerUser"
              method="post"
              name="frm">

            <div class="form-grid">

                <!-- Role -->

                <div class="form-group">

                    <label for="role">
                        Role
                    </label>

                    <select id="role"
                            name="role"
                            required>

                        <option value="" disabled selected>
                            Select Role
                        </option>

                        <option value="user">
                            User
                        </option>

                        <option value="admin">
                            Admin
                        </option>

                    </select>

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


                <!-- First Name -->

                <div class="form-group">

                    <label for="f_name">
                        First Name
                    </label>

                    <input type="text"
                           id="f_name"
                           name="first_name"
                           placeholder="Enter first name"
                           required>

                </div>


                <!-- Middle Name -->

                <div class="form-group">

                    <label for="m_name">
                        Middle Name
                    </label>

                    <input type="text"
                           id="m_name"
                           name="middle_name"
                           placeholder="Enter middle name"
                           required>

                </div>


                <!-- Last Name -->

                <div class="form-group">

                    <label for="l_name">
                        Last Name
                    </label>

                    <input type="text"
                           id="l_name"
                           name="last_name"
                           placeholder="Enter last name"
                           required>

                </div>


                <!-- Date of Birth -->

                <div class="form-group">

                    <label for="dob">
                        Date of Birth
                    </label>

                    <input type="text"
                           id="dob"
                           name="dob"
                           placeholder="Select date of birth"
                           readonly
                           required>

                </div>


                <!-- Address -->

                <div class="form-group full-width">

                    <label for="address">
                        Address
                    </label>

                    <input type="text"
                           id="address"
                           name="address"
                           placeholder="Enter address"
                           required>

                </div>


                <!-- Email -->

                <div class="form-group">

                    <label for="email_id">
                        Email Address
                    </label>

                    <input type="email"
                           id="email_id"
                           name="email_id"
                           placeholder="Enter email address"
                           required>

                </div>


                <!-- Mobile -->

                <div class="form-group">

                    <label for="mob_number">
                        Mobile Number
                    </label>

                    <input type="tel"
                           id="mob_number"
                           name="mobile_number"
                           placeholder="Enter mobile number"
                           maxlength="10"
                           required>

                </div>

            </div>


            <!-- Buttons -->

            <div class="button-container">

                <button type="button"
                        class="submit-btn"
                        onclick="submitForm()">

                    Register

                </button>

                <button type="button"
                        class="cancel-btn"
                        onclick="history.back()">

                    Cancel

                </button>

            </div>

        </form>

    </div>

</div>


<script>

$(document).ready(function () {

    /* Date Picker */

    $("#dob").datepicker({

        changeMonth: true,
        changeYear: true,
        yearRange: "-100:+0",
        dateFormat: "mm/dd/yy",
        maxDate: new Date()

    });


    /* Name validation */

    $("#f_name, #m_name, #l_name").keypress(function (event) {

        var regex = new RegExp(/[a-zA-Z\s-]/);

        var key = String.fromCharCode(
            !event.charCode ? event.which : event.charCode
        );

        if (!regex.test(key)) {

            event.preventDefault();

            return false;
        }

    });


    /* Mobile number validation */

    $("#mob_number").keypress(function (event) {

        var key = String.fromCharCode(
            !event.charCode ? event.which : event.charCode
        );

        if (!/[0-9]/.test(key)) {

            event.preventDefault();

            return false;
        }

    });


    /* Reset border when user enters data */

    $("#role, #f_name, #m_name, #l_name, #password, #dob, #address, #email_id, #mob_number")
        .on("input change", function () {

            $(this).css("border-color", "#d5dce5");

        });

});


function validateForm() {

    var isValid = true;

    var fields = {

        role: $("#role"),
        fName: $("#f_name"),
        mName: $("#m_name"),
        lName: $("#l_name"),
        password: $("#password"),
        dob: $("#dob"),
        address: $("#address"),
        email: $("#email_id"),
        mobNumber: $("#mob_number")

    };


    $.each(fields, function (key, field) {

        if (field.val() === "" || field.val() === null) {

            field.css("border-color", "#e74c3c");

            isValid = false;

        } else {

            field.css("border-color", "#d5dce5");

        }

    });


    return isValid;
}


function submitForm() {

    if (validateForm()) {

        $("#registrationForm").submit();

    }

}

</script>

</body>
</html>
