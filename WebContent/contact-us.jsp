<%@ page import="com.dao.ContactBean" %>
<%@ page import="java.net.URLEncoder" %>
<jsp:useBean id="contact" class="com.dao.ContactBean" scope="request"/>
<jsp:setProperty name="contact" property="*" />

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (contact.saveToDatabase()) {
        	response.sendRedirect("contact-us.jsp?status=success&name=" + URLEncoder.encode(contact.getName(), "UTF-8") + "&email=" + URLEncoder.encode(contact.getEmail(), "UTF-8"));
            return; // Stop further execution
        } else {
            response.sendRedirect("contact-us.jsp?status=error");
            return;
        }
    }
%>

<!doctype html>
<html lang="en">
<%@include file="base.jsp"%>
<head>
<style>
/* Global Styles */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

.page-nav {
	width: 100%;
}

iframe {
	width: 100%;
	height: 450px;
	border: none;
}

/* Contact Form */
.contact-rooo h4 {
	color: royalblue;
	margin-top: 20px;
}

.contact-form {
	padding: 20px;
}

.contact-form .cont-row {
	margin-bottom: 5px;
}

.serv {
	padding: 20px;
	margin-top: 40px;
}

.contact-form textarea {
	font-size: 14px; /* Adjusted font size for readability */
	margin: 0px 0px 10px;
	width: 100%; /* Ensures the textarea fills its container */
}

.form-control input-sm {
	font-size: 14px; /* Adjusted font size for readability */
}

/* Section Background and Layout */
.contact-store-add {
	padding: 50px 0;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	color: #fff;
}

/* Title Styling */
.offertitle {
	text-align: center;
	font-size: 2rem;
	font-weight: bold;
	color: #333;
	font-family: 'Arial', sans-serif;
	margin-bottom: 40px;
	text-transform: uppercase;
	letter-spacing: 2px;
}

/* Contact Store Image Container */
.contact-store-picture {
	text-align: center;
	margin-bottom: 30px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

/* Image inside contact store */
.contact-store-img img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	/* Ensures images look good even if aspect ratio differs */
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

/* Contact Store Title */
.contact-store-title {
	padding: 20px;
	background-color: #fff;
	border-radius: 0 0 10px 10px;
}

.contact-store-title h3 {
	font-size: 20px;
	color: #333;
	margin-bottom: 10px;
}

.contact-store-title p {
	font-size: 16px;
	color: #777;
	margin-bottom: 0;
}

/* Column Styles */
.loc {
	background-color: #ffffff;
	transition: all 0.3s ease;
	padding: 15px;
	box-sizing: border-box;
	margin-bottom: 20px; /* Added margin to create space between columns */
}

.loc:hover {
	background-color: #f1f1f1;
	transform: scale(1.05);
	box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
}

/* Centering content vertically and horizontally */
.align-center {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
}

/* Ensure the layout takes up at least the full height of the screen */
.full-height {
	min-height: 100vh;
}

/* Responsive Design */
@media ( max-width : 1440px) { /* For iPad Pro 12.9" (portrait) */
	.offertitle {
		font-size: 2rem;
	}
	.contact-store-title h3 {
		font-size: 18px;
	}
	.contact-store-title p {
		font-size: 16px;
	}
	.contact-store-img img {
		height: 220px;
	}
}

@media ( max-width : 1024px) { /* For iPad Pro 10.5", Surface Pro 7 */
	.offertitle {
		font-size: 1.75rem;
	}
	.contact-store-title h3 {
		font-size: 16px;
	}
	.contact-store-title p {
		font-size: 14px;
	}
	.contact-store-img img {
		height: 200px;
	}
	.contact-form textarea, .form-control input-sm {
		font-size: 16px;
	}
	.col-md-4 {
		width: 48%; /* Adjusted to fit in 2 columns */
		margin-bottom: 15px;
	}
	.contact-form {
		margin-top: 100px;
	}
	.serv {
		margin-top: 100px;
	}
}

@media ( max-width : 768px) {
	/* For iPad Mini (portrait), Surface Pro 7 in portrait mode */
	.col-md-4 {
		width: 100%;
		padding: 0 15px;
		margin-bottom: 15px;
	}
	.contact-store-picture {
		margin-bottom: 20px;
	}
	#loc-box {
		margin-right: 0;
	}
	.offertitle {
		font-size: 1.5rem;
	}
	.contact-store-title h3 {
		font-size: 16px;
	}
	.contact-store-title p {
		font-size: 14px;
	}
	.contact-form textarea {
		font-size: 14px; /* Adjust text area font for small devices */
	}
}

@media ( max-width : 576px) {
	/* For smaller devices, e.g., iPhone or small tablets */
	.offertitle {
		font-size: 1.25rem; /* Adjust font size for small devices */
	}
	.contact-store-title h3 {
		font-size: 14px;
	}
	.contact-store-title p {
		font-size: 12px;
	}
	.contact-store-img img {
		height: 150px; /* Adjust image size */
	}
	.contact-form textarea {
		font-size: 14px;
		padding: 10px;
	}
	.form-control input-sm {
		font-size: 14px;
	}

	/* Ensure elements are full width on mobile */
	.contact-store-picture {
		margin-bottom: 10px;
	}
	.contact-store-title {
		padding: 10px;
	}
}

/* Ensure top and bottom alignments across all screen sizes */
.align-top {
	display: flex;
	justify-content: flex-start;
	align-items: flex-start;
}

.align-bottom {
	display: flex;
	justify-content: flex-end;
	align-items: flex-end;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="page-nav no-margin row">
		<div class="container"></div>
	</div>
	<div class="row contact-rooo">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 contact-form">
					<div class="row mt-5">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d249759.19784092825!2d79.10145254589841!3d12.009924873581818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1448883859107"
							allowfullscreen></iframe>
					</div>

					<div>
						<h2>Contact Form</h2>
					<form  method="post" action="contact-us.jsp">
						<div class="row cont-row">
							<div class="col-sm-3">
								<label>Enter Name</label><span>:</span>
							</div>
							<div class="col-sm-8">
								<input type="text" name="name" placeholder="Enter Name" class="form-control input-sm" required>
							</div>
						</div>
						<div class="row cont-row">
							<div class="col-sm-3">
								<label>Email Address</label><span>:</span>
							</div>
							<div class="col-sm-8">
								<input type="email" name="email" placeholder="Enter Email Address" class="form-control input-sm" required>
							</div>
						</div>
						<div class="row cont-row">
							<div class="col-sm-3">
								<label>Mobile Number</label><span>:</span>
							</div>
							<div class="col-sm-8">
								<input type="text" name="mobile" placeholder="Enter Mobile Number" class="form-control input-sm" required>
							</div>
						</div>
						<div class="row cont-row">
							<div class="col-sm-3">
								<label>Enter Message</label><span>:</span>
							</div>
							<div class="col-sm-8">
								<textarea name="message" rows="5" placeholder="Enter Your Message" class="form-control input-sm" required></textarea>
							</div>
						</div>
						<div class="row" style="margin-top: 10px;">
							<div class="col-sm-3"></div>
							<div class="col-sm-8">
								<button type="submit" class="btn btn-success btn-sm">Send Message</button>
							</div>
						</div>
					</form>

					<%-- Process Form Data using JavaBean --%>
					
					<% 
						String status = request.getParameter("status");
					    String name = request.getParameter("name");
					    String email = request.getParameter("email");
					    if ("success".equals(status)) {
					%>
					        <h3 style="font-size: 19px; margin-top: 10px;">Thank you for contacting us, <%= name %>!</h3>
					        <p>We have received your message. We'll get back to you at <%= email %>.</p>
					<%
					    } else if ("error".equals(status)) {
					%>
					        <h3 style="color: orangered; font-size: 18px; margin-top: 10px;">Failed to submit your message. Please try again later.</h3>
					<%
					    }
					%>


					</div>
					
					
					
				</div>
				<div class="col-sm-6 serv">
					<div>
						<h4 style="margin-top: 10px; color: royalblue">Bengaluru -
							Headquarter</h4>
							57/65, Chikkalakshmaiah Layout,<br>
							Bengaluru, Karnataka 560029<br>
							Landmark: Opposite Beauty Trips or Beyond Health medical store 
							<br>Phone- (+91) 8697741611
					</div>

					<div>
						<h4 style="margin-top: 10px; color: royalblue">PCS Cloud Labs
							-Kolkata,WB</h4>
							914, Merlin Infinite DN-51, 9th Floor,<br>
							Street Number 11, DN Block, Sector V, Bidhannagar,<br>
							Kolkata, West Bengal 700091<br>
							Phone: (+91) 8697741611
					</div>

					<div>
						<h4 style="margin-top: 10px; color: royalblue">PCS Cloud Labs
							- Bhubaneswar,Odisha</h4>
						Awfis <br /> Jayadev Vihar, Nandankanan Rd, Nayapalli,
						Bhubaneswar, Odisha - 751013 <br /> Land Mark - Opposite Nalco
						Headquarters <br /> Contact Person : Mr. Alok Halder - +91 86977 41611 
					</div>
					<div>
						<h4 style="margin-top: 10px; color: royalblue">PCS Cloud Labs
							- Noida,Uttar Pradesh</h4>
						Sharkspace Coworking <br /> First floor, A-83, Sector 63 Rd, A
						Block, Sector 63, Noida, Uttar Pradesh 201301 <br /> Land Mark -
						J9CH+7X Noida, Uttar Pradesh <br /> Contact Person : Mr. Alok Halder - +91 86977 41611
					</div>
					<div>
						<h4 style="margin-top: 10px; color: royalblue">PCS Cloud Labs
							- PAN India & Overseas</h4>

						Contact Person : Mr. Alok Halder - +91 86977 41611 | Abhishek Ghosh - +91 6296 373 387 | Dipanwita Mukherjee - +91 84680 38415
					</div>
				</div>
			</div>
		</div>
	</div>

	<section>
		<h2 class="offertitle">Our Work Location</h2>
		<div class="container">

			<div class="row " id="loc-box">

				<div class="col-md-4">
					<div class="contact-store-picture loc">
						<div class="contact-store-img">
							<img decoding="async"
								src="./assets/images/content/pcsglobalbengluruoffice.jpeg"
								alt=" Bengaluru (HQ)" class="lazyloaded"
								style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
						</div>
						<div class="contact-store-title">
							<h3>Bengaluru H.Q.</h3>
							<p>57/65, Chikkalakshmaiah Layout,Hosur main road,
								Bengaluru,Karnataka 560029 Bengaluru</p>
							<a
								href="https://www.google.com/maps/place/Beyond+health+clinic+and+medical+shop/@12.9357488,77.6084033,19z/data=!4m10!3m9!1s0x3bae15c40de411c3:0x250f8515b62e6f80!5m3!1s2023-10-10!4m1!1i2!8m2!3d12.9360824!4d77.6089132!16s%2Fg%2F11h909gqqd?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">bengaluru
								Location</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="contact-store-picture loc">
						<div class="contact-store-img">
							<img decoding="async" src="assets/images/content/kolkata.jpeg"
								alt="Kolkata Orangemantra" class="lazyloaded"
								style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
						</div>
						<div class="contact-store-title">
							<h3>Kolkata Saltlake</h3>
							<p>Godrej Genesis, Block EP & GP Opp to Syndicate Bank,
								Sector V, Salt Lake City, Kolkata, West Bengal 700091, India</p>
							<a
								href="https://www.google.com/maps/place/Godrej+Genesis/@22.5730705,88.4338005,17z/data=!3m1!4b1!4m6!3m5!1s0x3a02754101008535:0xe5a40f5bdaad26f8!8m2!3d22.5730705!4d88.4338005!16s%2Fg%2F11l4n5cfyy?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">Kolkata
								Location</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="contact-store-picture loc">
						<div class="contact-store-img">
							<img decoding="async"
								src="assets/images/content/bhuvaneshwar.jpeg"
								alt="Bhuvanesher Orangemantra" class="lazyloaded"
								style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
						</div>
						<div class="contact-store-title">
							<h3>Bhuvaneshwar</h3>
							<p>Opposite Nalco Headquarters, Jayadev Vihar, Nandankanan
								Rd, Odisha Nayapalli Bhubaneswar 751013</p>
							<a
								href="https://www.google.com/maps/place/NALCO+BHAWAN/@20.3040371,85.8212738,17z/data=!3m1!4b1!4m6!3m5!1s0x3a1909c76ef5d24d:0x26075c3af849ce46!8m2!3d20.3040371!4d85.8212738!16s%2Fg%2F1tdmhx71?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">Bhubaneswar
								Location</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="contact-store-picture loc">
						<div class="contact-store-img">
							<img decoding="async" src="./assets/images/content/noida.jpeg"
								alt="Noida Orangemantra" class="lazyloaded"
								style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
						</div>
						<div class="contact-store-title">
							<h3>Noida</h3>
							<p>First floor, A-83, Sector 63 Rd, A Block, Sector 63,
								Noida, Uttar Pradesh 201301</p>
							<a
								href="https://www.google.com/maps/place/Sharkspace+Coworking+%7C+Office+on+Rent/@28.6207146,77.3799469,17z/data=!3m1!4b1!4m6!3m5!1s0x390cefb95942fa95:0xeb0ad81d2e7debd8!8m2!3d28.6207146!4d77.3799469!16s%2Fg%2F11vy5f2vkm?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">Noida
								Location</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
<%@include file="base-jquery.jsp"%>
</html>