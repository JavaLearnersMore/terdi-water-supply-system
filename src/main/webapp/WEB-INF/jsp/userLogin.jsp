<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Terdi Water Supply Scheme - User Profile</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/CSS/userLogin.css">

</head>

<body>

<!-- HEADER -->

<header class="top-header">

    <div class="header-left">

        <img src="${pageContext.request.contextPath}/image/water_img.jpeg"
             class="water-logo"
             alt="Water Supply">

        <div>
            <h1>Terdi Water Supply Scheme</h1>
            <p>Terdi Mandangad</p>
        </div>

    </div>

    <div class="header-right">

        <a href="${pageContext.request.contextPath}/myProfile"
           class="header-profile">

            <i class="fas fa-user-circle"></i>

            <span>My Profile</span>

        </a>

        <a href="${pageContext.request.contextPath}/home"
           class="logout-btn">

            <i class="fas fa-sign-out-alt"></i>

            Logout

        </a>

    </div>

</header>


<!-- NAVIGATION -->

<nav class="navigation">

    <a href="${pageContext.request.contextPath}/userLogin"
       class="active">

        <i class="fas fa-home"></i>

        Home

    </a>

    <a href="${pageContext.request.contextPath}/myProfile">

        <i class="fas fa-user"></i>

        My Profile

    </a>

    <a href="${pageContext.request.contextPath}/all_member">

        <i class="fas fa-users"></i>

        Members

    </a>

    <a href="notice.jsp">

        <i class="fas fa-bell"></i>

        Notices

    </a>

    <a href="pay.jsp">

        <i class="fas fa-credit-card"></i>

        Payment

    </a>

    <a href="villageview.jsp">

        <i class="fas fa-map-marker-alt"></i>

        Village

    </a>

</nav>


<!-- MAIN -->

<main class="page-container">


    <!-- PROFILE HEADER -->

    <section class="profile-banner">

        <div class="profile-photo">

            <i class="fas fa-user"></i>

        </div>

        <div class="profile-heading">

            <h2>Welcome, User</h2>

            <p>
                Terdi Water Supply Scheme Member
            </p>

            <span class="member-status">

                <i class="fas fa-circle"></i>

                Active Member

            </span>

        </div>

        <div class="water-drop">

            <i class="fas fa-droplet"></i>

        </div>

    </section>


    <!-- CONTENT GRID -->

    <div class="content-grid">


        <!-- LEFT SIDE -->

        <div class="left-column">


            <!-- PERSONAL INFORMATION -->

            <section class="card">

                <div class="card-header">

                    <div>

                        <i class="fas fa-user"></i>

                        <span>Personal Information</span>

                    </div>

                    <a href="${pageContext.request.contextPath}/myProfile">

                        Edit Profile

                    </a>

                </div>


                <div class="profile-details">

                    <div class="detail-item">

                        <span class="detail-label">
                            Full Name
                        </span>

                        <strong>
                            User Name
                        </strong>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Email Address
                        </span>

                        <strong>
                            user@gmail.com
                        </strong>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Mobile Number
                        </span>

                        <strong>
                            +91 XXXXX XXXXX
                        </strong>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Role
                        </span>

                        <strong>
                            Citizen / User
                        </strong>

                    </div>


                    <div class="detail-item full-width">

                        <span class="detail-label">
                            Address
                        </span>

                        <strong>
                            Terdi, Mandangad, Maharashtra
                        </strong>

                    </div>

                </div>

            </section>


            <!-- WATER CONNECTION -->

            <section class="card">

                <div class="card-header">

                    <div>

                        <i class="fas fa-faucet-drip"></i>

                        <span>
                            Water Connection Details
                        </span>

                    </div>

                    <span class="connection-active">
                        Active
                    </span>

                </div>


                <div class="water-details">


                    <div class="water-box">

                        <div class="water-icon">

                            <i class="fas fa-droplet"></i>

                        </div>

                        <div>

                            <span>
                                Connection ID
                            </span>

                            <strong>
                                TERDI-00001
                            </strong>

                        </div>

                    </div>


                    <div class="water-box">

                        <div class="water-icon">

                            <i class="fas fa-house"></i>

                        </div>

                        <div>

                            <span>
                                Connection Type
                            </span>

                            <strong>
                                Household
                            </strong>

                        </div>

                    </div>


                    <div class="water-box">

                        <div class="water-icon">

                            <i class="fas fa-calendar-check"></i>

                        </div>

                        <div>

                            <span>
                                Connection Status
                            </span>

                            <strong>
                                Active
                            </strong>

                        </div>

                    </div>


                    <div class="water-box">

                        <div class="water-icon">

                            <i class="fas fa-indian-rupee-sign"></i>

                        </div>

                        <div>

                            <span>
                                Current Bill
                            </span>

                            <strong>
                                ₹ 250
                            </strong>

                        </div>

                    </div>


                </div>

            </section>


            <!-- PAYMENT STATUS -->

            <section class="payment-card">

                <div class="payment-icon">

                    <i class="fas fa-file-invoice-dollar"></i>

                </div>

                <div class="payment-content">

                    <span>
                        Water Bill
                    </span>

                    <h3>
                        ₹ 250
                    </h3>

                    <p>
                        Current water supply bill
                    </p>

                </div>

                <a href="pay.jsp"
                   class="pay-btn">

                    Pay Now

                    <i class="fas fa-arrow-right"></i>

                </a>

            </section>


        </div>


        <!-- RIGHT SIDE -->

        <div class="right-column">


            <!-- VILLAGE PHOTO -->

            <section class="village-card">

                <div class="village-image-container">

                    <img src="${pageContext.request.contextPath}/image/village-water.jpg"
                         alt="Terdi Village">

                    <div class="image-overlay">

                        <div>

                            <i class="fas fa-location-dot"></i>

                            <span>
                                Terdi Village
                            </span>

                        </div>

                    </div>

                </div>


                <div class="village-content">

                    <h3>

                        <i class="fas fa-tree"></i>

                        Our Village

                    </h3>

                    <p>

                        Welcome to Terdi, Mandangad.
                        This portal provides citizens with
                        easy access to water supply services,
                        payments, notices and village information.

                    </p>


                    <a href="villageview.jsp"
                       class="village-btn">

                        Explore Village

                        <i class="fas fa-arrow-right"></i>

                    </a>

                </div>

            </section>


            <!-- NOTICE -->

            <section class="notice-card">

                <div class="notice-title">

                    <i class="fas fa-bullhorn"></i>

                    <h3>
                        Important Notice
                    </h3>

                </div>

                <p>

                    Please ensure that your water bill
                    is paid on time to maintain uninterrupted
                    water supply services.

                </p>

                <a href="notice.jsp">

                    View All Notices

                    <i class="fas fa-arrow-right"></i>

                </a>

            </section>


            <!-- QUICK SERVICES -->

            <section class="quick-card">

                <h3>
                    Quick Services
                </h3>


                <a href="${pageContext.request.contextPath}/myProfile">

                    <span>

                        <i class="fas fa-user"></i>

                        My Profile

                    </span>

                    <i class="fas fa-chevron-right"></i>

                </a>


                <a href="pay.jsp">

                    <span>

                        <i class="fas fa-credit-card"></i>

                        Pay Water Bill

                    </span>

                    <i class="fas fa-chevron-right"></i>

                </a>


                <a href="notice.jsp">

                    <span>

                        <i class="fas fa-bell"></i>

                        Notices

                    </span>

                    <i class="fas fa-chevron-right"></i>

                </a>


                <a href="villageview.jsp">

                    <span>

                        <i class="fas fa-map-marked-alt"></i>

                        Village View

                    </span>

                    <i class="fas fa-chevron-right"></i>

                </a>

            </section>

        </div>

    </div>

</main>


<!-- FOOTER -->

<footer class="footer">

    <div>

        <i class="fas fa-droplet"></i>

        Terdi Water Supply Scheme

    </div>

    <span>
        © 2026 All Rights Reserved
    </span>

</footer>


</body>

</html>