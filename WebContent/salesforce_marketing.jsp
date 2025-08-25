<%@ page import="com.dao.QueryBean" %>
<%@ page import="java.net.URLEncoder" %>
<jsp:useBean id="query" class="com.dao.QueryBean" scope="request"/>
<jsp:setProperty name="query" property="*" />

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (query.saveToDatabase()) {
            response.sendRedirect("salesforce_marketing.jsp?status=success&name=" + URLEncoder.encode(query.getName(), "UTF-8"));
            return; // Stop further execution
        } else {
            response.sendRedirect("salesforce_marketing.jsp?status=error");
            return;
        }
    }
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Salesforce Marketing Cloud Training</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- FontAwesome CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet" />
<style>
.top-banner {
	background:  #FFA500;
	color: white;
	text-align: center;
	padding: 10px;
	font-weight: bold;
	font-size: 1.2rem;
	width: 100%;
}

.hero-section {
	background: #002d62;
	color: white;
	text-align: center;
	padding: 50px 20px;
	font-size: 1.5rem;
}

.course-info {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
	margin-top: 20px;
	padding: 0 10px;
}

@media ( max-width : 768px) {
	.top-banner {
		font-size: 1rem;
		padding: 8px;
	}
	.hero-section {
		font-size: 1.2rem;
		padding: 40px 15px;
	}
	.course-info {
		flex-direction: column;
		align-items: center;
	}
}

@media ( max-width : 480px) {
	.top-banner {
		font-size: 0.9rem;
		padding: 6px;
	}
	.hero-section {
		font-size: 1rem;
		padding: 30px 10px;
	}
	.course-info {
		gap: 15px;
	}
}


.container {
	max-width: 1200px;
	margin: auto;
	padding: 15px;
}
.container1 {
	width: 100vw;
	display:flex;
	align-items:center;
	justify-content:center;
	background-color: white;
}

.card {
	border: none;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease-in-out;
	border-radius: 10px;
	overflow: hidden;
}

.card:hover {
	transform: scale(1.05);
}

.card-title {
	font-weight: bold;
	text-align: center;
}

.btn-custom {
	border-radius: 50px;
	font-weight: bold;
	padding: 10px 20px;
	text-align: center;
	display: block;
	width: 100%;
	max-width: 200px;
	margin: 10px auto;
}

.btn-blue {
	background-color: #6a5acd;
	color: white;
}

.btn-green {
	background-color: #00d1a0;
	color: white;
}

.btn-pink {
	background-color: #d11a7a;
	color: white;
}

@media ( max-width : 768px) {
	.card {
		margin: 10px;
		padding: 15px;
		text-align: center;
	}
	.btn-custom {
		font-size: 14px;
		padding: 8px 16px;
	}
}

@media ( max-width : 480px) {
	.container {
		padding: 10px;
	}
	.card {
		padding: 10px;
	}
	.btn-custom {
		font-size: 12px;
		padding: 6px 12px;
	}
}

.batch-card {
	background: white;
	padding: 15px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease-in-out;
}

.batch-card:hover {
	transform: scale(1.05);
}

.batch-label {
	background: black;
	color: white;
	font-size: 14px;
	padding: 5px 10px;
	border-radius: 5px;
	display: inline-block;
	margin-bottom: 10px;
}

.batch-date {
	font-weight: bold;
	font-size: 18px;
}

.enroll-link {
	color: red;
	font-weight: bold;
	text-decoration: none;
}

.enroll-link:hover {
	text-decoration: underline;
}

.content {
	padding: 40px 10px;
}

.query-form {
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	max-width: 600px;
	margin: auto;
}

.query-form input, .query-form textarea, .query-form select {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	font-size: 16px;
}

.related-blogs a {
	color: blue;
	text-decoration: none;
}

.related-blogs a:hover {
	text-decoration: underline;
}

@media ( max-width : 768px) {
	.query-form {
		padding: 15px;
		max-width: 90%;
	}
	.content {
		padding: 20px 5px;
	}
}

@media ( max-width : 480px) {
	.query-form {
		padding: 10px;
		max-width: 95%;
	}
	.query-form input, .query-form textarea, .query-form select {
		font-size: 14px;
		padding: 8px;
	}
}

.faq-section {
	max-width: 800px;
	margin-right: 10px;
}

.question {
	font-weight: bold;
	color: black;
}

.icon {
	color: red;
}

<!--Feature-->
.et_pb_module {
	font-family: Arial, sans-serif;
	padding: 20px;
	background-color: #f8f8f8;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.et_pb_text {
	margin: 0;
}

.et_pb_text_inner h1 {
	font-size: 24px;
	color: #333;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 0 auto;
}

td {
	padding: 10px;
	text-align: left;
	font-size: 16px;
	color: #333;
}

td:first-child {
	width: 50%;
}

td {
	border-bottom: 1px solid #ddd;
}

td:nth-child(even) {
	padding-left: 20px;
}

table tr:last-child td {
	border-bottom: none;
}

table tr:nth-child(odd) {
	background-color: #fafafa;
}

table tr:nth-child(even) {
	background-color: #fff;
}

table td::before {
	margin-right: 8px;
	color: #28a745;
}

}
<!--end-->
<!--dropdown-->
/* Custom CSS for accordion and button */
.accordion-button {
	background-color: #007bff;
	color: white;
	font-weight: bold;
}

.accordion-button.collapsed {
	background-color: #0056b3;
}

.accordion-body ul {
	padding-left: 20px;
}

.accordion-item {
	border: 1px solid #ddd;
	margin-bottom: 10px;
}

.accordion-header button {
	border: none;
}

/* Adjusting button hover effect */
.accordion-button:hover {
	background-color: #0056b3;
}
<!--end-->
</style>
</head>
<body>
	<div class="top-banner">
		SPECIAL OFFER: ACCESS SELF-PACED COURSES AT A DISCOUNTED PRICE! <span>
			</span>
	</div>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container1">
			<img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo"
									style="width: 300px; margin-bottom: 10px; margin-left: 55px;">
		 	<button class="navbar-toggler" type="button" style="margin-right: 55px;"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			  <div class="collapse navbar-collapse" id="navbarNav" style="margin-right: 65px;">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item">
						<a class="nav-link" href="index.jsp" style="font-size: 20px; font-weight: bold;">Home</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="hero-section">
		<h1>Salesforce Marketing Cloud Training | #1 SFMC Course</h1>
		<div class="course-info">
			<span>&#x23F0; 24 hours</span>
			<!-- Clock icon -->
			<span>&#x1F4F9; 30 Videos</span>
			<!-- Video icon -->
			<span>&#x1F514; 4000 Participants</span>
			<!-- Bell icon -->
			<span>&#x1F393; 2000 Reviews |4.8
				&#x2B50;&#x2B50;&#x2B50;&#x2B50;&#x2B50;</span>
		</div>

	</div>

	<div class="container text-center mt-5">
		<h2>Choose a Plan that Works for You</h2>
	</div>
	<div class="container py-5">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card text-center p-4">
					<h5 class="card-title">Self Paced</h5>
					<p class="text-muted">Unlimited Access</p>
					<i class="fas fa-envelope fa-3x d-block mx-auto"></i>
					<ul class="list-unstyled mt-3">
						<li>Advanced sessions</li>
						<li>Interview Q&A</li>
						<li>Free study Materials</li>
						<li>Premium Technical Support</li>
					</ul>
					<a href="#" class="btn btn-custom btn-blue mt-3">CONTACT US</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card text-center p-4">
					<h5 class="card-title">Instructor Led Live Training</h5>
					<p class="text-muted">Unlimited Access</p>
					<i class="fas fa-chalkboard-teacher fa-3x d-block mx-auto"></i>
					<ul class="list-unstyled mt-3">
						<li>Live Instructor</li>
						<li>Advanced sessions</li>
						<li>Interview Q&A</li>
						<li>Premium Technical Support</li>
					</ul>
					<a href="#" class="btn btn-custom btn-green mt-3">CONTACT US</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card text-center p-4">
					<h5 class="card-title">Corporate Training</h5>
					<p class="text-muted">Unlimited Access</p>
					<i class="fas fa-users fa-3x d-block mx-auto"></i>
					<ul class="list-unstyled mt-3">
						<li>Live Instructor</li>
						<li>Advanced sessions</li>
						<li>Interview Q&A</li>
						<li>Premium Technical Support</li>
					</ul>
					<a href="#" class="btn btn-custom btn-pink mt-3">CONTACT US</a>
				</div>
			</div>
		</div>
	</div>


	<div class="container py-5">
		<h2 class="text-center mt-5">Upcoming Batches IST</h2>
		<div class="row justify-content-center gy-4">
			<div class="col-md-4 col-sm-6">
				<div class="batch-card text-center">
					<span class="batch-label">Weekday</span>
					<p class="batch-date">April 20 (1 HR A DAY)</p>
					<!--  <p>07:00 AM IST</p>-->
					<a href="#" class="enroll-link">Enroll Now &rarr;</a>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="batch-card text-center">
					<span class="batch-label">Weekday</span>
					<p class="batch-date">April 25 (1 HR A DAY)</p>
					<!-- <p>08:00 PM IST</p>-->
					<a href="#" class="enroll-link">Enroll Now &rarr;</a>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="batch-card text-center">
					<span class="batch-label">Weekend</span>
					<p class="batch-date">April 30 (1 HR A DAY)</p>
				<!-- 	<p>09:00 AM IST</p>-->
					<a href="#" class="enroll-link">Enroll Now &rarr;</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container content">
		<div class="row">
			<!-- Course Description -->
			<div class="col-lg-8">
				<h2>Course Description</h2>
				<p>
					<strong>Salesforce Marketing Cloud</strong> is a comprehensive
					platform designed to help businesses automate and analyze their
					marketing efforts. It offers tools for managing campaigns across
					multiple channels, including email, mobile, social media, and web.
					The platform also provides analytics to track performance, lead
					management to nurture prospects, and actionable insights to improve
					customer engagement. By utilizing these features, companies can
					drive growth and refine their marketing strategies.
				</p>

				<p>Salesforce's platform is designed for seamless integration
					with other products, enabling businesses to create a cohesive
					customer experience across various systems.</p>

				<p>Marketing Cloud Salesforce training is an all-in-one
					automation platform for managing customer relationships and
					campaigns. It empowers businesses to customize customer
					interactions, automate marketing workflows, and monitor campaign
					performance in real-time.</p>

				<p>
					The comprehensive <strong>Salesforce Marketing Cloud
						courses</strong> are tailored to help businesses of all sizes enhance their
					marketing capabilities. With an intuitive interface and advanced
					features, users can build targeted campaigns, track results, and
					continuously optimize their strategies for success.
				</p>

				<p>Salesforce Marketing Cloud training equips businesses with
					everything they need to enhance sales, increase customer
					engagement, and drive more traffic to their websites.</p>

				<p>With more than 15 years of experience, our certified trainers
					will provide you with the tools and knowledge to leverage
					Salesforce products effectively.</p>

				<p>The platform is built to support various stages of the cloud
					experience, utilizing Studio & Builder components for
					implementation across all phases.</p>

				<p>Our online Salesforce Marketing Cloud training covers
					essential components like Email Studio, Content Builder, Analytics
					Builder, Web Studio, and more, ensuring a comprehensive learning
					experience.</p>

				<p>Take advantage of the opportunity to earn certifications in
					Salesforce ExactTarget training, guided by our expert trainers, and
					move forward in your professional journey.</p>

				<p>Depending on your selected module, you can get 24/7 support
					with SFMC training from us, gaining deep insights into the
					Marketing Cloud Salesforce platform.</p>

				<p>Enhance your career prospects with SFMC training offered by
					PCS Cloud lab. Upon completing the course, you'll be
					well-prepared to pass various certification exams for Salesforce
					Marketing Cloud.</p>

				<p>Salesforce Marketing Cloud training online provides the tools
					necessary to deliver personalized, multi-channel journeys across
					devices, ensuring consistent customer engagement.</p>

				<p>The Salesforce Marketing Cloud course covers the core
					elements needed to start leveraging Salesforce Marketing operations
					effectively.</p>

				<p>Even if you're new to marketing automation, the SFMC training
					course is designed to transform you into a capable Marketing Cloud
					specialist, equipping you with essential skills to design and
					execute marketing campaigns using the Salesforce ExactTarget
					platform.</p>

				
				<br>
				<h1>Features</h1>
				<div
					class="et_pb_module et_pb_text et_pb_text_11  et_pb_text_align_left et_pb_bg_layout_light">


					<div class="et_pb_text_inner">

						<table width="184">
							<tbody>
								<tr>
									<td style="width: 84px;">&#x2705; Lifetime access</td>
									<td style="width: 84px;">&#x2705;Lifetime video access</td>
								</tr>
								<tr>
									<td style="width: 84px;">&#x2705;Real-time case studies</td>
									<td style="width: 84px;">&#x2705;The project integrated
										into the Curriculum</td>
								</tr>
								<tr>
									<td style="width: 84px;">&#x2705;24*7 Support from our
										team of administrators</td>
									<td style="width: 84px;"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- accordion -->
				<div class="container mt-4">
					<div class="accordion" id="featureAccordion">
						<!-- Email Studio -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#emailStudio">
									<b>1. Email Studio</b>
								</button>
							</h2>
							<div id="emailStudio" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Administration</li>
										<li>Subscribers
											<ul>
												<li>Lists</li>
												<li>All Subscribers List</li>
												<li>Exclusion List</li>
												<li>Publication Lists</li>
												<li>Suppression Lists</li>
												<li>Data Extensions</li>
											</ul>
										</li>
										<li>Create &amp; Send an Email Live Example</li>
										<li>Classic Content</li>
										<li>Types of Sends</li>
										<li>Send Logging</li>
										<li>A/B Testing</li>
										<li>Tracking</li>
										<li>Triggered Sends</li>
										<li>Overview</li>
										<li>Use-case and examples</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Contact Builder -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#contactBuilder">
									<b>2. Contact Builder</b>
								</button>
							</h2>
							<div id="contactBuilder" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Data Extensions
											<ul>
												<li>All Contacts</li>
												<li>Data Sources</li>
												<li>Imports</li>
												<li>Data Designer</li>
												<li>Contact Deletion</li>
												<li>Best Practices</li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Content Builder -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#contentBuilder">
									<b>3. Content Builder</b>
								</button>
							</h2>
							<div id="contentBuilder" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Emails</li>
										<li>Templates</li>
										<li>Content Blocks</li>
										<li>Code Snippet</li>
										<li>Best Practices</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Mobile Studio -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#mobileStudio">
									<b>4. Mobile Studio</b>
								</button>
							</h2>
							<div id="mobileStudio" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Mobile Connect
											<ul>
												<li>Administration</li>
												<li>Import &amp; Manage Contacts</li>
												<li>Messages</li>
											</ul>
										</li>
										<li>Mobile Push
											<ul>
												<li>Notifications</li>
											</ul>
										</li>
										<li>Analytics Builder</li>
										<li>Reports
											<ul>
										</li>
										<li>Standard Reports</li>
										<li>Discover</li>
									</ul>
									</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Analytics Builder -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#analyticsBuilder">
									<b>5. Analytics Builder</b>
								</button>
							</h2>
							<div id="analyticsBuilder" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Reports</li>
										<li>Standard Reports</li>
										<li>Discover</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Automation Studio -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#automationStudio">
									<b>6. Automation Studio</b>
								</button>
							</h2>
							<div id="automationStudio" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Create and Schedule an Automation</li>
										<li>Automation Studio Activities
											<ul>
												<li>SQL Query Activity</li>
												<li>SQL Queries – examples</li>
												<li>Data Views &amp; its usage</li>
												<li>Send Email Activity</li>
												<li>Import File Activity</li>
												<li>File Transfer Activity</li>
												<li>Script Activity</li>
												<li>Filter Activity</li>
												<li>Data Extract Activity</li>
												<li>Wait Activity</li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Web Studio -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#webStudio">
									<b>7. Web Studio (Cloud Pages)</b>
								</button>
							</h2>
							<div id="webStudio" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Landing Pages</li>
										<li>Smart Capture Form</li>
										<li>Examples and use-cases</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Journey Builder -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#journeyBuilder">
									<b>8. Journey Builder</b>
								</button>
							</h2>
							<div id="journeyBuilder" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Journey Creation – Live Example</li>
										<li>Journey Templates</li>
										<li>Journey Entry Sources
											<ul>
												<li>Data Extension</li>
												<li>Audience</li>
												<li>Salesforce Data Events</li>
												<li>Events</li>
											</ul>
										</li>
										<li>Journey Canvas Activities
											<ul>
												<li>Wait Activity</li>
												<li>Send Email Activity</li>
												<li>Decision Splits</li>
												<li>Engagement Splits</li>
												<li>Random Splits</li>
												<li>Joins Activity</li>
												<li>Update Contact Activity</li>
												<li>Sales and Services Cloud Activities</li>
											</ul>
										</li>
										<li>Goals</li>
										<li>Journey Settings</li>
										<li>Journey Testing</li>
										<li>Journey History &amp; Reports</li>
										<li>Real Time scenarios and errors</li>
										<li>Best Practices</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Marketing Cloud Connect -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse"
									data-bs-target="#marketingCloudConnect">
									<b>9. Marketing Cloud Connect</b>
								</button>
							</h2>
							<div id="marketingCloudConnect"
								class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Installation steps</li>
										<li>Use Cases
											<ul>
												<li>Email sends</li>
												<li>Journey Builder Integration</li>
												<li>Salesforce Entry Sources</li>
											</ul>
										</li>
										<li>Real Time scenarios and errors</li>
										<li>Troubleshooting
											<ul>
												<li>Capture API logs</li>
											</ul>
										</li>
										<li>Best Practices</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- AMPScript -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#ampscript">
									<b>10. AMPSCRIPT</b>
								</button>
							</h2>
							<div id="ampscript" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Live examples</li>
										<li>Real-time Use cases
											<ul>
												<li>How to use Ampscript in Emails</li>
												<li>How to use Ampscript in SMS &amp; Push Messages</li>
												<li>How to use Ampscript in Cloud Pages</li>
											</ul>
										</li>
										<li>Commonly used functions</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- SSJS -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#ssjs">
									<b>11. SSJS</b>
								</button>
							</h2>
							<div id="ssjs" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>Overview</li>
										<li>Live examples</li>
										<li>How to use SSJS in Cloud Pages</li>
										<li>Use cases</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- API -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#api">
									<b>12. API</b>
								</button>
							</h2>
							<div id="api" class="accordion-collapse collapse"
								data-bs-parent="#featureAccordion">
								<div class="accordion-body">
									<ul>
										<li>SOAP API
											<ul>
												<li>Overview</li>
												<li>WSDL and Endpoints</li>
												<li>Live examples using SOAP UI tool</li>
											</ul>
										</li>
										<li>REST API
											<ul>
												<li>API App creation</li>
												<li>API endpoints</li>
												<li>Live examples using POSTMAN tool</li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end -->
				<br>
				<div class="faq-section">
					<h2>
						<strong>FAQ</strong>
					</h2>

					<p class="question">
						<span class="icon"></span> <strong>What is in Salesforce
							Marketing Cloud?</strong>
					</p>
					<p>&#x2705; For marketers, Salesforce Marketing Cloud is a
						customer relationship management (CRM) platform that enables them
						to establish and oversee marketing connections and campaigns with
						clients.</p>
					<p>Customer journey management, email, mobile, social media,
						site personalization, advertising, content production, content
						management, and data analysis are all connected into the Marketing
						Cloud.</p>
					<p>Predictive analytics are a feature of the software that may
						be used to help decide which channel would be best for a
						particular message, for instance, campaigns can be customized to
						clients, behavior and needs, demographics, and preferred
						communication channels with the aid of a component called Journey
						Builder.</p>

					<p class="question">
						<span class="icon"></span> <strong>What is the difference
							between Salesforce and Marketing Cloud?</strong>
					</p>
					<p>&#x2705; Salesforce Sales Cloud is designed to close sales
						and generate revenue, whereas Salesforce Marketing Cloud is meant
						to find leads and direct them toward your product or service.</p>
					<p>
						<strong>What is Marketing Cloud in Salesforce?</strong>
					</p>
					<p>&#x2705; When it comes to marketing automation and customer
						engagement, Salesforce has a platform (or “Cloud”) called Sales
						force Marketing Cloud training is a software as a service platform
						that comes in four “base versions,” each with its own set of
						included features and a wide range of optional add-ons that can be
						purchased for a fee to expand its usefulness even further.</p>
					<p>
						<strong>Why Salesforce Marketing Cloud?</strong>
					</p>
					<p>&#x2705; In order to better manage marketing campaigns that
						improve customer journeys, digital marketers should leverage Sales
						force Marketing Cloud training, some examples are: Meeting the
						consumer where they are (e.g., email, mobile, web), providing
						individualised suggestions, prompts, and savings. Immediately
						responding to consumer inquiries.</p>
					<p>
						<strong>How to learn Salesforce Marketing Cloud?</strong>
					</p>
					<p>&#x2705; Learn the foundations required for users to start
						using their cloud marketing courses operations through the
						Salesforce Marketing cloud training platform by enrolling in the
						course offered by CloudFoundation.</p>
					<p>It is designed to provide users with the fundamental skills
						they need to use the Salesforce Marketing training platform to
						develop straightforward marketing campaigns, it will take more
						than an hour to finish, and once done, customers will be able to
						successfully start using Email Studio to run marketing campaigns,
						the above process teaches you how to learn Salesforce Marketing
						cloud.</p>
					<p>
						<strong> What is Marketing Cloud Salesforce?</strong>
					</p>
					<p>&#x2705; The most feature-rich product in its class,
						Salesforce Marketing Cloud is a highly praised automation
						platform, it provides amazing insights into client journeys and
						aids companies in providing connected, individualised, and 1:1
						consumer experience.</p>
					<p>
						<strong>How to Create Data Extension in Salesforce
							Marketing Cloud?</strong>
					</p>
					<p>&#x2705; One of the most crucial things to understand about
						Marketing Cloud Salesforce training is creating Data Extensions,
						the fact that there are multiple ways to construct a Data
						Extension and add contacts to it might be confusing, and
						salesforce marketing cloud learning about them can be challenging.</p>
					<p>We all outline two methods for setting up a Data
						Extension: using Contact Builder or Email Studio. I will make note
						of these as we go forward, but there are slight variations between
						the two.</p>
					<p>
						<strong>What is Included in Salesforce Marketing Cloud?</strong>
					</p>
					<p>&#x2705; The Marketing Cloud provides end-to-end tools for
						tracking and optimising every stage of a business relationship
						with its customers, from initial contact through post-sale
						follow-up.</p>
					<p>Email, mobile, social media, website personalization,
						advertising, content production, content management, and data
						analysis are just few of the areas that are covered by the
						Marketing Cloud.</p>
					<p>
						<strong>How to use Salesforce Marketing Cloud?</strong>
					</p>
					<p>&#x2705; Salesforce Marketing Cloud is a marketing platform
						with the ability to support many aspects of marketing, including
						multi-channel campaign execution, dynamic customer journeys, pre-
						and post-campaign analytics, including audience building and
						segmentation, social media engagement and advertising, and a data
						management platform.</p>
					<p>SFMC does this utilising element they refer to as “Studios”
						and “Builders.</p>
					<p>
						<strong> Is Salesforce Marketing Cloud a CRM?</strong>
					</p>
					<p>&#x2705; Salesforce Marketing Cloud is a customer
						relationship management (CRM) platform that enables marketers to
						build and manage connections with customers as well as marketing
						campaigns.</p>
					<p>
						<strong> Is salesforce marketing cloud a good career?</strong>
					</p>
					<p>&#x2705; Salesforce is a cutting-edge cloud-based customer
						relationship management (CRM) solution that connects businesses
						and customers via a single platform. Since its introduction in
						1999, it has progressively risen to the top of the CRM software
						industry by providing products that can be adjusted to changing
						business requirements.</p>
					<p>A wide variety of products and solutions are included in the
						Salesforce suite to aid businesses in connecting with their
						consumers. This list of goods includes Salesforce Marketing Cloud.</p>
					<p>
						<strong> What is Journey Builder in Salesforce Marketing
							Cloud?</strong>
					</p>
					<p>&#x2705; With the use of Journey Builder, marketers may
						tailor interactions throughout those stages based on the
						requirements, wants, and preferences of their exact target
						training audience as well as their demographics and real-time
						feedback from their activities. Event-driven triggers are used by
						Journey Builder to react to clients or potential clients in the
						right way.</p>
					
				</div>

			</div>
			<!-- Sidebar (Related Blogs & Query Form) -->
			<div class="col-lg-4">
				<!-- Related Blogs -->
				<div class="related-blogs mb-4">
					<h4>Related Blogs</h4>
					<hr>
					<p>
						<a href="#">AWS IAM Tutorial &#8211;The only Amazon web
							services IAM course you need</a>
					</p>
					<p>
						<a href="#">AWS EC2 Tutorial &#8211; The only Amazon web
							services EC2 course you need</a>
					</p>
					<p>
						<a href="#">AWS Certification &#8211; The only Amazon web
							services certification course you need</a>
					</p>
				</div>

				<!-- Query Form -->
				<div class="query-form"> 
					<h4>Drop Us a Query</h4>
					<hr>
					<form method="post" id="queryForm">
						<div class="row">
							<div class="col-6">
								<input type="text" class="form-control" placeholder="Name"c name="name" required>
							</div>
							<div class="col-6">
								<input type="email" class="form-control"
									placeholder="Email address*" name="email" required>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<select class="form-select">
									<option selected>Country Code</option>
									<option value="+1">+1 USA</option>
									<option value="+91">+91 India</option>
									<option value="+44">+44 UK</option>
								</select>
							</div>
							<div class="col-6">
								<input type="tel" class="form-control" placeholder="Mobile No." name="phone" required>
							</div>
						</div>
						<textarea class="form-control" rows="3"
							placeholder="your query.." name="query" required></textarea>
						<button class="btn btn-primary w-100 mt-2">Submit</button>
						<p class="text-muted mt-2 text-center" style="font-size: 12px;">By
							providing us with your details, we wont spam your inbox.</p>
					</form>
					<%-- Show messages after redirect --%>
					<%
					    String status = request.getParameter("status");
					    String name = request.getParameter("name");
					    if ("success".equals(status)) {
					%>
					    <h3 style="font-size: 18px; margin-top: 10px; color: green;">Thank you <%= name %>!</h3>
    						<p style="color: green;">Your query has been successfully received. We will get back to you shortly.</p>

					<%
					    } else if ("error".equals(status)) {
					%>
					    <h3 style="color:red;">Failed to submit your query. Please try again later.</h3>
					<%
					    }
					%>
					 
					</div>
				</div>
			</div>
		</div>
		
	<%@include file="footer.jsp"%>
	<script >
	  window.onload = function () {
	    const urlParams = new URLSearchParams(window.location.search);
	    if (urlParams.get('status') === 'success') {
	      document.getElementById("queryForm").reset(); // Replace with your actual form ID
	    }
	  };
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
</html>