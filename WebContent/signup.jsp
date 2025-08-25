<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.SignUpBean"%>


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
	width: 600px;
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



.container .submit-btn:hover {
	background-color: #4a148c;
}

.container label {
    display: block;
    text-align: left;
    margin-top: 10px;
    font-weight: bold;
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

.form-row {
    display: flex;
    gap: 10px;
    justify-content: space-between;
    flex-wrap: wrap;
}

.form-row .form-group {
    flex: 1;
    min-width: 45%;
}

@media (max-width: 575px) {
    .form-row .form-group {
        min-width: 100%;
    }
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
    String message = (String) session.getAttribute("signupMessage");
    String messageColor = (String) session.getAttribute("messageColor");
    
    String email = (String)session.getAttribute("userEmail");
	
    if (message != null) {
%>
    <p style="color:<%= messageColor %>; font-weight: bold;"><%= message %></p>
<%
        session.removeAttribute("signupMessage");
        session.removeAttribute("messageColor");
    }
%>
			<h3>Create an Account</h3>
			<form action="signup" method="post">

    <div class="form-row">
        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" placeholder="Enter Your Name" required>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" placeholder="Enter Your Email" required>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group">
            <label>Phone Number:</label>
            <div style="display: flex; gap: 5px;">
                <select style="width: 35%;">
                    <option value="+91">+91</option>
                </select>
                <input type="text" name="phone_number" placeholder="Phone Number" style="width: 65%;" required>
            </div>
        </div>
        <div class="form-group">
            <label>Gender:</label>
            <select name="gender" required>
                <option value="" disabled selected>Select gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group">
            <label>Address:</label>
            <input type="text" name="address" placeholder="Enter address" required>
        </div>
        <div class="form-group">
            <label>Password:</label>
            <div style="position: relative;">
    <input type="password" id="password" name="password" placeholder="Enter password" required ">
    <i class="fas fa-eye toggle-password" onclick="togglePassword()" style="position: absolute; top: 35%; right: 10px; cursor: pointer;"></i>
</div>

        </div>
    </div>

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
