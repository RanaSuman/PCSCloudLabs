<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.LoginBean"%>

<%
    String message = (String) session.getAttribute("signupMessage");
    String messageColor = (String) session.getAttribute("messageColor");

    String loginSuccess = (String) session.getAttribute("loginSuccess"); 
    String loginMessage = (String) session.getAttribute("loginMessage");
    String loginMessageColor = (String) session.getAttribute("loginMessageColor");

    String email = (String) session.getAttribute("userEmail");
    if (loginSuccess != null) {
    	response.setHeader("Refresh", "4; URL=index.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<title>Book for Demo</title>

<style>
body {
	font-family: "Open Sans", sans-serif;
	margin: 0;
	padding: 0;
	background-color: lightblue;
}

/* Popup Overlay Styles */
.popup-overlay {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 1000;
}

/* Changed from .popup-content to .container */
.container {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	width: 350px;
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

.container label {
    display: block;
    text-align: left;
    margin-top: 10px;
    font-weight: bold;
}

/* Form Styles */
.container h3 {
	margin-bottom: 15px;
	font-size: 18px;
}

.container input,
.container select {
	width: 95%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.container .submit-btn {
	width: 100%;
	padding: 10px;
	margin-top:10px;
	background-color: #6a1b9a;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.container .submit-btn:hover {
	background-color: #4a148c;
}

.container p {
	margin-top: 10px;
	font-size: 14px;
	color: #555;
}


@media screen and (max-width: 575px) {
	.container {
		padding: 5px 15px;
	}
	.profile-btn {
		margin-top: -50px;
	}
}

p {
	font-size: 12px;
}

a {
	color: #007bff;
}

.ex_mar {
	margin-top: 40px;
}

.justify-content {
	justify-content: space-evenly;
}


.popup-success-text {
	font-weight: bold;
    background: #fff;
    border-left: 5px solid <%=loginMessageColor != null ? loginMessageColor : "red"%>;
    border-right: 5px solid <%=loginMessageColor != null ? loginMessageColor : "red"%>;
    padding: 12px 20px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    color: <%=loginMessageColor != null ? loginMessageColor : "red"%>;
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
    border-left: 5px solid <%=messageColor != null ? messageColor : "red"%>;
    border-right: 5px solid <%=messageColor != null ? messageColor : "red"%>;
    padding: 12px 20px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    color: <%=messageColor != null ? messageColor : "red"%>;
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

		<h3>Login to Your Account</h3>
		<form action="loginservlet" method="post">
			<label>Email:</label>
			<% if (email != null) { %>
				<input type="email" name="email" value="<%= email %>" required>
			<% } else { %>
				<input type="email" name="email" placeholder="Enter Your Email" required>
			<% } %>

			<label>Password:</label>
			<div style="position: relative;">
				<input type="password" id="password" name="password" placeholder="Enter password" required>
				<i class="fas fa-eye toggle-password" onclick="togglePassword()"
					style="position: absolute; top: 30%; right: 10px; cursor: pointer;"></i>
			</div>

			<% if (message != null) { %>
				<p class="popup-text show"><%= message %></p>
				<%
					session.removeAttribute("signupMessage");
					session.removeAttribute("messageColor");
				%>
			<% } %>
	
			<% if (loginSuccess != null) { %>
				<p class="popup-success-text show"><%= loginSuccess %></p>
				<%
					session.removeAttribute("loginSuccess");
					session.removeAttribute("loginMessageColor");
				%>
			<% } %>
			
			<% if (loginMessage != null) { %>
				<p class="popup-text show"><%= loginMessage %></p>
				<%
					session.removeAttribute("loginMessage");
					session.removeAttribute("loginMessageColor");
				%>
			<% } %>

			<button class="submit-btn" type="submit">LOGIN</button>
		</form>

		<p>
			Please Note: By continuing and signing in, you agree to PCS Cloud
			Lab's <a href="#">Terms & Conditions</a> and <a href="#">Privacy Policy</a>.
		</p>

		<p style="text-align: center;">
			Don't have an account? <a href="signup.jsp"><b>Sign Up</b></a>
		</p>
		<p style="text-align: center;">
			If Admin? <a href="admin.jsp"><b>Admin Login</b></a>
		</p>
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
