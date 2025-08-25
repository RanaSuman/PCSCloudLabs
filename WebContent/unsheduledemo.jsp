<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dao.pojo.Demo" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Demo Requests</title>
    
        <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }
    h2 {
        text-align: center;
        color: #333;
        margin-top: 30px;
    }
    form {
        text-align: center;
        margin-top: 20px;
    }
    label {
        font-size: 16px;
        margin-right: 10px;
    }
    select, input[type="date"], input[type="number"] {
        padding: 8px 12px;
        font-size: 15px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
    }
    button {
        padding: 8px 16px;
        font-size: 15px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-left: 10px;
    }
    button:hover {
        background-color: #0056b3;
    }
    table {
        border-collapse: collapse;
        width: 80%;
        margin: 40px 230px;
        background-color: white;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        border-radius: 8px;
        overflow: hidden;
    }
    th, td {
        padding: 14px 16px;
        border-bottom: 1px solid #eee;
        text-align: center;
        font-size: 15px;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    .pagination {
        text-align: center;
        margin-bottom: 40px;
    }
    .pagination a {
        text-decoration: none;
        color: #007bff;
        padding: 8px 12px;
        border: 1px solid #ccc;
        margin: 0 4px;
        border-radius: 4px;
    }
    .pagination a:hover {
        background-color: #007bff;
        color: white;
    }
    .pagination a.active {
        font-weight: bold;
        background-color: #007bff;
        color: white;
        border: none;
    }

    /* ✅ Form Row Fix */
    .form-row {
        display: flex;
        justify-content: center;  
        align-items: center;      
        gap: 15px;                
        margin-top: 20px;
        flex-wrap: wrap;          
    }
.form-row { 
display: flex;
justify-content: center; 
align-items: center; 
gap: 15px;
margin-top: 20px;
flex-wrap: wrap; }
.form-row form {
display: flex;
align-items: center;
gap: 10px; margin: 0; }
.form-row label {
font-size: 15px;
margin-right: 5px; }
    
</style>

    <script>
        function toggleSelectAll(source) {
            let checkboxes = document.querySelectorAll(".rowCheckbox");
            for (let checkbox of checkboxes) {
                checkbox.checked = source.checked;
            }
        }
    </script>
</head>
<body>
<jsp:include page="adminSidebar.jsp" />

<h2>Unscheduled Demo Requests</h2>

<%
String selectedCourse = (String) request.getAttribute("selectedCourse");
%>

<!-- Filter Form -->
<!-- Filter + Schedule Forms in One Row -->
<div class="form-row">
    <!-- Category Form -->
    <form action="unscheduledDemosServlet" method="get">
        <label>Category</label>
        <select name="course">
            <option value="">Select</option>
            <option value="JFS">Java Full Stack</option>
            <option value="MFS">MERN / MEAN Full Stack</option>
            <option value="Devops">Devops</option>
            <option value="PFS">Python Full Stack</option>
            <option value="Salesforce">Salesforce</option>
        </select>
        <button type="submit">Get</button>
    </form>

    <!-- Date Range Form -->
    <form action="unscheduledDemosServlet" method="get"class="date-form">>
        <% if(selectedCourse != null){ %>
            <input type="hidden" name="course" value="<%=  selectedCourse %>">
        <%} %>
        <label>From:
            <input type="date" name="fromdate" required />
            to
            <input type="date" name="todate" />
        </label>
        <button type="submit">Get</button>
    </form>
    </div>
<form method="POST" action="scheduleFromOldestServlet">
    <% if(selectedCourse != null){ %>
        <input type="hidden" name="course" value="<%=  selectedCourse %>">
    <%} %>
    
    <label>for Date:
        <input type="date" name="scheduleDate" required />
    </label>
    <button type="submit">Schedule</button>
    <br><br>

<%
    List<Demo> demoList = (List<Demo>) request.getAttribute("demoList");
    if (demoList != null && !demoList.isEmpty()) {
%>
    <table>
        <tr>
            <th><input type="checkbox" onclick="toggleSelectAll(this)"> Select All</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Address</th>
            <th>Course</th>
            <th>Date</th>
            <th>Schedule</th>
           <th>Schedule Date</th>
            
        </tr>
        <%
        SimpleDateFormat inputFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy");
        for (Demo demo : demoList) {
            String formattedDate = "";
            if (demo.getDate() != null && !demo.getDate().isEmpty()) {
                try {
                    Date parsedDate = inputFormat.parse(demo.getDate());
                    formattedDate = outputFormat.format(parsedDate);
                } catch (Exception e) {
                    formattedDate = demo.getDate();
                }
            }
        %>
        
        <tr>
            <td><input type="checkbox" name="selectedIds" value="<%= demo.getId() %>" class="rowCheckbox"></td>
            <td><%= demo.getName() %></td>
            <td><%= demo.getEmail() %></td>
            <td><%= demo.getNumber() %></td>
            <td><%= demo.getAddress() %></td>
            <td><%= demo.getCourse() %></td>
            <td><%= formattedDate %></td>
           
           <td><%= demo.getIsSchedule() == 1 ? "Yes" : "No" %></td>
           <td><%= demo.getScheduleDate() %></td>
            
        </tr>
        <%
            }
        %>
    </table>
<%
    } else {
%>
    <p style="text-align:center; color: red;">No demo requests found.</p>
<%
    }
%>
</form>

<!-- Pagination -->
<%
    Integer currentPage = (Integer) request.getAttribute("currentPage");
    Integer totalPages = (Integer) request.getAttribute("totalPages");
    String courseParam = (selectedCourse != null && !selectedCourse.isEmpty()) ? "&course=" + selectedCourse : "";
    if (currentPage != null && totalPages != null && totalPages > 1) {
%>
    <div style="text-align:center;">
        <%
            for (int i = 1; i <= totalPages; i++) {
        %>
            <a href="unscheduledDemosServlet?page=<%= i %><%= courseParam %>"
               style="margin: 0 5px; <%= i == currentPage ? "font-weight:bold;" : "" %>">
                <%= i %>
            </a>
        <%
            }
        %>
    </div>
<%
    }
%>

</body>
</html>