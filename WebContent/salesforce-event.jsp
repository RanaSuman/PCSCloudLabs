<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Salesforce Marketing Cloud</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<style>
body {
	font-family: Arial, sans-serif;
	padding-top: 50px;
}

.hero-section {
	background: url('https://via.placeholder.com/1200x500') no-repeat center
		center;
	background-size: cover;
	color: white;
	padding: 60px 0;
	position: relative;
}

.overlay {
	background: rgba(0, 0, 0, 0.5);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.content {
	position: relative;
	z-index: 2;
}

.container {
	margin-top: 20px;
}

.title {
	font-weight: bold;
	color: black;
}

.info-section {
	padding: 20px;
}

.highlight {
	font-weight: bold;
}

/* Fixed Form Container */
.fixed-form-container {
	position: fixed;
	top: 100px; /* Just below the navbar */
	right: 20px;
	width: 350px;
	z-index: 999;
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Mobile form toggle button */
.form-toggle-btn {
	display: none;
	position: fixed;
	/* bottom: 20px;
            right: 20px; */
	bottom: 65px;
	right: 15px;
	z-index: 1000;
	width: 60px;
	height: 60px;
	border-radius: 50%;
	background: #ff4d4d;
	color: white;
	border: none;
	font-size: 24px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

/* Mobile form container */
.mobile-form-container {
	display: none;
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	background: white;
	z-index: 999;
	padding: 20px;
	border-radius: 8px 8px 0 0;
	box-shadow: 0 -5px 15px rgba(0, 0, 0, 0.1);
	max-height: 80vh;
	overflow-y: auto;
}

.register-btn {
	background: #ff4d4d;
	color: white;
	font-weight: bold;
	border: none;
	padding: 10px;
	width: 100%;
	border-radius: 5px;
}

.register-btn:hover {
	background: #e63946;
}

.already-account {
	color: blue;
	text-decoration: none;
}

.alert {
	color: red;
	font-size: 14px;
}

.countdown {
	font-size: 14px;
	color: red;
	font-weight: bold;
}

/* Navbar */
.navbar {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
	background: white;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
}

/* Light blue section headers */
.section-header {
	background: #f0f8ff;
	padding: 10px;
	font-size: 20px;
	font-weight: bold;
	color: #1a3d7c;
	border-radius: 5px;
	margin-bottom: 15px;
}

/* Bullet points styling */
.content-section ul {
	list-style-type: disc;
	padding-left: 20px;
}

/* Certificates styling */
.certificate-text {
	font-weight: bold;
}

/* Icons with text section */
.masterclass-for {
	background: #f0f8ff;
	padding: 15px;
	border-radius: 5px;
	margin-top: 20px;
}

.audience-section {
	display: flex;
	justify-content: space-around;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 60px;
}

.audience-item {
	flex: 1;
	text-align: center;
}

.audience-item img {
	width: 50px;
	margin-bottom: 10px;
}

.audience-item p {
	font-size: 14px;
	color: #333;
}

/* Responsive styles */
@media ( max-width : 992px) {
	body {
		padding-top: 10px;
	}
	.fixed-form-container {
		display: none;
	}
	.form-toggle-btn {
		display: block;
	}
	.mobile-form-container.active {
		display: block;
	}
}
/* Footer Full Width */
.footer {
	width: 100vw;
	height: 60px;
	background: #ff4d4d;
	padding-top: 20px;
	text-align: center;
}

.footer p {
	color: white;
}

@media ( max-width : 768px) {
	.footer {
		height: auto;
		padding: 10px;
		flex-direction: column;
	}
	.footer p {
		font-size: 12px;
		padding: 5px;
	}
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand fw-bold" href="ongoing-events.jsp">PCS Cloud Lab</a>
		</div>
	</nav>

	<!-- Registration Form (Fixed - Desktop) -->
	<div class="fixed-form-container">
		<h4 class="title">Register NOW!</h4>
		<a href="#" class="already-account">Already have an account? Click
			here</a>

		<form class="mt-3">
			<div class="mb-2">
				<input type="email" class="form-control" placeholder="Email">
			</div>
			<div class="mb-2 d-flex">
				<select class="form-select" style="width: 30%;">
					<option>+91</option>
				</select> <input type="text" class="form-control" placeholder="Phone">
			</div>
			<div class="mb-2">
				<input type="text" class="form-control" placeholder="Name">
			</div>
			<button class="register-btn">REGISTER FOR FREE</button>

			<p class="text-muted text-center mt-2" style="font-size: 12px;">
				By continuing, you agree to PCS GLobal <a href="#">Terms</a> and <a
					href="#">Privacy Policy</a>.
			</p>
		</form>
	</div>

	<!-- Mobile Form Toggle Button -->
	<button class="form-toggle-btn" id="formToggleBtn">
		<i class="fas fa-edit"></i>
	</button>

	<!-- Mobile Form Container -->
	<div class="mobile-form-container" id="mobileFormContainer">
		<h4 class="title">Register NOW!</h4>
		<a href="#" class="already-account">Already have an account? Click
			here</a>

		<form class="mt-3">
			<div class="mb-2">
				<input type="email" class="form-control" placeholder="Email">
			</div>
			<div class="mb-2 d-flex">
				<select class="form-select" style="width: 30%;">
					<option>+91</option>
				</select> <input type="text" class="form-control" placeholder="Phone">
			</div>
			<div class="mb-2">
				<input type="text" class="form-control" placeholder="Name">
			</div>
			<button class="register-btn">REGISTER FOR FREE</button>

			<p class="text-muted text-center mt-2" style="font-size: 12px;">
				By continuing, you agree to PCS GLobal <a href="#">Terms</a> and <a
					href="#">Privacy Policy</a>.
			</p>
		</form>

		<button class="btn btn-outline-secondary w-100 mt-2" id="closeFormBtn">Close</button>
	</div>

	<!-- Hero Section -->
	<section
		class="hero-section text-center text-md-start position-relative">
		<div class="overlay"></div>
		<div class="container content">
			<div class="row align-items-center">
				<div class="col-md-6 text-white">
					<span class="badge bg-warning text-dark p-2">Free Guidance</span>
					<h2 class="mt-3">Learn the right skills & tools for</h2>
					<h1 class="fw-bold bg-success text-white d-inline-block p-2">Salesforce
						Marketing Cloud</h1>
					<p class="mt-3">
						PCS Cloud Lab Masterclass with <strong>Alok Halder </strong>
						Founder of PCS Global
					</p>
					<p>
						<strong>Wed, 26th March 2025 | 7:30 - 9:30 PM</strong>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<!-- < class="col-md-7"> -->
			<h2 class="title">Roadmap to Salesforce Marketing Cloud</h2>
			<p>
				<strong>STARTS ON:</strong> March 18, 2025 7:30 PM (IST) <strong>ENDS
					ON:</strong> July , 2025 <strong>VENUE:</strong> Online
			</p>
			<hr>
			<div class="info-section bg-light rounded">
				<h5 class="title text-black p-2">About this Masterclass</h5>
				<p>From startups to global enterprises, businesses rely on
					marketing automation to drive customer engagement, optimize
					campaigns, and deliver personalized experiences at scale.</p>
				<p>Enter Salesforce Marketing Cloud (SFMC)—a powerful platform
					that enables marketers to create data-driven, automated, and highly
					targeted campaigns across multiple channels.</p>
				<p>Curious about how to master SFMC?</p>
				<p>
					Join this PCS Cloud Masterclass with industry expert <span
						class="highlight">Alok Halder</span> on <span class="highlight">Tuesday,
						18th March</span>, from <span class="highlight">7:30 PM</span>. Learn the
					essential skills, use cases, and career pathways in Salesforce
					Marketing Cloud, along with expert tips on how to crack interviews
					and excel in the field.
				</p>
			</div>

			<div class="info-section bg-light rounded mt-3">
				<h5 class="title text-black p-2">What you will gain from this
					Masterclass</h5>
				<ul>
					<li>Understand how Salesforce Marketing Cloud helps businesses
						automate and optimize customer engagement</li>
					<li>Learn key SFMC features, including Journey Builder, Email
						Studio, and Automation Studio</li>
					<li>Get insights into SFMC career opportunities and tips on
						landing top roles</li>
				</ul>
			</div>

			<div class="container mt-4">
				<div class="section-header">Meet Alok Halder</div>
				<div class="content-section">
					<ul>
						<li>Founder of, PCS Global</li>
						<li>Worked with Mark Zuckerberg and led the team that built
							Facebook Messenger</li>
						<li>Was responsible for setting up Facebook's office outside
							the US</li>
						<li>Ex-Tech Team Lead at Facebook</li>
						<li>Star coder who represented India in the ICPC world finals
							twice</li>
					</ul>
				</div>

				<p>
					<span class="certificate-text">Certificates:</span> All attendees
					get certificates from PCS Cloud! Please be careful while entering
					your details <br>while registering, since they will go on your
					certificates.
				</p>

				<div class="section-header">This Masterclass is for</div>
				<div class="audience-section">
					<div class="audience-item">
						<p>
							<i class="fa-solid fa-book-open-reader"></i> Marketers and
							Marketing Analysts looking to upskill in marketing automation
						</p>
					</div>
					<div class="audience-item">
						<p>
							<i class="fa-solid fa-chalkboard-user"></i> Marketing
							Professionals wanting to transition into Salesforce Marketing
							Cloud roles
						</p>
					</div>
				</div>
			</div>


			<!-- Footer -->
			<div class="footer">
				<footer>
					<p>
						Need Help? Talk to us at <a href="tel:08047939631"
							class="text-white">08047939631</a> or <a href="#"
							class="text-white">Request a Call</a>
					</p>
				</footer>
			</div>






			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
			<script>
        // Toggle mobile form
        const formToggleBtn = document.getElementById('formToggleBtn');
        const mobileFormContainer = document.getElementById('mobileFormContainer');
        const closeFormBtn = document.getElementById('closeFormBtn');
        
        formToggleBtn.addEventListener('click', () => {
            mobileFormContainer.classList.toggle('active');
        });
        
        closeFormBtn.addEventListener('click', () => {
            mobileFormContainer.classList.remove('active');
        });
    </script>
</body>
</html>