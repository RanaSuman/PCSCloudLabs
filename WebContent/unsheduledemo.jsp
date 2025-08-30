<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dao.pojo.Demo"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unscheduled Demo Requests</title>

<!-- Font + Sidebar CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f4f6f9;
	margin: 0;
	padding: 0;
	color: #333;
}

/* Content wrapper (pushes content after sidebar) */
.content-wrapper {
	margin-left: 220px; /* matches sidebar width */
	padding: 30px;
}

h2 {
	text-align: center;
	color: #222;
	margin-bottom: 25px;
	font-size: 26px;
	font-weight: 700;
}

/* Filter + Schedule Forms */
.filters {
	display: flex;
	justify-content: center;
	align-items: flex-end;
	gap: 20px;
	flex-wrap: wrap;
	margin-bottom: 25px;
}

.filters form {
	background: white;
	padding: 12px 18px;
	border-radius: 8px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
	display: flex;
	align-items: center;
	gap: 12px;
}

.filters label {
	font-weight: 600;
	font-size: 14px;
}

select, input[type="date"], input[type="datetime-local"], input[type="number"]
	{
	padding: 8px 12px;
	font-size: 14px;
	border-radius: 6px;
	border: 1px solid #ccc;
	outline: none;
	transition: border 0.2s ease;
}

select:focus, input:focus {
	border-color: #007bff;
}

button {
	padding: 10px 16px;
	font-size: 14px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	transition: background 0.3s ease;
}

button:hover {
	background-color: #0056b3;
}

/* Table */
table {
	border-collapse: collapse;
	width: 100%;
	max-width: 1100px;
	margin: 30px auto;
	background-color: white;
	box-shadow: 0 3px 12px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
}

th, td {
	padding: 14px 16px;
	border-bottom: 1px solid #eee;
	text-align: center;
	font-size: 14px;
}

th {
	background-color: #007bff;
	color: white;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: 0.5px;
}

tr:hover {
	background-color: #f9fafc;
}

/* Pagination */
.pagination {
	text-align: center;
	margin: 30px 0;
}

.pagination a {
	text-decoration: none;
	color: #007bff;
	padding: 8px 12px;
	border: 1px solid #ddd;
	margin: 0 4px;
	border-radius: 4px;
	transition: all 0.3s ease;
	font-size: 14px;
}

.pagination a:hover {
	background-color: #007bff;
	color: white;
}

.pagination a.active {
	background-color: #007bff;
	color: white;
	font-weight: bold;
	border: none;
}

/* No results */
.no-data {
	text-align: center;
	color: #e74c3c;
	font-size: 16px;
	margin-top: 20px;
}
</style>

<script>
    function toggleSelectAll(source) {
      let checkboxes = document.querySelectorAll(".rowCheckbox");
      checkboxes.forEach(cb => cb.checked = source.checked);
    }
  </script>
</head>
<body>

	<!-- Sidebar -->
	<jsp:include page="adminSidebar.jsp" />
	<!-- Main Content -->
	<div class="content-wrapper">
		<h2>
			<i class="fa-regular fa-calendar-xmark"></i> Unscheduled Demo
			Requests
		</h2>

		<%
		String selectedCourse = (String) request.getAttribute("selectedCourse");
		String fromdate = request.getParameter("fromdate");
		String todate = request.getParameter("todate");
		%>

		<!-- Filters Row -->
		<div class="filters">
			<!-- Category Filter -->
			<form action="unscheduledDemosServlet" method="get">
				<label>Category</label> <select name="course">
					<option value=""
						<%=(selectedCourse == null || selectedCourse.isEmpty()) ? "selected" : ""%>>All</option>
					<option value="JFS"
						<%="JFS".equals(selectedCourse) ? "selected" : ""%>>Java
						Full Stack</option>
					<option value="MFS"
						<%="MFS".equals(selectedCourse) ? "selected" : ""%>>MERN
						/ MEAN Full Stack</option>
					<option value="Devops"
						<%="Devops".equals(selectedCourse) ? "selected" : ""%>>DevOps</option>
					<option value="PFS"
						<%="PFS".equals(selectedCourse) ? "selected" : ""%>>Python
						Full Stack</option>
					<option value="Salesforce"
						<%="Salesforce".equals(selectedCourse) ? "selected" : ""%>>Salesforce</option>
				</select>
				<button type="submit">Get</button>
			</form>

			<!-- Date Range Form -->
			<form action="unscheduledDemosServlet" method="get">
				<%
				if (selectedCourse != null) {
				%>
				<input type="hidden" name="course" value="<%=selectedCourse%>">
				<%
				}
				%>
				<label>From: <input type="date" name="fromdate"
					value="<%=(fromdate != null ? fromdate : "")%>" required /> to <input
					type="date" name="todate"
					value="<%=(todate != null ? todate : "")%>" />
				</label>
				<button type="submit">Get</button>
			</form>
		</div>

		<!-- Schedule Form -->
		<!-- Schedule Form -->
		<form method="POST" action="scheduleFromOldestServlet"
			style="text-align: center; margin-top: 20px;">
			<%
			if (selectedCourse != null) {
			%>
			<input type="hidden" name="course" value="<%=selectedCourse%>">
			<%
			}
			%>
			<label>For Date & Time: <input type="datetime-local"
				name="scheduleDateTime" required />
			</label>
			<button type="submit">Schedule</button>

			<!-- Demo Table -->
			<%
			List<Demo> demoList = (List<Demo>) request.getAttribute("demoList");
			if (demoList != null && !demoList.isEmpty()) {
			%>
			<table>
				<tr>
					<th><input type="checkbox" onclick="toggleSelectAll(this)">
						Select All</th>
					<th>Name</th>
					<th>Email</th>
					<th>Mobile</th>
					<th>Address</th>
					<th>Course</th>
					<th>Date</th>
					<th>Scheduled</th>
					<th>Schedule Date & Time</th>
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
	
					String scheduleDate = demo.getScheduleDate();
					String formattedSchedule = "";
					if (scheduleDate != null && !scheduleDate.isEmpty()) {
						try {
					SimpleDateFormat scheduleInput = new SimpleDateFormat("yyyy-MM-dd & HH:mm");
					SimpleDateFormat scheduleOutput = new SimpleDateFormat("hh:mm a");
					formattedSchedule = scheduleOutput.format(scheduleInput.parse(scheduleDate));
						} catch (Exception e) {
					formattedSchedule = scheduleDate;
						}
					}
				%>
				<tr>
					<td><input type="checkbox" name="selectedIds"
						value="<%=demo.getId()%>" class="rowCheckbox"></td>
					<td><%=demo.getName()%></td>
					<td><%=demo.getEmail()%></td>
					<td><%=demo.getNumber()%></td>
					<td><%=demo.getAddress()%></td>
					<td><%=demo.getCourse()%></td>
					<td><%=formattedDate%></td>
					<td><%=demo.getIsSchedule() == 1 ? "Yes" : "No"%></td>
					<td><%=formattedSchedule%></td>
				</tr>
				<%
				}
				%>
			</table>
			<%
			} else {
			%>
			<p class="no-data">No demo requests found.</p>
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
		<div class="pagination">
			<%
			for (int i = 1; i <= totalPages; i++) {
			%>
			<a href="unscheduledDemosServlet?page=<%=i%><%=courseParam%>"
				class="<%=i == currentPage ? "active" : ""%>"><%=i%></a>
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
