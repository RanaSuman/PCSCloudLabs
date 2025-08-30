
<%
// Retrieve message from session
String signupMessage = (String) session.getAttribute("signupMessage");
String messageColor = (String) session.getAttribute("messageColor");

// Remove message from session so it doesn't show on refresh
/* if (signupMessage != null) {
	session.removeAttribute("signupMessage");
	session.removeAttribute("messageColor");
} */

String loginMessage = (String) session.getAttribute("loginMessage");
String loginMessageColor = (String) session.getAttribute("loginMessageColor");
if (loginMessage != null) {
	session.removeAttribute("loginMessage");
	session.removeAttribute("loginMessageColor");
}

String emailmessage = (String) session.getAttribute("emailmessage");

String demomessage = (String)session.getAttribute("demomessage");
String demomessageColor = (String) session.getAttribute("demomessagecolor");
if(demomessage !=null || emailmessage!=null || demomessageColor != null){
	session.removeAttribute("demomessage");
	session.removeAttribute("emailmessage");
	session.removeAttribute("demomessagecolor");
}
%>

<!DOCTYPE html>


<html lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* Body and General Styles */
body {
	font-family: "Open Sans", sans-serif; /* Font family for the body */
	margin: 0;
	padding: 0;
	background-color: #f9f9f9; /* Background color for the body */
}

.navbar {
	padding: .5rem 0rem !important;
}

.blog {
	padding: 0px !important;
	background-color: #FFF;
}
/* Menu Styling */
.menu {
	display: flex;
	flex-direction: column;
	width: 300px;
	background-color: #fff; /* White background for the menu */
}

.menu-item {
	position: relative;
}

.menu-item>a {
	font-weight: 400;
	display: block;
	padding: 10px 15px;
	text-decoration: none;
	color: #333; /* Default text color */
}

.menu-item>a:hover {
	background-color: #f0f0f0; /* Hover effect for menu items */
}

/* Submenu Styling */
.submenu {
	display: none;
	position: absolute;
	top: 0;
	left: 100%;
	width: 300px;
	border: 1px solid #ddd;
	background-color: #fff;
	z-index: 1000;
	box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
}

.submenu a {
	padding: 10px 15px;
	display: block;
	text-decoration: none;
	color: #333;
	font-size: 0.9rem; /* Smaller font size for submenu items */
}

.submenu a:hover {
	background-color: #f0f0f0;
}

.menu-item:hover .submenu {
	display: block; /* Display submenu on hover */
}

/* Search Bar Styling */
.search-bar {
	padding: 15px;
	background-color: #fff;
	border-bottom: 1px solid #ddd; /* Border for the search bar */
}

.search-bar input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

/* Social Media Icons Styling */
.col-lg-2 .ulright li a i {
	color: #ffffff; /* Default white color for icons */
	transition: color 0.3s ease; /* Smooth transition for color change */
}

.col-lg-2 .ulright li a i.fa-facebook-square:hover {
	color: #1877F2; /* Facebook hover effect */
}

.col-lg-2 .ulright li a i.fa-youtube-square:hover {
	color: #FF0000; /* YouTube hover effect */
}

.col-lg-2 .ulright li a i.fa-instagram:hover {
	color: #E4405F; /* Instagram hover effect */
}

.col-lg-2 .ulright li a i.fa-linkedin:hover {
	color: #0A66C2; /* LinkedIn hover effect */
}

/* Media Queries for Responsiveness */
@media ( max-width : 768px) {
	.menu {
		max-width: 100%;
	}
	.submenu {
		position: relative;
		left: 0;
		top: auto;
		width: 100%;
		max-width: none;
		box-shadow: none;
	}
}

@media ( max-width : 480px) {
	.search-bar input {
		padding: 20px;
	}
	header .header-top .col-det .ulleft {
		font-size: 10px;
	}
	.menu-item>a {
		padding: 8px 10px;
	}
	.submenu a {
		padding: 8px 10px;
	}
	.text-contet {
		margin-top: 35px;
	}
}

/* Header Styling */
header .header-top {
	background-color: #2782c2;
	padding: 3px 0;
}

header .header-top .col-det .ulleft {
	list-style: none;
	padding: 0;
	margin: 0;
}

header .header-top .col-det .ulleft li {
	float: left;
	padding: 12px;
	color: #fff; /* Text color for left side of the header */
	font-size: 0.85rem;
	font-weight: 600;
	display: inline-block;
}

header .header-top .col-det .ulleft li i {
	margin-right: 5px;
	color: #fff;
}

header .header-top .col-det .ulleft li span {
	margin-left: 15px;
}

header .header-top .col-det .ulright {
	list-style: none;
	float: right;
	padding: 0;
	margin: 0;
}

header .header-top .col-det .ulright li {
	float: left;
	padding: 10px;
	color: #d3d7ce;
	font-size: 1rem;
	font-weight: 600;
}

header .header-top .col-det .ulright li i {
	margin-right: 5px;
}

/* Hide elements on small screens */
@media ( max-width : 991px) {
	header .header-top .btn-primar {
		display: inline;
		margin: 0 auto;
		text-align: center;
	}
	header .header-top .col-det .ulright {
		display: flex;
		justify-content: center;
	}
	.btn-sec {
		font-size: 17px;
	}
	header .header-top .col-det .ulleft {
		width: 230px;
		margin: -10px;
	}
	.line-bw {
		display: none;
	}
	.fas {
		margin-top: -30px;
	}
	.col-lg-2 .ulright {
		margin-right: -50px;
	}
	.d-flex {
		margin-right: -15px;
		float: right;
		width: 170px;
	}
	#bk-demo {
		margin-right: -20px;
		margin-top: -125px;
	}
	.gap-2 {
		margin-top: -40px;
	}
	.btn-sec {
		font-size: 13px;
	}
	#lg-icons {
		font-size: 13px;
		margin-top: -90px;
		margin-right: -10px;
	}
	#btn-sec {
		margin-left: -5px;
	}
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

.popup-content {
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

/* Close Button for Popup */
.popup-content .close-btn {
	position: absolute;
	top: 10px;
	right: 15px;
	background: none;
	border: none;
	font-size: 18px;
	cursor: pointer;
}

/* Popup Form Styles */
.popup-content h3 {
	margin-bottom: 15px;
	font-size: 18px;
}

.popup-content input, .popup-content select {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.popup-content .submit-btn {
	width: 100%;
	padding: 10px;
	background-color: #6a1b9a;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.popup-content .submit-btn:hover {
	background-color: #4a148c;
}

.popup-content p {
	margin-top: 10px;
	font-size: 14px;
	color: #555;
}

/* Button Styles */
.btn-sec {
	padding: 8px 6px;
	background-color: #2782c2;
	font-size: 15px;
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
	/* text-align: center; */
}

a {
	color: #007bff;
}

.ex_mar {
	margin-top: 40px;
}

.justify-content {
	-webkit-box-pack: justify !important;
	-ms-flex-pack: justify !important;
	justify-content: space-evenly;
}
/* =============Styling for Profile section Starts here========= */
.navbar-Profile {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding: 10px 20px;
	width: auto;
}
/* Profile container to position dropdown */
.profile-container {
	position: relative;
	display: inline-block;
	width: auto;
}
/* Style for the profile button */
.profile-btn {
	background: none;
	border: none;
	cursor: pointer;
	display: flex;
	align-items: center;
}
/* Profile icon styling */
.profile-icon {
	width: 30px;
	height: 30px;
	border-radius: 50%;
}
/* Dropdown menu styling */
.dropdown-content {
	display: none;
	position: absolute;
	right: 0;
	top: 50px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.15);
	width: 200px;
	z-index: 1000;
}

/* Each link inside the dropdown */
.dropdown-content a {
	display: block;
	padding: 10px 15px;
	color: #333;
	text-decoration: none;
	transition: background-color 0.2s ease;
}

/* Hover effect for dropdown links */
.dropdown-content a:hover {
	background-color: #f0f0f0;
}

/* Class to show the dropdown */
.show {
	display: block;
}

.message {
	font-weight: bold;
	text-align: center;
	position: fixed; /* Keeps it visible on screen */
	top: 50%; /* Adjust as needed */
	left: 50%;
	transform: translateX(-50%); /* Centers it */
	background: #IIII; /* Green success color */
	padding: 12px 25px;
	border-radius: 8px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.15);
	z-index: 9999; /* Ensures it stays above other elements */
	font-size: 16px;
	font-family: Arial, sans-serif;
	letter-spacing: 0.5px;
	transition: opacity 0.5s ease-in-out;
	color: <%=messageColor%>;
}
</style>
</head>
<body>
	<!-- Display message here -->
	<%-- <%
	if (signupMessage != null) {
	%>
	<p id="signupMessage" class="message"><%=signupMessage%></p>
	<%
	}
	%> --%>

	<!-- Display Login Message if available -->
	<%
	if (loginMessage != null) {
	%>
	<div id="loginMessage" class="message"
		style="color: <%=loginMessageColor%>;">
		<%=loginMessage%>
	</div>
	<%
	}
	%>
	
	<% if (demomessage != null || emailmessage != null) { %>
    <div id="loginMessage" class="message" style="color: <%= demomessageColor %>>; font-weight: bold; margin-top: 10px;">
        <% if (demomessage != null) { %>
            <%= demomessage %><br>
        <% } %>
        <% if (emailmessage != null) { %>
            <%= emailmessage %>
        <% } %>
    </div>
    <%} %>

	<header class="continer-fluid ">
		<div class="topPanel">
			<div class="container">
				<div class="row col-det">
					<div class="col-lg-12 d-lg-block">
						<ul class="ulleft">
							<li>Our Special Offer - Get 3 Courses at 24999/- Only. <a
								href="#">Read more...</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clearFix"></div>
		<div class="header-top">
			<div class="container">
				<div class="row col-det">
					<div class="col-lg-6  d-lg-block">
						<ul class="ulleft ">
							<li><i class="far fa-envelope"></i>
								training@pcscloudlabs.com <span class="line-bw">|</span></li>
							<li><i class="fas fa-phone-volume"></i> +91-8697741611</li>
							<li><i class="fas fa-phone-volume"></i> +91-9830376126</li>
						</ul>
					</div>


					<div class="col-lg-2 col-md-12">
						<div class="d-flex  justify-content gap-2" id="bk-demo">
							<!-- Added d-flex and gap-2 -->
							<button class="btn-sec"
								onclick="window.location.href='bookdemo.jsp'">
								<i class="fas fa-calendar-alt"></i> Book Free Demo
							</button>

						</div>


						<!-- Pop UP Content for Book Free Demo Starts here-->
						<!-- <div class="popup-overlay" id="popup-demo">
							<div class="popup-content">
								<button class="close-btn" onclick="closePopup('popup-demo')">x</button>
								<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
									style="width: 150px; margin-bottom: 10px;">
								<h3>Book A Demo Class worth 50rs for FREE?</h3>
								<form>
									<input type="email" placeholder="Enter Your Email" required>
									<div style="display: flex; gap: 10px;">
										<select>
											<option value="India">India (+91)</option>
											Add more countries as needed
										</select> <input type="text" placeholder="Enter Your Number" required>
									</div>
									<button class="submit-btn" type="submit">SUBMIT</button>
								</form>
							</div>
						</div> -->
						<!-- Pop UP Content for Book Free Demo Ends here-->

						<!-- Pop UP Content for Get a Quick Call Back Starts here-->
						<div class="popup-overlay" id="popup-callback">
							<div class="popup-content">
								<button class="close-btn" onclick="closePopup('popup-callback')">x</button>
								<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
									style="width: 150px; margin-bottom: 10px;">
								<h3>Hi, Do you want to take 10 Minutes Counselling worth
									50rs for FREE?</h3>
								<form>
									<input type="email" placeholder="Enter Your Email" required>
									<div style="display: flex; gap: 10px;">
										<select>
											<option value="India">India (+91)</option>
											<!-- Add more countries as needed -->
										</select> <input type="text" placeholder="Enter Your Number" required>
									</div>
									<button class="submit-btn" type="submit">SUBMIT</button>
								</form>
								<p>Our Career Advisor will give you a call shortly</p>
							</div>
						</div>
						<!-- Pop UP Content for Get a Quick Call Back Ends here-->
					</div>





					<div class="col-lg-2 col-md-12">
						<ul class="ulright" id="lg-icons">
							<li><a
								href="https://www.facebook.com/groups/kolkata.freshersgroup/members"
								target="_blank" rel=""> <i class="fab fa-facebook-square"></i>
							</a></li>

							<li><a
								href="https://www.youtube.com/@PCSGlobalPrivateLimited"
								target="_blank" rel=""> <i class="fab fa-youtube-square"></i>
							</a></li>

							<li><a
								href="https://www.instagram.com/pcsglobalpvtltd?igsh=MWNxODdiNnZocGl0dg=="
								target="_blank" rel=""> <i class="fab fa-instagram"></i>
							</a></li>

							<li><a
								href="https://www.linkedin.com/company/pcs-global-pvt-ltd/"
								target="_blank" rel=""> <i class="fab fa-linkedin"></i>
							</a></li>
						</ul>
					</div>




					<!-- Sign IN and the Log IN Section Starts Here -->
					<!-- Sign IN and the Log IN Section Starts Here -->
					<%
    String userEmail = (String) session.getAttribute("userEmail");
    boolean isLoggedIn = (userEmail != null);
%>

					<div class="col-lg-2 col-md-12" id="user-container">

						<!-- Login/Signup Section: Visible when NOT logged in -->
						<div class="login-signup"
							style="<%= isLoggedIn ? "display:none;" : "display:block;" %>">
							<div class="d-flex justify-content gap-2">
								<button class="btn-sec"
									onclick="window.location.href='signup.jsp'">
									<i class="fas fa-user-plus"></i> Sign Up
								</button>
								<button class="btn-sec"
									onclick="window.location.href='login.jsp'">
									<i class="fas fa-sign-in-alt"></i> Login
								</button>
							</div>
						</div>

						<!-- Profile Section: Visible when logged in -->
						<div class="profile-section"
							style="<%= isLoggedIn ? "display:block;" : "display:none;" %>">
							<div class="navbar-Profile">
								<div class="profile-container">
									<button class="profile-btn" id="profileBtn">
										<img src="assets/images/content/userdefault_ico.png"
											alt="User Profile" class="profile-icon">
									</button>
									<!-- Dropdown Menu -->
									<div class="dropdown-content" id="dropdownContent">
										<a href="my-profile.jsp">My Profile</a> <a
											href="my-orders.jsp">My Orders</a> <a href="#">My Wallet</a>
										<a href="Wishlist1.jsp">My Wishlist</a> <a href="activity.jsp">Activity
											Stream</a> <a href="#">Change Password</a> <a href="#">Forum</a>
										<a href="logout.jsp">Logout</a>
										<!-- Logout visible here -->
									</div>
								</div>
							</div>
						</div>

					</div>



					<!-- Sign IN and the Log IN and Profile Section Ends Here -->


				</div>
			</div>
		</div>



		<div id="menu-jk" class="header-bottom">
			<div class="container">
				<div class="row nav-row">
					<div class="col-lg-3 col-md-12 logo">
						<a href="index.jsp"> <img src="assets/images/logo.jpg" alt="">
						</a>
					</div>
					<div class="col-lg-9 col-md-12 nav-col">
						<nav class="navbar navbar-expand-lg navbar-light">

							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNav"
								aria-controls="navbarNav" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarNav">
								<ul class="navbar-nav">
									<li class="nav-item active"><a class="nav-link"
										href="index.jsp">Home</a></li>
									<li class="nav-item"><a class="nav-link"
										href="about-us.jsp">About&nbsp;Us</a></li>

									<!-- Courses Dropdown -->
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="courses.jsp"
										id="navbarDropdown" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> Courses</a>

										<div class="dropdown-menu" aria-labelledby="navbarDropdown">

											<div class="menu">
												<div class="menu-item">
													<a href="java.jsp">Java Full Stack</a>
													<div class="submenu">
														<div class="menu-item">
															<a href="#">Core Java</a>
														</div>
														<div class="menu-item">
															<a href="#">Spring Framework</a>
														</div>
														<div class="menu-item">
															<a href="#">Hibernate</a>
														</div>
														<div class="menu-item">
															<a href="#">Microservices</a>
														</div>
													</div>
												</div>

												<div class="menu-item">
													<a href="mean&mern.jsp">MEAN/MERN Stack FSD</a>
													<div class="submenu">
														<div class="menu-item">
															<a href="#">MongoDB</a>
														</div>
														<div class="menu-item">
															<a href="#">Express.js</a>
														</div>
														<div class="menu-item">
															<a href="#">Angular/React</a>
														</div>
														<div class="menu-item">
															<a href="#">Node.js</a>
														</div>
													</div>
												</div>

												<div class="menu-item">
													<a href="devOps.jsp">DevOps</a>
													<div class="submenu">
														<div class="menu-item">
															<a href="#">CI/CD</a>
														</div>
														<div class="menu-item">
															<a href="#">Kubernetes</a>
														</div>
														<div class="menu-item">
															<a href="#">Docker</a>
														</div>
														<div class="menu-item">
															<a href="#">AWS</a>
														</div>
													</div>
												</div>

												<div class="menu-item">
													<a href="data science.jsp">Data Science AI/ML</a>
													<div class="submenu">
														<div class="menu-item">
															<a href="#">Machine Learning</a>
														</div>
														<div class="menu-item">
															<a href="#">Deep Learning</a>
														</div>
														<div class="menu-item">
															<a href="#">Data Visualization</a>
														</div>
														<div class="menu-item">
															<a href="#">Big Data Analytics</a>
														</div>
													</div>
												</div>

												<div class="menu-item">
													<a href="python.jsp">Python</a>
													<div class="submenu">
														<div class="menu-item">
															<a href="#">Flask</a>
														</div>
														<div class="menu-item">
															<a href="#">Django</a>
														</div>
														<div class="menu-item">
															<a href="#">Pandas</a>
														</div>
														<div class="menu-item">
															<a href="#">NumPy</a>
														</div>
													</div>
												</div>
												<div class="menu-item">
													<a href="#">Oracle</a>
													<div class="submenu">
														<div class="menu-item">
															<a href="#">SQL</a>
														</div>
														<div class="menu-item">
															<a href="#">PL/SQL</a>
														</div>
														<div class="menu-item">
															<a href="#">Database Administration</a>
														</div>
														<div class="menu-item">
															<a href="#">Performance Tuning</a>
														</div>
														<div class="menu-item">
															<a href="#">Oracle Cloud</a>
														</div>
														<div class="menu-item">
															<a href="#">Data Guard</a>
														</div>
													</div>
												</div>

											</div>

										</div></li>



									<!-- Salesforce Dropdown -->
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="salesforce.jsp"
										id="navbarDropdown" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> Salesforce</a>

										<div class="dropdown-menu" aria-labelledby="navbarDropdown">

											<a class="dropdown-item" href="salesforce.jsp">Salesforce
												Master Training</a> <a class="dropdown-item" href="#">SalesforceAdministrator</a>
											<a class="dropdown-item" href="#">SalesforceDevelopment</a> <a
												class="dropdown-item" href="#">Salesforce Commerce Cloud
											</a> <a class="dropdown-item" href="salesforce_marketing.jsp">Salesforce
												Marketing Cloud</a> <a class="dropdown-item" href="#">Salesforce
												Omnistudio (Vlocity)</a> <a class="dropdown-item" href="#">Salesforce
												Customer Data Platform</a> <a class="dropdown-item" href="#">Salesforce
												Interaction Studio </a> <a class="dropdown-item" href="#">Salesforce
												Field Service </a> <a class="dropdown-item" href="#">Salesforce
												Lightning </a> <a class="dropdown-item" href="#">Lightning
												Web Components </a> <a class="dropdown-item" href="#">Salesforce
												Business Analyst</a> <a class="dropdown-item" href="#">Salesforce
												Einstein Analytics </a> <a class="dropdown-item" href="#">Salesforce
												nCino </a> <a class="dropdown-item" href="#">Salesforce
												Omnistudio (Vlocity) </a> <a class="dropdown-item" href="#">Salesforce
												CPQ Online Training </a> <a class="dropdown-item" href="#">Salesforce
												Billing </a> <a class="dropdown-item" href="#">Salesforce
												Revenue Cloud </a> <a class="dropdown-item" href="#">Salesforce
												Testing </a>
										</div></li>



									<li class="nav-item"><a class="nav-link"
										href="non-it-to-it.jsp">Non&nbsp;-&nbsp;IT&nbsp;To&nbsp;IT</a>
									</li>
									<!-- 	<li class="nav-item"><a class="nav-link" href="events.jsp">Event</a>
									</li> -->
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="event.jsp"
										id="navbarDropdown" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> Event</a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="upcoming-events.jsp">Upcomining</a>
											<a class="dropdown-item" href="ongoing-events.jsp">OnGoing</a>

										</div></li>
									<li class="nav-item"><a class="nav-link"
										href="our-team.jsp">Team</a></li>
									<li class="nav-item"><a class="nav-link"
										href="contact-us.jsp">Contact</a></li>
								</ul>
								<a class="nav-btn" href="contact-us.jsp">
									<button class="btn btn-sm btn-warning">Hire Talent</button>
								</a>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
		



		<!-- JavaScript -->
		<script>
  // Function to show the popup
  function showPopup(popupId) {
    document.getElementById(popupId).style.display = 'block';
  }

  // Function to close the popup (one definition for both login and signup)
  function closePopup(popupId) {
    document.getElementById(popupId).style.display = 'none';
  }

  // Optional: Close the popup when clicking outside of it
  window.onclick = function(event) {
    const overlays = document.querySelectorAll(".popup-overlay");
    overlays.forEach((overlay) => {
      if (event.target === overlay) {
        overlay.style.display = "none";
      }
    });
  };
  
  // Hide the message after 2 seconds (2000 ms)
  setTimeout(function() {
      var msg = document.getElementById("signupMessage");
      if (msg) {
          msg.style.display = "none";
      }
  }, 2000); // 2 seconds
  
  
  
  
  
  // Hide the login message after 2 seconds (2000 ms)
  setTimeout(function() {
      var loginMsg = document.getElementById("loginMessage");
      if (loginMsg) {
          loginMsg.style.display = "none";
      }
  }, 2000);
  
//Toggle dropdown menu when profile button is clicked
  document.getElementById("profileBtn").addEventListener("click", function(event) {
   // Prevent event bubbling so that the document click listener does not immediately close the dropdown.
   event.stopPropagation();
   document.getElementById("dropdownContent").classList.toggle("show");
 });

 // Hide the dropdown if the user clicks outside of it
 document.addEventListener("click", function() {
   var dropdown = document.getElementById("dropdownContent");
   if (dropdown.classList.contains("show")) {
     dropdown.classList.remove("show");
   }
 });
 

 function handleBookDemoClick() {
     <% if (isLoggedIn) { %>
         // User is logged in (or a message is available), go to demo booking
         window.location.href = 'bookdemo.jsp';
     <% } else { %>
         // Not logged in — show a popup
         alert('Please sign up or log in to book a demo.');
     <% } %>
 }

  </script>
	</header>
</body>

</html>
