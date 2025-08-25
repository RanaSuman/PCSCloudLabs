<%@page import="java.sql.SQLException"%>
<%@page import="database.PcsDatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Check if admin is logged in
    String adminEmail = (String) session.getAttribute("adminEmail");
    if (adminEmail == null) {
        response.sendRedirect("admin.jsp"); // Redirect to admin login if not logged in
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel | Contact Data | PCS Cloud Lab</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            color: #333;
            padding: 20px;
        }

        h2, h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        a {
            color: #007BFF;
            text-decoration: none;
        }

        a:hover {
        	color:orangered;
            text-decoration: underline;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .message {
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h2>Welcome, Admin</h2>
    <a href="index.jsp?logout=true">Logout</a> |
    <a href="admin.jsp">Back</a>

    <h3>Contact Us Form Submissions</h3>
    
    <%
        // Database objects
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        // Get the action type
        String action = request.getParameter("action");

        try {
            // 1) Open a database connection
            conn = PcsDatabaseConnection.getConnection();

            // ========== Handle Delete Action ==========
            if ("delete".equalsIgnoreCase(action)) {
                int userID = Integer.parseInt(request.getParameter("userID"));
                stmt = conn.prepareStatement("DELETE FROM contact_form WHERE ID = ?");
                stmt.setInt(1, userID);
                int deleted = stmt.executeUpdate();
                stmt.close();

                // Redirect back with a success/failure message
                response.sendRedirect("admin-contact-panel.jsp?msg=" + (deleted > 0 ? "User Deleted Successfully" : "Deletion Failed"));
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close any resources if they were used
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Message</th>
            <th>Submitted At</th>
            <th>Actions</th>
        </tr>

        <%

            try {
                // Connect to database and fetch contact form data
                conn = PcsDatabaseConnection.getConnection();
                stmt = conn.prepareStatement("SELECT id, name, email, mobile, message, submitted_at FROM contact_form");
                rs = stmt.executeQuery();

                while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("mobile") %></td>
                <td><%= rs.getString("message") %></td>
                <td><%= rs.getTimestamp("submitted_at") %></td>
                <td>
                	<a href="admin-contact-panel.jsp?action=delete&userID=<%= rs.getInt("ID") %>"
                       onclick="return confirm('Are you sure?');">Delete</a>
                </td>
            </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        %>
    </table>
</body>
</html>
