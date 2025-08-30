<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dao.pojo.Demo"%>
<%@ page import="java.text.SimpleDateFormat"%>
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

/* Content wrapper (pushes content after sidebar) */
.content-wrapper {
	margin-left: 220px; /* matches sidebar width */

}

h2 {
	text-align: center;
	color: #333;
	margin: 30px 0;
}

table {
	border-collapse: collapse;
	width: 90%;
	max-width: 1200px;
	margin: 30px auto;
	background-color: #fff;
	box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
}

th, td {
	padding: 14px 16px;
	text-align: center;
	font-size: 15px;
	border-bottom: 1px solid #eee;
}

th {
	background-color: #007bff;
	color: #fff;
	font-weight: 600;
}

tr:hover {
	background-color: #f1f1f1;
}

.pagination {
	text-align: center;
	margin: 30px 0;
}

.pagination a {
	text-decoration: none;
	color: #007bff;
	padding: 8px 14px;
	border: 1px solid #ccc;
	margin: 0 4px;
	border-radius: 4px;
	transition: all 0.3s ease;
}

.pagination a:hover {
	background-color: #007bff;
	color: #fff;
}

.pagination a.active {
	font-weight: bold;
	background-color: #007bff;
	color: #fff;
	border: none;
}

.no-data {
	text-align: center;
	color: red;
	font-size: 16px;
	margin-top: 40px;
}

@media ( max-width : 768px) {
	table, th, td {
		font-size: 13px;
	}
}
</style>
</head>
<body>
	<jsp:include page="adminSidebar.jsp" />
	<div class="content-wrapper">
		<h2>All Demo Requests</h2>

		<%
		List<Demo> demoList = (List<Demo>) request.getAttribute("demoList");
		if (demoList != null && !demoList.isEmpty()) {
		%>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Mobile</th>
					<th>Address</th>
					<th>Course</th>
					<th>Date</th>
					<th>Scheduled</th>
					<th>Schedule Date & Time</th>
				</tr>
			</thead>
			<tbody>
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
					<td><%=demo.getName()%></td>
					<td><%=demo.getEmail()%></td>
					<td><%=demo.getNumber()%></td>
					<td><%=demo.getAddress()%></td>
					<td><%=demo.getCourse()%></td>
					<td><%=formattedDate%></td>
					<td><%=demo.getIsSchedule() == 1 ? "Yes" : "No"%></td>
					<td><%=demo.getScheduleDate() != null ? demo.getScheduleDate() : "-"%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%
		} else {
		%>
		<p class="no-data">No demo requests found.</p>
		<%
		}
		%>

		<!-- Pagination -->
		<%
		Integer currentPage = (Integer) request.getAttribute("currentPage");
		Integer totalPages = (Integer) request.getAttribute("totalPages");
		if (currentPage != null && totalPages != null && totalPages > 1) {
		%>
		<div class="pagination">
			<%
			for (int i = 1; i <= totalPages; i++) {
			%>
			<a href="alldemosServlet?page=<%=i%>"
				class="<%=i == currentPage ? "active" : ""%>"> <%=i%>
			</a>
			<%
			}
			%>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>
