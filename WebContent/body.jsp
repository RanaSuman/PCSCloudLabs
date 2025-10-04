<!DOCTYPE html>
<html>
<head>
<%@include file="base.jsp"%>
<style>

/* =============================Blog Starts Here =============================== */

/* Main Blog Section */
.blog {
	padding: 0 0;
	background-color: #f9f9f9;
}

.session-title h2 {
	font-size: 2.5rem;
	font-weight: bold;
	color: #333;
	text-align: center;
	margin-bottom: 15px;
	animation: fadeIn 1s ease-in-out;
}

.session-title p {
	text-align: center;
	color: #777;
	font-size: 1.1rem;
	margin-bottom: 50px;
	animation: fadeIn 1.2s ease-in-out;
}

/* Blog Post Card */
.blog-singe {
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	margin-bottom: 30px;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	display: flex;
	flex-direction: row;
	animation: fadeInCard 1s ease-in-out forwards;
}

/* Hover Effect */
.blog-singe:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

.blog-img-tab img {
	width: 100%;
	height: auto;
	object-fit: cover;
	border-radius: 10px;
	transition: transform 0.3s ease;
}

/* Image Zoom on Hover */
.blog-singe:hover .blog-img-tab img {
	transform: scale(1.05);
}

.blog-content-tab {
	padding: 20px;
	flex: 1;
}

.blog-content-tab h2 {
	font-size: 1.8rem;
	color: #333;
	font-weight: bold;
	margin-bottom: 15px;
}

.blog-content-tab p {
	color: #666;
	font-size: 1rem;
	margin-bottom: 20px;
}

.blog-content-tab i {
	color: #007bff;
	margin-right: 8px;
}

.blog-content-tab .fa-eye, .blog-content-tab .fa-comments {
	font-size: 1.1rem;
}

.blog-content-tab a {
	font-size: 1.1rem;
	font-weight: bold;
	color: #007bff;
	text-decoration: none;
	display: inline-flex;
	align-items: center;
	transition: color 0.3s ease;
}

.blog-content-tab a:hover {
	color: #0056b3;
}

.blog-content-tab a i {
	margin-left: 10px;
}

/* Responsive Adjustments */
@media ( max-width : 768px) {
	.blog-singe {
		flex-direction: column;
	}
	.blog-img-tab {
		margin-bottom: 20px;
	}
}

/* Animations */
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeInCard {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.key-feature {
	background-color: #f8f9fa; /* Light background for contrast */
	padding: 60px 0;
}

.session-title h2 {
	font-size: 2rem;
	color: #343a40;
}

.session-title p {
	color: #6c757d;
	font-size: 1.1rem;
	margin-top: -10px;
}

.key-div {
	transition: transform 0.3s ease;
}

.key-div:hover {
	transform: scale(1.05);
}

.key-cover {
	background: #ffffff;
	padding: 30px 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	height: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

.key-cover i {
	font-size: 3rem;
	color: #007bff; /* Primary color for icons */
	margin-bottom: 15px;
}

.key-cover h4 {
	color: #343a40;
	font-weight: 700;
	font-size: 1.25rem;
	margin-bottom: 10px;
}

.key-cover p {
	color: #6c757d;
	font-size: 0.95rem;
	margin-bottom: 0;
}
/* =============================Styling for Key Features Ends Here  =============================== */
/* =============================Styling for Cources Starts Here   =============================== */
.cources {
	background-color: #f5f8fa;
	padding: 60px 0;
}

.session-title h2 {
	font-size: 2.5rem;
	color: #343a40;
	text-align: center;
	font-weight: bold;
	margin-bottom: 10px;
	animation: fadeIn 1s ease-in-out;
}

.session-title p {
	text-align: center;
	color: #6c757d;
	font-size: 1.1rem;
	margin-bottom: 40px;
	animation: fadeIn 1.2s ease-in-out;
}

/* Course Card Container Styling */
.cours-ro {
	display: flex;
	flex-wrap: wrap;
	gap: 30px;
	justify-content: center;
}

/* Ensure all course cards are the same size */
.cord-div {
	flex: 1 1 calc(33% - 30px); /* Ensures 3 items per row */
	max-width: 350px; /* Ensures the card doesnÃ¢ÂÂt get too large */
	min-width: 300px;
	margin-bottom: 30px;
	display: flex;
	justify-content: center;
}

/* Card Styling */
.cours-card {
	background: #ffffff;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	animation: fadeInCard 1s ease forwards;
	transform: translateY(20px);
}

/* Hover Effects */
.cours-card:hover {
	transform: translateY(-10px) scale(1.03);
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

.cours-card img {
	width: 100%;
	height: 180px;
	object-fit: cover;
	transition: transform 0.3s ease;
}

/* Hover effect for the image */
.cours-card:hover img {
	transform: scale(1.05);
}

.cours-name {
	background-color: #007bff;
	padding: 15px;
	text-align: center;
	color: #ffffff;
}

.cours-name h2 {
	font-size: 1.5rem;
	margin: 0;
}

/* Course Detail Styling */
.course-detail {
	padding: 20px;
	text-align: center;
}

.course-detail h5 {
	color: #343a40;
	font-weight: bold;
	font-size: 1.1rem;
	margin-bottom: 15px;
}

.course-detail p {
	color: #6c757d;
	font-size: 0.95rem;
}

.course-detail .star i {
	color: #ffcc00;
}

/* Button Styling with Animation */
.course-detail button {
	margin-top: 15px;
	color: #ffffff;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	padding: 8px 20px;
	font-size: 0.9rem;
	font-weight: bold;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

.course-detail button:hover {
	background-color: #0056b3;
	transform: scale(1.1);
}

/* Animations */
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeInCard {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #e0e0e0;
}

.testimonial-section {
	background: #2782c2;
	color: black;
	padding: 60px 0;
	position: relative;
}

.testimonial-overlay {
	position: relative;
	z-index: 1;
}

.content-container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 0 20px;
}

.testimonial-content {
	margin: 0 auto;
}

.testimonial-content h1 {
	margin-top: 120px;
	font-size: 32px;
	font-weight: bold;
}

.testimonial-slider {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 25px;
	margin-top: 40px;
}

.testimonial-card {
	background: #FFF;
	padding: 25px;
	border-radius: 10px;
	text-align: center;
	max-width: 400px;
	box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
}

.avatar-wrapper {
	margin-bottom: 20px;
}

.diamond {
	display: inline-block;
	width: 100px;
	height: 100px;
	background: #444;
	clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
	overflow: hidden;
}

.diamond img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.testimonial-name {
	font-size: 22px;
	margin: 12px 0 6px;
}

.testimonial-role {
	font-size: 16px;
	color: #aaa;
	margin-bottom: 10px;
}

.testimonial-text {
	font-size: 15px;
	line-height: 1.8;
}

@media ( max-width : 768px) {
	.testimonial-slider {
		flex-direction: column;
		gap: 20px;
	}
	.testimonial-content h1 {
		font-size: 28px;
		margin-top: 100px;
	}
}

@media ( max-width : 480px) {
	.testimonial-section {
		padding: 40px 0;
	}
	.testimonial-card {
		padding: 20px;
	}
	.testimonial-content h1 {
		font-size: 24px;
		margin-top: 80px;
	}
	.testimonial-name {
		font-size: 20px;
	}
	.testimonial-text {
		font-size: 14px;
	}
}

@media screen and (max-width: 575px) {
	.container {
		padding: 10px 15px;
	}
}

/* =============================Styling for Cources Ends Here  =============================== */
/* =============================Styling for Testimonial Starts Here  =============================== */
body {
	font-family: Arial, sans-serif;
	background-color: #f5f7fa;
	margin: 0;
	padding: 0;
}

.conta {
	max-width: 800px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease;
}

.conta:hover {
	border: 2px solid #38b6ff;
	transform: scale(1.05); /* Zoom effect */
}

.headr {
	text-align: center;
	margin-bottom: 20px;
}

.headr h1 {
	font-size: 24px;
	font-weight: bold;
	color: #38b6ff;
	margin: 0;
}

.headr h2 {
	font-size: 32px;
	font-weight: bold;
	color: #38b6ff;
	margin: 10px 0 0;
}

.testimonial {
	font-size: 18px;
	font-weight: 600;
	color: #333;
	line-height: 1.6;
	margin-bottom: 20px;
	display: none;
}

.testimonial.active {
	display: block;
}

.testimonial i {
	color: #ffc107;
	font-size: 24px;
	vertical-align: middle;
}

.authr {
	font-size: 18px;
	color: #38b6ff;
	font-weight: bold;
	margin-bottom: 5px;
}

.rol {
	font-size: 16px;
	font-weight: bold;
	color: #666;
	margin-bottom: 10px;
}

.stars {
	color: #ffc107;
	font-size: 20px;
}

.navigatin {
	text-align: center;
	margin-top: 20px;
}

.navigatin button {
	background-color: #38b6ff;
	color: #fff;
	border: none;
	border-radius: 4px;
	padding: 10px 15px;
	margin: 0 5px;
	cursor: pointer;
	font-size: 18px;
}

.navigatin button i {
	vertical-align: middle;
}
/* =============================Styling for Testimonial Ends Here  =============================== */
/* =============================Styling for Team Starts Here  =============================== */
/* Team Section */
.our-team {
	padding: 80px 0;
	background-color: #f5f5f5;
}

.session-title h2 {
	font-size: 2.5rem;
	font-weight: bold;
	color: #333;
	text-align: center;
	margin-bottom: 15px;
	animation: fadeIn 1s ease-in-out;
}

.session-title p {
	text-align: center;
	color: #777;
	font-size: 1.1rem;
	margin-bottom: 50px;
	animation: fadeIn 1.2s ease-in-out;
}

/* Team Cards */
.team-row {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	gap: 30px;
}

.single-usr {
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	text-align: center;
	width: 100%;
	max-width: 300px;
	margin: 0 auto;
	cursor: pointer;
	animation: fadeInCard 1s ease-in-out forwards;
}

.single-usr:hover {
	transform: translateY(-8px);
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.single-usr img {
	width: 100%;
	height: 250px;
	object-fit: cover;
	transition: transform 0.3s ease;
	border-bottom: 3px solid #007bff;
}

.single-usr:hover img {
	transform: scale(1.05);
}

.det-o {
	padding: 20px;
}

.det-o h4 {
	font-size: 1.3rem;
	font-weight: bold;
	color: #333;
	margin-bottom: 5px;
}

.det-o i {
	font-size: 1.1rem;
	color: #007bff;
}

/* Responsive Design */
@media ( max-width : 768px) {
	.team-row {
		flex-direction: column;
		align-items: center;
	}
}

/* Animations */
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes fadeInCard {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.methodology-section {
	background-color: #f8f9fa;
	padding: 50px 0;
	text-align: center;
}

.video-container {
	max-width: 560px;
	margin: auto;
}

.card {
	border: none;
	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
	padding: 20px;
}

.video-thumbnail {
	position: relative;
	cursor: pointer;
}

.video-thumbnail img {
	width: 100%;
	border-radius: 5px;
}

.video-thumbnail .play-button {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: rgba(0, 0, 0, 0.6);
	padding: 15px;
	border-radius: 50%;
}

.play-button i {
	font-size: 48px;
	color: white;
}

.methodpara {
	font-size: 18px;
}

/* =============================Styling for Team Ends Here  =============================== */
/* =============================Styling for Drop-us-a-Query Ends Here  =============================== */
/* Ensures images and SVGs align vertically in the middle and have a max width of 100% */
img, svg {
	vertical-align: middle;
	max-width: 100%;
}

/* Styling for title text color */
.title_color {
	color: #fff;
}

/* Styling for the main title of the section */
.query-title {
	font-size: 15px;
	font-weight: 600;
	font-stretch: normal;
	line-height: 1.73;
	letter-spacing: normal;
	text-align: left;
	display: flex;
}

/* Class for elements with a background color change */
.color_change {
	background-color: #2782c2;
	color: #fff;
}

/* Media query for small screen devices */
@media only screen and (max-width: 767px) and (min-width: 300px) {
	/* Removes border radius for smaller screens */
	.query-header {
		border-radius: 0;
	}
}

/* Transition effect for closing elements */
.query-closed {
	-webkit-transition: .8s;
	transition: .8s;
}

/* Styling for the collapsible header section */
.query-header {
	height: 40px;
	width: 100%;
	background-color: #2782c2;
	padding: 10px 20px;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	cursor: pointer;
}

/* Styling for the chevron icon in the collapsible header */
.query-chevron-icon svg {
	width: 14px;
	height: 14px;
}

/* Center-aligns the image in the top section */
.query-top-section .query-box-img-center {
	text-align: center;
}

/* Styling for the "Talk to Us" section */
.query-talktous {
	color: #192f60;
	text-align: center;
	margin-top: 5px;
	margin-bottom: 20px;
	position: relative;
	top: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	grid-gap: 15px;
	gap: 15px;
}

/* Styling for the "Talk to Us" links */
.query-talktous .query-talktous-info a {
	font-size: 18px;
	font-weight: 600;
	text-align: left;
	line-height: 18px;
	color: #2782c2 !important;
}

/* Phone number and logo section */
.query-talktous .query-talktous-icon span {
	line-height: 0;
	width: 35px;
	height: 35px;
	display: inline-block;
	background-color: #2782c2;
	border-radius: 5px;
}

/* Styling for the SVG in the phone number section */
.query-talktous .query-talktous-icon span svg {
	fill: #fff !important;
	width: 20px;
	height: 20px;
	margin-top: 7px;
}

/* Styling for the phone number info */
.query-talktous .query-talktous-info span {
	font-size: 13px;
	display: block;
	color: #2782c2 !important;
}

/* Styling for the form section */
.position-relative {
	position: relative !important;
}

/* Margin for form groups */
.form-group {
	margin-bottom: 1rem;
}

/* Styling for form labels */
.query-otp-view form label {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

/* Styling for the country code dropdown */
.countrycodedropdown_country_select_section__2bcnJ .countrycodedropdown_inputIndicator__LnPYl
	{
	display: flex;
	flex-direction: column;
	flex-wrap: wrap;
	position: absolute;
}

/* Adds padding to the phone number input */
.duq_phone_input__2DDjE {
	padding-left: 100px;
}

/* Styling for form input fields */
.duq_input__se4iR {
	font-size: 14px;
	line-height: 1.5;
	color: #192f60;
	font-weight: 600;
	height: 41px;
	border: 1px solid #6a7180;
}

.duq_input__se4iR1 {
	font-size: 14px;
	line-height: 1.5;
	color: #192f60;
	font-weight: 600;
	height: 81px;
	border: 1px solid #6a7180;
}

/* Styling for the submit button */
.query-container.query-color .query-submit {
	background-color: #2782c2 !important;
}

/* Basic styling for the submit button */
.query-submit {
	border-radius: 3px;
	width: 100%;
	padding: 13px;
	font-size: 15px;
	font-weight: 600;
	text-align: center;
	color: #fff;
	border: none;
	margin-top: 10px;
}

/* Styling for the body section of the form */
.query-body {
	width: 100%;
	background-color: #fff;
	padding: 10px 25px 20px;
	-webkit-transition: 1s;
	transition: 1s;
}

/* Media query for mobile screens */
@media only screen and (max-width: 767px) and (min-width: 300px) {
	.duq-mweb {
		bottom: 0 !important;
		right: 0 !important;
		width: 100% !important;
		height: 100% !important;
		z-index: 1033 !important;
		overflow: auto;
	}
}

/* Styling for the fixed container */
.query-container {
	position: fixed;
	bottom: 0;
	right: 0;
	box-shadow: 0 0 12px 0 rgba(0, 0, 0, .16);
	width: 360px;
	z-index: 1031;
}

/* Styling for the collapsible header */
.collapsible {
	color: #fff;
	cursor: pointer;
	padding: 15px;
	width: 100%;
	text-align: left;
	border: none;
	outline: none;
	font-size: 18px;
	transition: background-color 0.3s;
}

/* Hover effect for collapsible header */
.collapsible:hover {
	background-color: #3a4d82;
}

/* Styling for collapsible content */
.content {
	padding: 10px 15px;
	display: none;
	overflow: hidden;
	background-color: #fff;
	border: 1px solid #ddd;
	border-top: none;
}

/* Chevron icon rotation when content is open */
.chevron {
	float: right;
	transition: transform 0.3s;
	fill: #fff;
}

/* Rotates the chevron icon */
.chevron.rotate {
	transform: rotate(180deg);
}

/* Ensures collapsible behavior */
.collapsible {
	cursor: pointer;
}

.collapsible:hover {
	background-color: none;
}

.content {
	display: none;
	overflow: hidden;
}

.chevron.rotate {
	transform: rotate(180deg);
}

/* Styling for the Phone Number Input Field */
.phone-input-container-custom {
	max-width: 500px; /* Maximum width */
	width: 100%; /* Full width on smaller screens */
	margin: 0 auto; /* Centering the container */
}

.phone-input-custom {
	display: flex;
	align-items: center;
	border: 1px solid #ccc;
	border-radius: 4px;
	background-color: #fff;
	padding: 5px;
	width: 100%; /* Full width inside the container */
	box-sizing: border-box; /* Ensures padding doesn't affect the width */
	border: 1px solid #6a7180;
}

#countryCode-custom {
	border: none;
	background: transparent;
	margin-right: 10px;
	/* Increased spacing between country code and input */
	padding: 5px;
	outline: none;
	width: 110px;
	/* Increased width for the dropdown to fit longer country codes */
}

#phone-custom {
	flex-grow: 1;
	border: none;
	outline: none;
	padding: 5px 10px;
	width: calc(90% - 160px);
	/* Adjust width to accommodate country code */
}

.required-indicator-custom {
	color: red;
	margin-left: 5px;
}

/* Responsive Design: Adjust layout on smaller screens */
@media ( max-width : 600px) {
	.phone-input-container-custom {
		width: 100%;
	}
	#countryCode-custom {
		width: 120px; /* Slightly smaller width for mobile */
	}
	#phone-custom {
		width: calc(100% - 130px); /* Adjust width for mobile */
	}
}

#mar {
	margin: 0 0 20px 0;
}
/* Styling for make the collapse section bottom of the page */
@media only screen and (max-width: 767px) and (min-width: 300px) {
	.query-container {
		bottom: 0 !important; /* Ensures the container is at the bottom */
		right: 0 !important;
		width: 100% !important; /* Full width for smaller screens */
		height: auto !important; /* Adjust height based on content */
		z-index: 1033 !important;
		overflow: auto;
		border-radius: 0; /* Removes rounded corners for a clean edge */
	}
}

/* =============================Styling for Drop-us-a-Query Ends Here  =============================== */

/* =============================Styling for Whatsapp-Pop-Up Starts Here  =============================== */


/* =============================Styling for Whatsapp-Pop-Up Ends Here  =============================== */

</style>
</head>

<body>

	<div id="blog" class="blog">
		<div class="container">
			<div class="session-title row">
				<h2>About PCS Cloud Labs</h2>
				<!--  <p>Free Training Opportunities</p> -->
			</div>
			<div class="row">
				<!-- Blog 1 -->
				<div class="col-md-12 col-sm-12">
					<div class="blog-singe no-margin row">
						<div class="col-sm-5 blog-img-tab">
							<img src="assets/images/NewImages/image6.jpg" alt="Java Training">
						</div>
						<div class="col-sm-1 blog-img-tab"></div>
						<div class="col-sm-6 blog-content-tab">
							<h2>Welcome to PCS Cloud Labs</h2>

							<p>
								<!-- PCS Cloud Lab is an online platform that offers students from
								all over the world a first-rate educational experience.</br> </br> Our
								expertise mentors have more than six years of professional
								experience in their specialised technological fields and have
								been employed as working professionals for the past 10 to 11
								years.<br> -->
								PCS Cloud Labs is a rapidly growing online training provider, backed by a team of 100+ experienced professional trainers. To date, we have successfully trained over 30,000 students worldwide. We look forward to welcoming you on board and helping you take the next step toward a successful career with PCS Cloud Labs.
							</p>


						</div>
					</div>
					<!-- Blog 2 -->


				</div>
			</div>
		</div>
	</div>
	<!-- =============================== Blog End ===============================-->


	<div class="key-feature container-fluid">
		<div class="container">
			<div class="session-title row text-center mb-4">
				<h2 class="font-weight-bold">Key Features</h2>
				<p>PCS Cloud Labs - India's No.1 Software (IT) Training
					Institute</p>
			</div>
			<div class="row text-center">
				<div class="col-md-3 key-div mb-4">
					<div class="key-cover">
						<i class="far fa-file-word"></i>
						<h4>Expert Faculty</h4>
						<p>Empowering students to become self-reliant with enhanced
							creative and collaborative skills.</p>
					</div>
				</div>
				<div class="col-md-3 key-div mb-4">
					<div class="key-cover">
						<i class="far fa-clock"></i>
						<h4>Well Equipped Labs</h4>
						<p>Hands-on learning with our state-of-the-art cloud labs.</p>
					</div>
				</div>
				<div class="col-md-3 key-div mb-4">
					<div class="key-cover">
						<i class="fas fa-object-group"></i>
						<h4>Cross Skilling</h4>
						<p>Training in the latest emerging technologies for a
							future-ready skill set.</p>
					</div>
				</div>
				<div class="col-md-3 key-div mb-4">
					<div class="key-cover">
						<i class="fas fa-phone-volume"></i>
						<h4>24 x 7 Support</h4>
						<p>
							Reach us anytime at <strong>+91-8334001667</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--======================= Cources Starts Here =========================-->
	<div class="cources container-fluid">
		<div class="container">
			<div class="session-title row">
				<h2>Our Courses</h2>
				<p>Courses designed for continuous development by technical
					domain experts worldwide</p>
			</div>
			<div class="cours-ro row">
				<!-- Course 1: Salesforce -->
				<div class="col-md-4 col-sm-6 cord-div">
					<div class="cours-card">
						<img src="assets/images/courses/Course-5.jpeg" alt="Salesforce">
						<div class="cours-name">
							<h2>Salesforce</h2>
						</div>
						<div class="course-detail">
							<h5>Salesforce Jobs Booming!</h5>
							<p class="star">
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i>
							</p>
							<p>Salesforce Admin, Platform Development, LWC, CPQ, SFMC</p>

							<button class="btn btn-sm"
								onclick="window.location.href='salesforce.jsp'">Learn
								More</button>
						</div>
					</div>
				</div>
				<!-- Course 2: Java Full Stack -->
				<div class="col-md-4 col-sm-6 cord-div">
					<div class="cours-card">
						<img src="assets/images/courses/course-2.jpeg"
							alt="Java Full Stack">
						<div class="cours-name">
							<h2>Java Full Stack</h2>
						</div>
						<div class="course-detail">
							<h5>Core Java, Advanced Java, Framework</h5>
							<p class="star">
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i>
							</p>
							<p>Core Java, Servlets, JSP, SpringBoot, Hibernate, Angular &
								React</p>
							<button class="btn btn-sm"
								onclick="window.location.href='java.jsp'">Learn More</button>
						</div>
					</div>
				</div>
				<!-- Course 3: MEAN/MERN Stack FSD -->
				<div class="col-md-4 col-sm-6 cord-div">
					<div class="cours-card">
						<img src="assets/images/courses/Course-4.jpeg"
							alt="MEAN /MERN Stack FSD">
						<div class="cours-name">
							<h2>MEAN /MERN Stack FSD</h2>
						</div>
						<div class="course-detail">
							<h5>Mean & MERN Stack</h5>
							<p class="star">
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i>
							</p>
							<p>Mongo DB, Express, Angular, React, Node JS</p>
							<button class="btn btn-sm"
								onclick="window.location.href='mean&mern.jsp'">Learn
								More</button>
						</div>
					</div>
				</div>
				<!-- Course 4: DevOps -->
				<div class="col-md-4 col-sm-6 cord-div">
					<div class="cours-card">
						<img src="assets/images/courses/course-1.jpeg" alt="DevOps">
						<div class="cours-name">
							<h2>DevOps</h2>
						</div>
						<div class="course-detail">
							<h5>DevOps</h5>
							<p class="star">
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i>
							</p>
							<p>GIT, Jenkins, Kubernetes, Docker</p>
							<button class="btn btn-sm"
								onclick="window.location.href='devOps.jsp'">Learn More</button>
						</div>
					</div>
				</div>
				<!-- Course 5: Machine Learning / AI -->
				<div class="col-md-4 col-sm-6 cord-div">
					<div class="cours-card">
						<img src="assets/images/courses/Course-3.jpeg"
							alt="Machine Learning / AI">
						<div class="cours-name">
							<h2>Machine Learning / AI</h2>
						</div>
						<div class="course-detail">
							<h5>Data Science ML/ AI</h5>
							<p class="star">
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i>
							</p>
							<p>Machine Learning, AI</p>
							<button class="btn btn-sm"
								onclick="window.location.href='data science.jsp'">Learn
								More</button>
						</div>
					</div>
				</div>
				<!-- Course 6: Python Data Science -->
				<div class="col-md-4 col-sm-6 cord-div">
					<div class="cours-card">
						<img src="assets/images/courses/Course-6.jpeg"
							alt="Python Data Science">
						<div class="cours-name">
							<h2>Python Data Science</h2>
						</div>
						<div class="course-detail">
							<h5>Python, NumPy, Pandas, SciKit-learn, Data Analysis</h5>
							<p class="star">
								<i class="fas fa-star higlit"></i> <i class="fas fa-star higlit"></i>
								<i class="fas fa-star higlit"></i>
							</p>
							<p>Python, NumPy, Pandas, SciKit-learn, Data Analysis</p>
							<button class="btn btn-sm"
								onclick="window.location.href='python.jsp'">Learn More</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--========================== methodology-section =================================-->
	
	<section class="methodology-section">
		<div class="container">
			<h2 style="font-weight: bolder; font-size: 40px; color: black;">
				Our Methodology
			</h2>
			<p class="mb-4 methodpara">Immersing learners in a real-world
				collaborative environment, we foster technical and professional
				growth through project-based learning. This cultivates essential
				21st-century skills, ensuring industry readiness.</p>

			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="video-container">
						<a href="https://www.youtube.com/watch?v=KAp-O0JsZLE"
							target="_blank" class="video-thumbnail"> <img
							src="https://img.youtube.com/vi/KAp-O0JsZLE/maxresdefault.jpg"
							alt="Video Thumbnail">
							<div class="play-button">
								<i class="fa-brands fa-youtube"></i>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card mb-3">
						<h5 class="text-primary">
							<b>Learn <b>
						</h5>
						<p>Project-based learning environment to understand the
							practical application of theoretical concepts by deeply engaging
							the students.</p>
					</div>
					<div class="card mb-3">
						<h5 class="text-primary">
							<b>Practice</b>
						</h5>
						<p>Practice through problem-solving and project building can
							make a student an expert in their field of interest.</p>
					</div>
					<div class="card">
						<h5 class="text-primary">
							<b>Intern</b>
						</h5>
						<p>Collaborative working environment with industry mentorship
							to make young talent ready for real-world challenges.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--======================= Testimonial Starts Here =========================-->
	<div class="conta">
		<div class="headr">
			<h1>REVIEWS</h1>
			<h2>Student's Testimonials</h2>
		</div>
		<div class="testimonial active">
			<i class="fas fa-quote-left"></i> I loved PCS Cloud Salesforce
			Lightning course! The instructors were knowledgeable, the course
			material was comprehensive, and the self-paced learning allowed me to
			learn at my own speed. The hands-on exercises and supportive learning
			environment were fantastic. Highly recommend SVtech for Salesforce
			Lightning training! <i class="fas fa-quote-right"></i>
			<div class="authr">Rajesh Sharma</div>
			<div class="rol">Cloud Architect</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>
			</div>
		</div>
		<div class="testimonial">
			<i class="fas fa-quote-left"></i> I had an amazing experience with
			PCS Cloud Lab. The platform offered in-depth resources and
			interactive exercises that were extremely helpful. The lab structure
			made it easy to navigate through concepts like virtualization and
			deployment. Highly recommend this for students and professionals
			aiming to master cloud technologies. <i class="fas fa-quote-right"></i>
			<div class="authr">Anita Verma</div>
			<div class="role">Software Engineer</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star-half-alt"></i>
			</div>
		</div>
		<div class="testimonial">
			<i class="fas fa-quote-left"></i> Learning with PCS Cloud Lab has
			been a game changer for me. The step-by-step modules helped me
			understand the intricacies of cloud platforms. The hands-on approach
			ensured I could apply the concepts in real-world scenarios. This
			platform truly sets a benchmark for cloud computing education. <i
				class="fas fa-quote-right"></i>
			<div class="authr">Vikram Patel</div>
			<div class="role">DevOps Engineer</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i>
				<!-- <i class="fas fa-star"></i> -->
			</div>
		</div>
		<div class="testimonial">
			<i class="fas fa-quote-left"></i> I am incredibly impressed by PCS
			Cloud Lab. The structured modules, coupled with practical exercises,
			have given me an edge in understanding cloud architecture. The
			instructors were patient and addressed all my queries effectively.
			This platform is a perfect blend of theoretical and practical
			learning. I highly recommend it! <i class="fas fa-quote-right"></i>
			<div class="authr">Arjun Mehta</div>
			<div class="role">Full Stack Developer</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>
			</div>
		</div>
		<div class="testimonial">
			<i class="fas fa-quote-left"></i> PCS Cloud Lab is an incredible
			resource for anyone wanting to learn cloud computing. The
			comprehensive labs and interactive exercises simplified even the most
			complex topics. The assignments and projects gave me real-world
			experience, making me industry-ready. I owe a lot of my confidence in
			cloud to this platform. <i class="fas fa-quote-right"></i>
			<div class="authr">Sneha Iyer</div>
			<div class="role">Data Scientist</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star-half-alt"></i>
				<!-- <i class="fas fa-star"></i> -->
			</div>
		</div>
		<div class="testimonial">
			<i class="fas fa-quote-left"></i> PCS Cloud Lab helped me immensely
			in understanding cloud computing. The lab interface is user-friendly,
			and the content is well-organized. I particularly appreciated the
			emphasis on hands-on exercises, which made concepts like networking
			and cloud storage much clearer. It is a must-try for anyone aiming to
			excel in cloud technologies. <i class="fas fa-quote-right"></i>
			<div class="authr">Priya Nair</div>
			<div class="role">IT Manager</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>
			</div>
		</div>
		<div class="testimonial">
			<i class="fas fa-quote-left"></i> PCS Cloud Lab is an incredible
			resource for anyone wanting to learn cloud computing. The
			comprehensive labs and interactive exercises simplified even the most
			complex topics. The assignments and projects gave me real-world
			experience, making me industry-ready. I owe a lot of my confidence in
			cloud to this platform. <i class="fas fa-quote-right"></i>
			<div class="authr">Sneha Iyer</div>
			<div class="role">Data Scientist</div>
			<div class="stars">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>
			</div>
		</div>
		<div class="navigatin">
			<button id="prev">
				<i class="fas fa-arrow-left"></i>
			</button>
			<button id="next">
				<i class="fas fa-arrow-right"></i>
			</button>
		</div>
	</div>

	<script>
       const testimonials = document.querySelectorAll(".testimonial");
       let currentIndex = 0;

       document.getElementById("next").addEventListener("click", () => {
         testimonials[currentIndex].classList.remove("active");
         currentIndex = (currentIndex + 1) % testimonials.length;
         testimonials[currentIndex].classList.add("active");
       });

       document.getElementById("prev").addEventListener("click", () => {
         testimonials[currentIndex].classList.remove("active");
         currentIndex =
           (currentIndex - 1 + testimonials.length) % testimonials.length;
         testimonials[currentIndex].classList.add("active");
       });
       
     </script>
	<!--======================= Testimonial Ends Here =========================-->
	<!--======================= Team Starts Here =========================-->
	<section class="our-team team-11">
		<div class="container">
			<div class="session-title row">
				<h2>Our Trainers</h2>
				<p>Key Persons Behind PCS Cloud Labs</p>
			</div>
			<div class="row team-row">
				<!-- Team Member 1 -->
				<div class="col-md-3 col-sm-6">
					<div class="single-usr">
						<img src="assets/images/team/alok.jpg" alt="Antara Bhattacharya">
						<div class="det-o">
							<h4>Alok Halder</h4>
							<i>Salesforce Trainer</i>
						</div>
					</div>
				</div>
				
				<!-- Team Member 3 -->
				<div class="col-md-3 col-sm-6">
					<div class="single-usr">
						<img src="assets/images/team/team-memb3.jpg" alt="Arijit Sen">
						<div class="det-o">
							<h4>Arijit Sen</h4>
							<i>AWS Cloud Trainer</i>
						</div>
					</div>
				</div> 
				<!-- Team Member 4 -->
				<div class="col-md-3 col-sm-6">
					<div class="single-usr">
						<img src="assets/images/team/Anita.jpg" alt="Subhash Haldar">
						<div class="det-o">
							<h4>Anita Acharjya</h4>
							<i>Java FSD Trainer</i>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<%@include file="drop-us-a-query.jsp"%>
		<%@include file ="whatsapp-pop-up.jsp" %>
	</section>
</body>
</html>