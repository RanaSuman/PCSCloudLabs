
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
        response.sendRedirect("admin.jsp"); // or your admin login page
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel | PCS Cloud Lab</title>
  <!--   <link rel="stylesheet" href="styles.css"> -->
  <style>
/* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    color: #333;
    padding: 20px;
}

/* Headings */
h2, h3 {
    text-align: center;
    margin-bottom: 20px;
}

/* Logout Link */
a {
    color: #007BFF;
    text-decoration: none;
}
a:hover {
	color:orangered;
    text-decoration: underline;
}

/* Table Styling */
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

/* Action Links in Table */
table a {
    margin-right: 5px;
}

/* Edit Form Styling */
form {
    width: 50%;
    margin: 20px auto;
    background: #fff;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
}
form label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}
form input[type="email"],
form input[type="text"],
form input[type="password"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
form button {
    padding: 10px 15px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
form button:hover {
    background-color: #0056b3;
}

/* Message Styling (if you display any messages) */
.message {
    text-align: center;
    margin-top: 20px;
    font-weight: bold;
}
</style>
  
    
</head>
<body>

    <h2>Welcome, Admin</h2>
    <!-- Logout Link -->
    <a href="index.jsp?logout=true">Logout</a> |
    <a href="admin.jsp">Back</a>

    <h3>User Details</h3>
    
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
                stmt = conn.prepareStatement("DELETE FROM Users WHERE ID = ?");
                stmt.setInt(1, userID);
                int deleted = stmt.executeUpdate();
                stmt.close();

                // Redirect back with a success/failure message
                response.sendRedirect("admin-users-panel.jsp?msg=" + (deleted > 0 ? "User Deleted Successfully" : "Deletion Failed"));
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

    <!-- Display All Users -->
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Password</th>
            <th>Created At</th>
            <th>Actions</th>
        </tr>

        <%
            // Reuse conn, fetch user list
            try {
                stmt = conn.prepareStatement("SELECT * FROM Users");
                rs = stmt.executeQuery();

                while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt("ID") %></td>
                <td><%= rs.getString("Email") %></td>
                <td><%= rs.getString("PhoneNumber") %></td>
                <td><%= rs.getString("Password") %></td>
                <td><%= rs.getString("Created_at") %></td>
                <td>
                    <a href="admin-users-panel.jsp?action=edit&userID=<%= rs.getInt("ID") %>">Edit</a> | 
                    <a href="admin-users-panel.jsp?action=delete&userID=<%= rs.getInt("ID") %>"
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

    <%
        // ========== Handle Edit Action ==========
        if ("edit".equalsIgnoreCase(action)) {
            int userID = Integer.parseInt(request.getParameter("userID"));

            try {
                stmt = conn.prepareStatement("SELECT * FROM Users WHERE ID = ?");
                stmt.setInt(1, userID);
                rs = stmt.executeQuery();

                String email = "", phone = "";
                if (rs.next()) {
                    email = rs.getString("Email");
                    phone = rs.getString("PhoneNumber");
                } else {
                    out.println("<p style='color:red;'>User not found!</p>");
                }
                rs.close();
                stmt.close();
    %>
            <!-- Edit Form -->
            <h3>Edit User</h3>
            <form action="admin-panel.jsp?action=update" method="post">
                <input type="hidden" name="userID" value="<%= userID %>">
                <label>Email:</label>
                <input type="email" name="email" value="<%= email %>" required>
                
                <label>Phone Number:</label>
                <input type="text" name="phone" value="<%= phone %>" required>

                <button type="submit">Update</button>
            </form>
    <%
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }

        // ========== Handle Update Action ==========
        if ("update".equalsIgnoreCase(action)) {
            int userID = Integer.parseInt(request.getParameter("userID"));
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");

            try {
                stmt = conn.prepareStatement("UPDATE Users SET Email = ?, PhoneNumber = ? WHERE ID = ?");
                stmt.setString(1, email);
                stmt.setString(2, phone);
                stmt.setInt(3, userID);

                int updated = stmt.executeUpdate();
                stmt.close();

                // Redirect with success/failure message
                response.sendRedirect("admin-panel.jsp?msg=" + (updated > 0 ? "User Updated Successfully" : "Update Failed"));
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    %>

</body>
</html>
