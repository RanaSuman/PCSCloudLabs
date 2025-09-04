<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String adminEmail = (String)session.getAttribute("AdminEmail");
   if(adminEmail == null){
       response.sendRedirect("admin.jsp");
       return;
   }
   String adminName = (String) session.getAttribute("AdminName");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
        }

        /* Main content area */
        .main-content {
            margin-left: 220px; /* Space for sidebar */
            padding: 30px;
        }

        .welcome-card {
            background-color: #007bff;
            color: #fff;
            padding: 25px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            margin-bottom: 30px;
        }

        .welcome-card h1 {
            margin: 0 0 10px 0;
            font-size: 28px;
        }

        .welcome-card p {
            font-size: 16px;
        }

        /* Stats section */
        .stats {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .stat-card {
            flex: 1 1 250px;
            background-color: #fff;
            padding: 20px 25px;
            border-radius: 10px;
            box-shadow: 0 2px 12px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .stat-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.15);
        }

        .stat-card i {
            font-size: 30px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .stat-card h2 {
            margin: 10px 0 5px 0;
            font-size: 24px;
        }

        .stat-card p {
            color: #555;
            font-size: 14px;
            margin: 0;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .main-content {
                margin-left: 0;
                padding: 20px;
            }
            .stats {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<jsp:include page="adminSidebar.jsp" />

<div class="main-content">
    <!-- Welcome Card -->
    <div class="welcome-card">
        <h1>Welcome, <%= adminName %> 👋</h1>
        <p>This is your admin dashboard. Here you can manage demos, view reports, and monitor your platform.</p>
    </div>

    <!-- Stats Section -->
    <div class="stats">
        <div class="stat-card">
            <i class="fas fa-users"></i>
            <h2>120</h2>
            <p>Total Users</p>
        </div>
        <div class="stat-card">
            <i class="fas fa-calendar-alt"></i>
            <h2>15</h2>
            <p>Unscheduled Demos</p>
        </div>
        <div class="stat-card">
            <i class="fas fa-check-circle"></i>
            <h2>75</h2>
            <p>Scheduled Demos</p>
        </div>
        
    </div>
</div>

</body>
</html>
