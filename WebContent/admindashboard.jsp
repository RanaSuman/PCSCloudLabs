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
</head>
<body>

<jsp:include page="adminSidebar.jsp" />

<div style="margin-left: 220px; padding: 20px;">
    <h1>Welcome, <%= adminName %> 👋</h1>
    <p>This is your admin dashboard.</p>
</div>

</body>
</html>
