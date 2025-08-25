<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ page import="com.dao.pojo.*" %>
	<%
	
	String email = (String)session.getAttribute("userEmail");
	
	User user = (User)session.getAttribute("LoginUser");
	String name = null;
	String number = null;
	String address = null;
	if(user!=null){
	
	name = user.getName();
	number = user.getPhoneNumber();
	address = user.getAddress();
	
	}
	
	String message = (String)session.getAttribute("demomessage");
	String messageColor = (String) session.getAttribute("demomessagecolor");
	
	if(message !=null || messageColor != null){
		session.removeAttribute("demomessage");
		session.removeAttribute("demomessagecolor");
	}
	%>
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

.container label {
    display: block;
    text-align: left;
    margin-top: 10px;
    font-weight: bold;
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
.input-row {
	display: flex;
	justify-content: space-between;
	gap: 10px;
}

.input-row .half-width {
	width: 48%;
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
/* Resize Google reCAPTCHA */
.g-recaptcha {
  transform: scale(0.8);              /* shrink to 80% */
  -webkit-transform: scale(0.8);      /* for Safari/old browsers */
  transform-origin: 0 0;              /* keep aligned top-left */
}

/* If you want it centered in the form */
.recaptcha-container {
  display: flex;
  justify-content: center;
  margin-top: 10px;
}

</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<title>Book for Demo</title>
</head>
<body>

	<div class="container">
		<button class="close-btn" onclick="goBack()">x</button>

		<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
			style="width: 150px; margin-bottom: 10px;">
			
			<p style="color:red; font-weight: bold;"><%= message !=null ? message: "" %></p>
			
		<h3>Book A Demo Class for FREE?</h3>
		<form action="bookfordemoServlet" method="post">
		<!-- Name & Email on same row -->
<div class="input-row">
	<div class="half-width">
		<label>Name:</label>
		<input type="text" name="name" placeholder="Enter Your Name"
			value="<%= name != null ? name : "" %>" required>
	</div>

	<div class="half-width">
		<label>Email:</label>
		<input type="email" name="email" placeholder="Enter Your Email"
			value="<%= email != null ? email : "" %>" required>
	</div>
</div>

<!-- Mobile & Address on same row -->
<div class="input-row">
	<div class="half-width">
		<label>Mobile:</label>
		<div style="display: flex; gap: 5px;">
			<select style="width: 40%;">
				<option value="India">India (+91)</option>
			</select>
			<input type="text" name="number" placeholder="Enter Your Number"
				value="<%= number != null ? number : "" %>" style="width: 60%;" required>
		</div>
	</div>

	<div class="half-width">
		<label>Location(city):</label>
		<input type="text" name="address" placeholder="Enter Your location"
			value="<%= address != null ? address : "" %>" required>
	</div><!-- Google reCAPTCHA -->
	<br>
	<br>
<div class="g-recaptcha" data-sitekey="6LfkgLArAAAAAJ-D8Cm7C6LU_avz_A-2r2JNYxbS"></div>
<br>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
	
	
</div>

<!-- Course in full width -->
<label>Course:</label>
<select name="course" style="width: 100%;">
	<option>Select</option>
	<option value="JFS">Java Full Stack</option>
	<option value="MFS">MERN / MEAN Full Stack</option>
	<option value="Devops">Devops</option>
	<option value="PFS">Python Full Stack</option>
	<option value="PFS">Salesforce</option>
</select>

			<button class="submit-btn" type="submit">ENROLL NOW</button>
		</form>
	</div>

	<script>
	function goBack() {
		window.history.back();
	}
	</script>

</body>
</html>
