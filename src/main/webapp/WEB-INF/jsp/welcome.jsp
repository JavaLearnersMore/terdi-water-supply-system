<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>Terdi Water Supply Scheme</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/welcome.css">

</head>

<body>

    <!-- Header -->

    <header class="header">

        <div class="logo">
            Terdi Water Supply Scheme
        </div>

        <nav>

            <a href="${pageContext.request.contextPath}/login">
                Login
            </a>

            <a href="${pageContext.request.contextPath}/register"
               class="register-btn">
                Registration
            </a>

        </nav>

    </header>


    <!-- Main Section -->

    <section class="hero">

        <div class="hero-content">

            <h1>
                Welcome to Terdi Water Supply Scheme
            </h1>

            <p>
                Manage your water supply services easily,
                securely and efficiently.
            </p>

            <div class="buttons">

                <a href="${pageContext.request.contextPath}/login"
                   class="btn login-btn">
                    Login
                </a>

                <a href="${pageContext.request.contextPath}/register"
                   class="btn registration-btn">
                    Register Now
                </a>

            </div>

        </div>

    </section>


    <!-- About Section -->

    <section class="about">

        <h2>About Us</h2>

        <p>
            Terdi Water Supply Scheme provides a digital platform
            for managing water supply services. Users can register,
            login and access the services provided by the water
            supply department.
        </p>

    </section>


    <!-- Footer -->

    <footer>

        <p>
            © 2026 Terdi Water Supply Scheme
        </p>

    </footer>

</body>
</html>
