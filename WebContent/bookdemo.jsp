<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dao.pojo.*" %>
<%
    // Get user from session
    String email = (String) session.getAttribute("userEmail");
    User user = (User) session.getAttribute("LoginUser");

    String name = null;
    String number = null;
    String address = null;
    if (user != null) {
        name = user.getName();
        number = user.getPhoneNumber();
        address = user.getAddress();
    }

    // Handle feedback messages
    String message = (String) session.getAttribute("demomessage");
    String messageColor = (String) session.getAttribute("demomessagecolor");

    if (message != null) {
        session.removeAttribute("demomessage");
    }
    if (messageColor != null) {
        session.removeAttribute("demomessagecolor");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book for Demo</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
    font-family: "Open Sans", sans-serif;
    margin: 0;
    padding: 0;
    background-color: lightblue;
    align-items: center;
    justify-content: center;
}

/* Popup container */
.container {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    width: 800px;
    max-width: 95%;
    padding: 20px;
    margin: 10px;
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
    width: 100%;
    padding: 10px;
    margin: 8px 0;
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
    padding: 12px;
    background-color: #6a1b9a;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 15px;
}

.container .submit-btn:hover {
    background-color: #4a148c;
}

.input-row {
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin-bottom: 15px;
}

.half-width {
    flex: 1;                /* make both halves equal width */
}

input, select {
    width: 100%;
    height: 42px;           /* consistent height */
    padding: 8px 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    box-sizing: border-box; /* prevent overflow */
}

/* Mobile section fix */
.mobile-group {
    display: flex;
    gap: 10px;
}

.mobile-group select {
    flex: 0 0 35%;          /* fixed 35% for country code */
}

.mobile-group input {
    flex: 1;                /* take remaining 65% */
}

@media screen and (max-width: 575px) {
    .container {
        padding: 15px;
    }
    .input-row {
        flex-direction: column;
    }
    .input-row .half-width {
        width: 100%;
    }
}

/* reCAPTCHA */
.g-recaptcha {
    transform: scale(0.9);
    transform-origin: 0 0;
}

.recaptcha-container {
    display: flex;
    justify-content: center;
    margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
	    <button class="close-btn" onclick="goBack()">x</button>
	
	    <img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
	        style="width: 150px; margin-bottom: 10px;">
	
	    <% if (message != null) { %>
	        <p style="color:<%= messageColor != null ? messageColor : "red" %>; font-weight:bold;">
	            <%= message %>
	        </p>
	    <% } %>
	
	    <h3>Book A Demo Class for FREE</h3>
	
	    <form action="bookfordemoServlet" method="post">
	
			<!-- Name & Email -->
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
			
			<!-- Mobile & Location -->
			<div class="input-row">
			    <div class="half-width">
			        <label>Mobile:</label>
			        <div class="mobile-group">
			            <select name="countryCode">
			                <option value="+91">+91 (India)</option>
			            </select>
			            <input type="text" name="number" placeholder="Enter Your Number"
			                   value="<%= number != null ? number : "" %>" required>
			        </div>
			    </div>
			    <div class="half-width">
			        <label>Location (City):</label>
			        <input type="text" name="address" placeholder="Enter Your Location"
			               value="<%= address != null ? address : "" %>" required>
			    </div>
			</div>
	
	        <!-- Course -->
	        <label>Course:</label>
	        <select name="course" required>
	            <option value="">Select</option>
	            <option value="JFS">Java Full Stack</option>
	            <option value="MFS">MERN / MEAN Full Stack</option>
	            <option value="DevOps">DevOps</option>
	            <option value="PFS">Python Full Stack</option>
	            <option value="SF">Salesforce</option>
	        </select>
	        
	        <!-- reCAPTCHA -->
	        <div class="recaptcha-container">
	            <div class="g-recaptcha" data-sitekey="6LfkgLArAAAAAJ-D8Cm7C6LU_avz_A-2r2JNYxbS"></div>
	        </div>
	
	        <button class="submit-btn" type="submit">ENROLL NOW</button>
	    </form>
	</div>
	
	<script>
	function goBack() {
	    window.history.back();
	}
	</script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
</body>
</html>
