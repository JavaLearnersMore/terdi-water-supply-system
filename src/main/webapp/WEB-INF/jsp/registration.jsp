<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <!-- jQuery UI CSS -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- jQuery UI -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/home.css">
</head>
<body>

    <div class="container">
        <div class="card">
            <!-- Registration Form with Header -->
            <h2>Create Account</h2>

            <!-- Form Section -->
            <form id="registrationForm" action="registerUser" method="post" name="frm">
                <!-- Role Field -->
                <label for="role"><b>Role</b></label>
                <select id="role" name="role" required>
				    <option value="" disabled selected>Select a role</option>
				    <option value="user">User</option>
				    <option value="admin">Admin</option>
				</select><br>

                <!-- First Name Field -->
                <label for="f_name"><b>First Name</b></label>
                <input type="text" id="f_name" name="first_name" placeholder="First Name" required>
                
                <!-- Middle Name Field -->
                <label for="m_name"><b>Middle Name</b></label>
                <input type="text" id="m_name" name="middle_name" placeholder="Middle Name" required> 

                <!-- Last Name Field -->
                <label for="l_name"><b>Last Name</b></label>
                <input type="text" id="l_name" name="last_name" placeholder="Last Name" required>

                <!-- Password Field -->
                <label for="password"><b>Password</b></label>
                <input type="password" id="password" name="password" placeholder="Password" required>

                <!-- Date of Birth Field -->
                <label for="dob"><b>Date of Birth</b></label>
                <input type="text" id="dob" name="dob" placeholder="Date of Birth" required>

                <!-- Address Field -->
                <label for="address"><b>Address</b></label>
                <input type="text" id="address" name="address" placeholder="Address" required>

                <!-- Email Address Field -->
                <label for="email_id"><b>Email Address</b></label>
                <input type="text" id="email_id" name="email_id" placeholder="Email ID" required>

                <!-- Mobile Number Field -->
                <label for="mob_number"><b>Mobile Number</b></label>
                <input type="number" id="mob_number" name="mobile_number" placeholder="Mobile Number" required>

                <!-- Submit Button -->
                <button type="button" onclick="submitForm()">Submit</button>
            </form>

            <!-- Or Login Section -->
            <p style="text-align:center;">or</p>
            
              <div class="create-account-btn-container">
                <button onclick="history.back()">Cancel</button>
            </div>
              
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            // Prevent typing in the datepicker input
            $("#dob").on('keydown', function(e) {
                e.preventDefault();
            });
            
            // Ensure that the datepicker stays open when clicking inside the input field
            $("#dob").on('focus', function() {
                $(this).blur();
            });

            // Initialize datepicker
            $("#dob").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "-100:+0",
                dateFormat: "mm/dd/yy",
                maxDate: new Date()
            });

            // Apply regex validation to both First Name and Last Name fields
            $("#f_name,#m_name, #l_name").keypress(function(event) {
                var regex = new RegExp(/[a-zA-Z\s-]/);
                var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
                if (!regex.test(key)) {
                    event.preventDefault(); // Prevent invalid characters
                    return false;
                }
            });
        });
        
        // Reset border color when user interacts with the field
        $("#role, #f_name, #m_name, #l_name, #password, #dob, #address, #email_id, #mob_number").on('input', function() {
            $(this).css("border-color", "#3498db");
        });

        function validateForm() {
        	debugger
            var isValid = true; // Track overall form validity

            // Fields to validate
            var fields = {
                fName: $("#f_name"),
                mName: $("#m_name"),
                lName: $("#l_name"),
                password: $("#password"),
                dob: $("#dob"),
                address: $("#address"),
                email: $("#email_id"),
                mobNumber: $("#mob_number")
            };
            
            // Check role field specifically
            if (($("#role").val() === "") || ($("#role").val() === null)) {
                $("#role").css("border-color", "red");
                isValid = false;
            } else {
                $("#role").css("border-color", "#3498db");
            }

            // Iterate over each field to check if it's empty
            $.each(fields, function (key, field) {
                if (field.val() === "" || field.val() === null) {
                    // If the field is empty, show an alert and make the border red
                    field.css("border-color", "red");
                    isValid = false; // Form is not valid
                    return false; // Break loop once the first invalid field is found
                } else {
                    // If the field is filled, reset the border color
                    field.css("border-color", "#3498db");
                }
            });

            return isValid; // Only submit if all fields are valid
        }

        function submitForm() {
            if (validateForm()) {
                // Submit the form if validation passes
                $("#registrationForm").submit();
            }
        }
    </script>

</body>
</html>
