<!DOCTYPE html>
<html lang="en">
<%@include file="base.jsp" %>
<%@ page import="com.dao.pojo.User" %>
<% 
   String email = (String)session.getAttribute("userEmail");
   String userNumber= (String)session.getAttribute("userNumber");
   
   User user = (User)session.getAttribute("LoginUser");

   if(user == null){
	   response.sendRedirect("index,jsp");
	   return;
   }
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"/>

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        footer{
        width: 100%;
        }
        
        .profille-container {
            display: flex;
            flex-wrap: wrap;
            max-width: 1200px;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
            justify-content: center;
        }
        
        .sidebar {
            width: 250px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .sidebar a {
            display: block;
            color: #2c3e50;
            text-decoration: none;
            margin: 10px 0;
            font-size: 16px;
        }

        .sidebar a i {
            margin-right: 10px;
        }
        
        .main-content {
            flex: 1;
            max-width: 800px;
            margin-left: 20px;
            box-sizing: border-box;
        }
        
        /* Card Styling */
        .card {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .card-header h2 {
            margin: 0;
            font-size: 18px;
            color: #2c3e50;
        }

        .card-header i {
            color: #2c3e50;
            cursor: pointer;
        }
        
        /* Profile Info */
        .profile-info {
            text-align: center;
        }

        .profile-info img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
        }

        .profile-info h3 {
            margin: 10px 0 5px;
            font-size: 20px;
            color: #2c3e50;
        }

        .profile-info p {
            margin: 5px 0;
            color: #7f8c8d;
        }
        
        /* Details Section */
        .details {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .details div {
            flex: 1;
            min-width: 250px;
        }

        .details p {
            margin: 10px 10px;
            color: #7f8c8d;
        }

        .details p span {
            font-weight: 700;
            color: #2c3e50;
        }
        
        /* Responsive Design */
        @media (max-width: 1024px) {
            .profille-container {
                flex-direction: column;
                align-items: center;
            }

            .sidebar {
                width: 100%;
                text-align: center;
                padding: 15px;
            }

            .main-content {
                margin-left: -20px;
                width: 100%;
            }
        }
        
        @media (max-width: 768px) {
            .profille-container {
                flex-direction: column;
                align-items: flex-start;
                padding: 10px;
            }

            .details {
                flex-direction: column;
                align-items: center;
            }

            .details div {
                width: 100%;
            }

            .sidebar {
                width: 100%;
                text-align: center;
                padding: 15px;
            }

            .main-content {
                width: 100%;
                padding: 10px;
            }
        }
        
        @media (max-width: 480px) {
            .profille-container {
                padding: 10px;
                justify-content: center;
                text-align: center;
            }

            .sidebar {
                width: 100%;
                padding: 10px;
            }

            .main-content {
                width: 100%;
                padding: 10px;
            }

            .card {
                padding: 15px;
            }
        }
    </style>
</head>

<body>

<%@include file="header.jsp"%>
	<div class="page-nav no-margin row">
		<div class="container"></div>
	</div>
    <!-- <div class="navbar">
        <a href="index.jsp">Home</a> &gt;
        <a href="#">My Profile</a>
    </div> -->
    

    <div class="profille-container">
        <div class="sidebar">
            <a href="#"><i class="fas fa-user"></i> My Profile</a>
            <a href="#">Personalize</a>
            <a href="#">Topics of Interest</a>
            <a href="#">Career Services</a>
            <a href="#">Change Password</a>
            <a href="#"><i class="fas fa-shopping-cart"></i> My Orders and Invoices</a>
            <a href="#"><i class="fas fa-wallet"></i> My Wallet</a>
        </div>

        <div class="main-content">
            <div class="card">
                <div class="card-header">
                    <h2>User Details</h2>
                    <i class="fas fa-edit"></i>
                </div>
                <div class="profile-info">
                    <img src="https://placehold.co/100x100" alt="Profile Picture">
                    <h3><%= user.getName() %></h3>
                    <p ><%= email %></p>
                    <p>+91 <%= userNumber %></p>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>User Details</h2>
                    <i class="fas fa-edit"></i>
                </div>
                <div class="details">
                    <div>
                        <p><span>Name:</span> <%= user.getName() %></p>
                        <p><span>Mobile:</span> +91-<%= userNumber %></p>
                        <p><span>Contact Email:</span> <%= email %></p>
                    </div>
                    <div>
                        <p><span>Current TimeZone:</span> India-IST-Asia/Kolkata</p>
                        <p><span>Preferred time to contact:</span></p>
                        <p><span>Timezone:</span> India-IST-Asia/Kolkata</p>
                        <p><span>Weekdays:</span> Not Available</p>
                        <p><span>Weekends:</span> Not Available</p>
                    </div>
                </div>
            </div>

            <%-- <div class="card">
                <div class="card-header">
                    <h2>Learning Goals</h2>
                    <i class="fas fa-edit"></i>
                </div>
                <div class="details">
                    <div>
                        <p><span>Reminder Buddy</span></p>
                        <p><span>Partner's Name:</span> Not Available</p>
                        <p><span>Partner's Mobile:</span> Not Available</p>
                        <p><span>Partner's Email:</span> Not Available</p>
                    </div>
                </div>
            </div>

            <div class="card">
                            <div class="card-header">
                                <h2> Study Plan - Reminders are on</h2>
                                <i class="fas fa-edit"></i>
                            </div>
                            <div class="details">
                                <div>
                                    <p><span>Reminder Buddy</span></p>
                                    <p> Not Available</p>

                                </div>
                            </div>
            </div>

            <div class="card">
                                        <div class="card-header">
                                            <h2> Help on Course Pre-requisites </h2>
                                            <i class="fas fa-edit"></i>
                                        </div>
                                        <div class="details">
                                            <div>
                                                <p> Not Available</p>
                                            </div>
                                        </div>
            </div>

 --%>

        </div>
    </div>

<%@include file="footer.jsp" %>
</body>

<%@include file="base-jquery.jsp" %>
</html>
<!-- 
body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        footer{
        width: 100%;
        }

       
        /* Main Container */
        .profile-container {
            display: flex;
            flex-wrap: wrap;
            max-width: 1200px;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
            justify-content: center;
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .sidebar a {
            display: block;
            color: #2c3e50;
            text-decoration: none;
            margin: 10px 0;
            font-size: 16px;
        }

        .sidebar a i {
            margin-right: 10px;
        }

        /* Main Content */
        .main-content {
            flex: 1;
            max-width: 800px;
            margin-left: 20px;
            box-sizing: border-box;
        }

        /* Card Styling */
        .card {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .card-header h2 {
            margin: 0;
            font-size: 18px;
            color: #2c3e50;
        }

        .card-header i {
            color: #2c3e50;
            cursor: pointer;
        }

        /* Profile Info */
        .profile-info {
            text-align: center;
        }

        .profile-info img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
        }

        .profile-info h3 {
            margin: 10px 0 5px;
            font-size: 20px;
            color: #2c3e50;
        }

        .profile-info p {
            margin: 5px 0;
            color: #7f8c8d;
        }

        /* Details Section */
        .details {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .details div {
            flex: 1;
            min-width: 250px;
        }

        .details p {
            margin: 5px 0;
            color: #7f8c8d;
        }

        .details p span {
            font-weight: 500;
            color: #2c3e50;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .container {
                flex-direction: column;
                align-items: center;
            }

            .sidebar {
                width: 100%;
                text-align: center;
                padding: 15px;
            }

            .main-content {
                margin-left: -20px;
                width: 100%;
            }
        }

        @media (max-width: 768px) {
            .navbar .nav-container {
                flex-direction: column;
                align-items: flex-start;
                padding: 10px;
            }

            .details {
                flex-direction: column;
                align-items: center;
            }

            .details div {
                width: 100%;
            }

            .sidebar {
                width: 100%;
                text-align: center;
                padding: 15px;
            }

            .main-content {
                width: 100%;
                padding: 10px;
            }
        }

        @media (max-width: 480px) {
            .navbar .nav-container {
                padding: 10px;
                justify-content: center;
                text-align: center;
            }

            .navbar a {
                display: block;
                margin: 5px 12px;
            }

            .sidebar {
                width: 100%;
                padding: 10px;
            }

            .main-content {
                width: 100%;
                padding: 10px;
            }

            .card {
                padding: 15px;
            }
        }

 -->