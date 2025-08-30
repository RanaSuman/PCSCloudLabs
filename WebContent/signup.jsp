<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.SignUpBean"%>

<%
String message = (String) session.getAttribute("signupMessage");
String messageColor = (String) session.getAttribute("messageColor");
String email = (String) session.getAttribute("userEmail");
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

/* Main signup card */
.signup-container {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	width: 600px;
	padding: 20px 30px;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
	z-index: 1001;
	text-align: center;
}

.signup-container .close-btn {
	position: absolute;
	top: 20px;
	right: 20px;
	background: none;
	border: none;
	font-size: 18px;
	cursor: pointer;
}

/* Form styles */
.signup-container input, .signup-container select {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
}

.signup-container .submit-btn {
	width: 100%;
	padding: 10px;
	background-color: #6a1b9a;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.signup-container .submit-btn:hover {
	background-color: #4a148c;
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

.form-row {
	display: flex;
	gap: 20px;
	justify-content: space-between;
	flex-wrap: wrap;
	align-items: flex-start; /* ✅ fixes vertical alignment */
	margin-bottom: 15px;
}

.form-group {
	flex: 1;
	min-width: 45%;
	display: flex;
	flex-direction: column; /* label always on top */
}

.signup-container label {
	font-size: 14px;
	font-weight: 600;
	margin-bottom: 5px;
	text-align: left; /* ✅ always left aligned */
	display: block;
}

@media ( max-width : 575px) {
	.form-row .form-group {
		min-width: 100%;
	}
	.signup-container {
		width: 95%;
		padding: 10px;
	}
}
</style>
</head>

<body>

	<div class="signup-container">
		<button class="close-btn" onclick="goBack()">x</button>

		<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
			style="width: 150px;">

		<h3>Create an Account</h3>

		<form action="signup" method="post">
			<div class="form-row">
				<div class="form-group">
					<label>Name:</label> <input type="text" name="name"
						placeholder="Enter Your Name" required>
				</div>
				<div class="form-group">
					<label>Email:</label> <input type="email" name="email"
						placeholder="Enter Your Email" required>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group">
					<label>Phone Number:</label>
					<div style="display: flex; gap: 5px;">
						<select style="width: 25%;">
							<option value="+91">+91</option>
						</select> <input type="text" name="phone_number" placeholder="Phone Number"
							style="width: 75%;" required>
					</div>
				</div>
				<div class="form-group">
					<label>Gender:</label> <select name="gender" required>
						<option value="" disabled selected>Select gender</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group">
					<label>Address:</label> <input type="text" name="address"
						placeholder="Enter address" required>
				</div>
				<div class="form-group">
					<label>Password:</label>
					<div style="position: relative;">
						<input type="password" id="password" name="password"
							placeholder="Enter password" required> <i
							class="fas fa-eye toggle-password" onclick="togglePassword()"
							style="position: absolute; top: 35%; right: 10px; cursor: pointer;"></i>
					</div>
				</div>
			</div>

			<% if (message != null) { %>
		        <p class="popup-text show"><%= message %></p>
		        <%
		            session.removeAttribute("signupMessage");
		            session.removeAttribute("messageColor");
		        %>
		    <% } %>

			<button class="submit-btn" type="submit">SIGN UP</button>
		</form>

		<p style="text-align: center;">
			Already have an account? <a href="login.jsp"><b>Login</b></a>
		</p>
		<p style="text-align: center;">
			Are you admin? <a href="admin.jsp"><b>Login</b></a>
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
