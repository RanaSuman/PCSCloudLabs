<div class="admin-sidebar">
    <h3>Admin Panel</h3>
    <ul>
        <li><a href="admindashboard.jsp">Dashboard</a></li>
        <li><a href="unscheduledDemosServlet">UnScheduled Demos</a></li>
        <li><a href="alldemosServlet">All Demos</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>

<style>
    .admin-sidebar {
        width: 150px;
        height: 100vh;
        background-color: #007bff;
        color: white;
        padding-top: 30px;
        position: fixed;
        top: 0;
        left: 0;
        box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
    }

    .admin-sidebar h3 {
        text-align: center;
        margin-bottom: 30px;
        font-size: 26px;
        font-weight: 800;
        letter-spacing: 1px;
    }

    .admin-sidebar ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .admin-sidebar li {
        padding: 20px 20px;
        transition: background-color 0.3s ease;
    }

    .admin-sidebar li:hover {
        background-color: #34495e;
    }

    .admin-sidebar a {
        color: white;
        text-decoration: none;
        display: block;
        font-size: 16px;
    }

    .admin-sidebar a:hover {
        text-decoration: none;
    }
</style>
