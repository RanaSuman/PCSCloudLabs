<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.LoginBean"%>

<%
	String adminLoginMessage = (String) session.getAttribute("adminLoginMessage");
	String adminLoginSuccessMessage = (String) session.getAttribute("adminLoginSuccessMessage");
	String adminLoginMessageColor = (String) session.getAttribute("adminLoginMessageColor");
	
	if (adminLoginSuccessMessage != null) {
    	response.setHeader("Refresh", "1; URL=admindashboard.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<title>Admin Login</title>

<style>
body {
	font-family: "Open Sans", sans-serif;
	margin: 0;
	padding: 0;
	background-color: lightblue;
}

/* Container */
.container {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	width: 400px;
	padding: 20px 30px;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
	z-index: 1001;
	text-align: center;
}

/* Close Button */
.container .close-btn {
	position: absolute;
	top: 20px;
	right: 20px;
	background: none;
	border: none;
	font-size: 18px;
	cursor: pointer;
}

/* Form Styles */
.container h3 {
	font-size: 18px;
	margin-bottom: 15px;
}

.container input {
	width: 95%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.container label {
	display: block;
	text-align: left;
	margin-top: 10px;
	font-weight: bold;
}

.container .submit-btn {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	background-color: #6a1b9a;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background 0.3s ease;
}

.container .submit-btn:hover {
	background-color: #4a148c;
}

.popup-success-text {
	font-weight: bold;
    background: #fff;
    border-left: 5px solid <%=adminLoginMessageColor != null ? adminLoginMessageColor : "red"%>;
    border-right: 5px solid <%=adminLoginMessageColor != null ? adminLoginMessageColor : "red"%>;
    padding: 12px 20px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    color: <%=adminLoginMessageColor != null ? adminLoginMessageColor : "red"%>;
	max-height: 0;
    opacity: 0;
    margin: 0;
    overflow: hidden;
	transform: scale(0.9) translateY(-10px);
	animation: popupSucessAnim 4s ease-in-out forwards;
}

/* Active state when message exists */
.popup-success-text.show {
    max-height: 200px;   /* enough to fit text */
    opacity: 1;
    margin: 10px 0;
}

@keyframes popupSucessAnim {
	0%   { opacity: 0; transform: scale(0.9) translateY(-10px); }
	15%  { opacity: 1; transform: scale(1) translateY(0); }
	85%  { opacity: 1; transform: scale(1) translateY(0); }
	100% { opacity: 0; transform: scale(0.9) translateY(-10px); }
}

/* Message popup */
.popup-text {
	font-weight: bold;
    background: #fff;
    border-left: 5px solid <%=adminLoginMessageColor != null ? adminLoginMessageColor : "red"%>;
    border-right: 5px solid <%=adminLoginMessageColor != null ? adminLoginMessageColor : "red"%>;
    padding: 12px 20px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    color: <%=adminLoginMessageColor != null ? adminLoginMessageColor : "red"%>;
	max-height: 0;
    opacity: 0;
    margin: 0;
    overflow: hidden;
	transform: scale(0.9) translateY(-10px);
	animation: popupAnim 4s ease forwards;
}

/* Active state when message exists */
.popup-text.show {
    max-height: 200px;   /* enough to fit text */
    opacity: 1;
    margin: 10px 0;
}

@keyframes popupAnim {
	0%   { opacity: 0; transform: scale(0.9) translateY(-10px); }
	15%  { opacity: 1; transform: scale(1) translateY(0); }
	85%  { opacity: 1; transform: scale(1) translateY(0); }
	100% { opacity: 1; transform: scale(1) translateY(0); }
}

</style>
</head>

<body>
	<div class="container">
		<button class="close-btn" onclick="goBack()">x</button>

		<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
			style="width: 150px;">
		<h3>Admin Login</h3>
		<form action="adminloginservlet" method="post">
			<label>Email:</label>
			<input type="email" name="email" placeholder="Enter Your Email" required>

			<label>Password:</label>
			<div style="position: relative;">
				<input type="password" id="password" name="password" placeholder="Enter password" required>
				<i class="fas fa-eye toggle-password" onclick="togglePassword()"
				   style="position: absolute; top: 30%; right: 10px; cursor: pointer;"></i>
			</div>
			
			<% if (adminLoginSuccessMessage != null) { %>
				<p class="popup-success-text show"><%= adminLoginSuccessMessage %></p>
				<%
					session.removeAttribute("adminLoginSuccessMessage");
					session.removeAttribute("adminLoginMessageColor");
				%>
			<% } %>
			
			<% if (adminLoginMessage != null) { %>
				<p class="popup-text show"><%= adminLoginMessage %></p>
				<%
					session.removeAttribute("adminLoginMessage");
					session.removeAttribute("adminLoginMessageColor");
				%>
			<% } %>

			<button class="submit-btn" type="submit">LOGIN</button>
		</form>
	</div>

	<script>
	function togglePassword() {
	    const passwordInput = document.getElementById("password");
	    const icon = document.querySelector(".toggle-password");
	    if (passwordInput.type === "password") {
	        passwordInput.type = "text";
	        icon.classList.remove("fa-eye");
	        icon.classList.add("fa-eye-slash");
	    } else {
	        passwordInput.type = "password";
	        icon.classList.remove("fa-eye-slash");
	        icon.classList.add("fa-eye");
	    }
	}
	function goBack() {
	    window.history.back();
	}
	</script>
</body>
</html>
