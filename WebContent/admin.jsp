<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.LoginBean"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
	width: 400px;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
	z-index: 1001;
	text-align: center;
}

/* Close Button */
.container .close-btn {
	position: absolute;
	top: 10px;
	right: 15px;
	background: none;
	border: none;
	font-size: 18px;
	cursor: pointer;
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
	width: 90%;
	padding: 10px;
	background-color: #6a1b9a;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.container label {
    display: block;
    text-align: left;
    margin-top: 10px;
    font-weight: bold;
}

.container .submit-btn:hover {
	background-color: #4a148c;
}

.container p {
	margin-top: 10px;
	font-size: 14px;
	color: #555;
}

/* Button */
.btn-sec {
	padding: 8px 6px;
	background-color: #2782c2;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn-sec:hover {
	background-color: #2782c2;
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
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<title>Book for Demo</title>
</head>
<body>


	<div class="container">
		<button class="close-btn" onclick="goBack()">x</button>

		<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
			style="width: 150px; margin-bottom: 10px;">
			
		<%
    
    String adminLoginMessage = (String) session.getAttribute("adminLoginMessage");
    String adminLoginMessageColor = (String) session.getAttribute("adminLoginMessageColor");
    
    if(adminLoginMessage !=null ){
    	
    	
    	session.removeAttribute("adminLoginMessage");
    	session.removeAttribute("adminLoginMessageColor");
    	}
%>
<%if(adminLoginMessage !=null) {%>
<p style="color:<%= adminLoginMessageColor %>; font-weight: bold;" ><%= adminLoginMessage %></p>
<%
}%>

		<h3>Admin Login</h3>
		<form action="adminloginservlet" method="post" >
		   <label>Email:</label>
			<input type="email" name="email" placeholder="Enter Your Email"
				required>
	
			<label>Password:</label>
            <div style="position: relative;">
    <input type="password" id="password" name="password" placeholder="Enter password" required ">
    <i class="fas fa-eye toggle-password" onclick="togglePassword()" style="position: absolute; top: 23%; right: 10px; cursor: pointer;"></i>
			<br>
			<button class="submit-btn" type="submit">LOGIN</button>
		</form>
		
	</div>
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