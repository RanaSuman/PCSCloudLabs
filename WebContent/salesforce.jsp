<!DOCTYPE html>
<html lang="en">

<head>
<style>
/* Global style definitions */
body {
	font-family: "Poppins", sans-serif;
}

h2 {
	color: #FFFF;
	font-family: "Poppins", Sans-serif;
	font-size: 30px;
	font-weight: 400;
	letter-spacing: 1.1px;
}

/* Training section styles */
.training-section {
	display: flex;
	flex-direction: column;
	/* Stacks child elements vertically */
	align-items: center;
	justify-content: space-between;
	background-color: #0274be;
	padding: 20px;
}

.training-container {
	padding: 0;
	margin: 0 0 0 40px;
	/* Adjust margin for smaller screens */
	display: flex;
	/* flex-wrap: wrap; */
	/* Allows wrapping on smaller screens */
	gap: 20px;
	border-radius: 10px;
}

.white-line {
	border-top: 2px solid white;
	background-color: #0274be;
	height: 10px;
	padding: 12px;
}

/* Styles for course details table */
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: center;
	border: 1px solid white;
}

.course-details-table {
	text-align: center;
	background-color: #29467b;
	color: white;
	font-family: sans-serif;
	margin: 0;
}

/* Left content section styling */
.left-content-section {
	width: 800px;
	/* margin-right: 20px; */
}

/* Right content section styling */
.right-content-section {
	width: 350px;
	background-color: #0274be;
	padding: 20px;
}

/* Styles for video container and buttons */
.container {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.video-container iframe {
	width: 100%;
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.button-container {
	display: flex;
	flex-direction: column;
	gap: 10px;
}

button {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

/* Styles for Guide Me button */
.guide-button {
	background-color: #4CAF50;
	border-radius: 10px;
	color: white;
	transition: background-color 0.3s ease, transform 0.2s ease;
}

.guide-button:hover {
	background-color: #45a049;
	/* Slightly darker green */
	transform: scale(1.02);
	/* Slight zoom-in effect */
}

/* Styles for Download Curriculum button */
.download-button {
	background-color: #ffc107;
	border-radius: 10px;
	color: black;
	transition: background-color 0.3s ease, transform 0.2s ease;
}

.download-button:hover {
	background-color: #e0b300;
	/* Slightly darker yellow */
	transform: scale(1.02);
	/* Slight zoom-in effect */
}

/* Hover effect for iframe */
.video-container iframe:hover {
	transform: scale(1.02);
	/* Slightly enlarges the iframe */
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	/* Smooth transition */
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
	/* Adds a shadow */
}

/* Specialty section styles */
.speciality-section {
	margin-left: 0;
	text-align: center;
	margin-top: 10px;
}

.speciality-title {
	font-size: 24px;
	font-weight: bold;
	color: white;
	margin-bottom: 20px;
}

.speciality-container {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #0072C6;
	flex-wrap: wrap;
	gap: 20px;
}

.speciality-item {
	border: 2px solid white;
	padding: 20px;
	margin: 10px;
	text-align: center;
	width: 250px;
	max-width: 250px;
}

.speciality-number {
	font-size: 30px;
	font-weight: bold;
	color: white;
}

.speciality-text {
	font-size: 18px;
	color: white;
}

/* New Css */
body {
	font-family: 'Arial', sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 0;
}

.contai {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
	text-align: center;
}

.titl {
	font-size: 24px;
	font-weight: bold;
	color: #000;
	margin-bottom: 10px;
}

.titl::after {
	content: '';
	display: block;
	width: 50px;
	height: 4px;
	background-color: #1a73e8;
	margin: 10px auto;
}

.creden {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.credent {
	background-color: #e9f4ff;
	border-radius: 10px;
	padding: 20px;
	width: 18%;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	margin: 10px 0;
	transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s
		ease;
	border: 2px solid transparent;
	/* Default border */
}

.credent:hover {
	transform: scale(1.1);
	border-color: #1a73e8;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.credent img {
	width: 50px;
	height: 50px;
	margin-bottom: 10px;
}

.credent h3 {
	color: #000000;
	font-family: "Poppins", Sans-serif;
	font-size: 12px;
	font-weight: 400;
}

.credent p {
	color: #000000;
	font-family: "Poppins", Sans-serif;
	font-size: 13px;
	font-weight: 700;
}

/* Additional responsive adjustments for smaller devices */
/*        @media (max-width : 768px) {
    .training-section {
        padding: 10px;
    }

    .training-container {
        margin: 0 10px;
        flex-direction: column;
        align-items: center;
    }

    .left-content-section,
    .right-content-section {
        width: 100%;
        margin: 0;
    }

    .speciality-container {
        flex-direction: column;
        align-items: center;
        gap: 10px;
    }

    .speciality-item {
        width: 100%;
        max-width: 100%;
    }

    .price-section {
        text-align: center;
    }

    .price-section div {
        font-size: 16px;
    }

    .enroll-button {
        width: 100%;
        padding: 15px;
    }
}

/* Further adjustments for very small screens (mobile phones) */
/*         @media (max-width : 480px) {
    h2 {
        font-size: 20px;
    }

    .button-container button {
        font-size: 14px;
        padding: 8px 16px;
    }

    .speciality-number {
        font-size: 24px;
    }

    .speciality-text {
        font-size: 16px;
    }

    .creden {
        width: 100%;
        margin: 10px 0;
    }

    .creden img {
        width: 40px;
        height: 40px;
    }

    .creden h3,
    .creden p {
        font-size: 14px;
    }
} */

/* Styling for the Plenary section */
.Certification-training-container {
	padding: 30px;
	margin: 0 auto;
	/* Center the container */
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	border-radius: 10px;
	max-width: 1200px;
	/* Limit the width for better alignment */
	align-item: center;
}

.left-container-section {
	flex: 1 1 65%;
	/* Set the left section to take up 65% of the container */
	max-width: 800px;
	/* Ensure it doesnt exceed a reasonable size */
	align-item: center;
	background-color: #FFFFF;
	flex-wrap: wrap;
	/* margin-right: 20px; */
}

.table_body {
	flex: 1 1 100%;
	max-width: 800px;
	margin: 0 auto;
}

/* Right content section styling */
.right-container-section {
	flex: 1 1 30%;
	/* Set the right section to take up 30% of the container */
	max-width: 300px;
	padding: 20px;
	border-radius: 10px;
	box-sizing: border-box;
	justify-content: center;
	/* Center vertically */
	align-items: center;
	/* Center horizontally */
}

.certification-header {
	background-color: #0274be;
	padding-bottom: 30px !important;
}

.Certification-block {
	background-color: #0274be;
	padding: 10px;
}

.Plenary-table {
	margin: 0 180px;
	border-radius: 10px;
}

thead {
	background-color: #003b70;
	color: white;
	text-align: center;
}

.table-two th {
	padding: 10px 60px;
	text-align: center;
	border: 1px solid #ddd;
}

.table-two td {
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
	color: black;
	/* Changed the text color to black for a professional look */
}

.price-section {
	display: flex;
	flex-direction: column;
	/* justify-content: flex-start; */
	/* align-items: flex-start; */
	text-align: center;
	background-color: #FFFFF;
	justify-content: center;
	/* Center content vertically */
	align-items: center;
}

.price-section div {
	text-align: center;
	color: #ffffff;
	font-size: 18px;
	padding: 10px 0;
}

.price-section span {
	font-size: 24px;
	font-weight: bold;
}

.enroll-button {
	border-radius: 8px;
	background-color: #003b70;
	color: white;
	text-align: center;
	padding: 10px 50px;
}

.plenary-header {
	padding: 10px;
	color: #FFFF;
}

/* Footer styles */
.footer {
	background-color: #0274be;
	color: white;
	text-align: center;
	padding: 15px 0;
	position: relative;
	/* Relative for proper positioning */
	width: 100%;
	font-size: 0.9rem;
	/* Relative units for scaling */
	margin-top: 20px;
	/* Ensures gap between footer and content */
}

.footer a {
	color: white;
	text-decoration: none;
	margin: 0 10px;
	padding: 5px 10px;
	display: inline-block;
}

.footer a i {
	margin-right: 5px;
}

/* Accordion styles */
.accordion {
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #0274be;
	margin-top: 20px;
	max-width: 100%;
}

.accordion-item {
	border-bottom: 1px solid #ddd;
}

.accordion-header {
	cursor: pointer;
	font-weight: 600;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 10px 10px 30px;
	background-color: #0274be;
	color: black;
	border: 2px solid #2D65B4;
	border-radius: 4px;
	font-size: 16px;
	/* Adjust font size */
}

.accordion-header:hover {
	background-color: #e9ecef;
}

.accordion-icon {
	font-size: 18px;
	font-weight: bold;
}


.accordion-content {
            display: none;
            font-weight: 600 !important;
            padding: 10px;
            background-color: #f9f9f9;
            border: 2px solid #2D65B4;
            border-top: none;
        }


/* Style for the dots container */
.dots-container {
	text-align: center;
	padding: 0px 0;
}

/* Style for each individual dot */
.dot {
	height: 10px;
	width: 10px;
	margin: 0 5px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.3s;
	cursor: pointer;
}

/* Active dot */
/*     .active {
    background-color: #0274be;
}  */
.elementor-heading-title {
	color: #000000;
	font-family: "Poppins", Sans-serif;
	font-size: 20px;
	font-weight: 600;
	text-align: center;
	/* Center the text horizontally */
	white-space: normal;
	/* Allow the text to wrap */
	width: 100%;
	/* Ensure it takes the full width of its parent */
}

/* Optional: Add some spacing around the heading */
.right-content-section h2 {
	margin-bottom: 20px;
	/* Adds space below the heading */
}

.slide {
	display: none;
	transition: opacity 0.5s ease-in-out;
}

.slide.active {
	display: block;
	opacity: 1;
}

.dot.active {
	background-color: #f9f9f9;
}

.training-section-new {
	display: flex;
	flex-direction: column;
	/* Stacks child elements vertically */
	align-items: center;
	justify-content: space-between;
	background-color: #F9F9F9;
}

.training-container-new {
	background-color: #F9F9F9;
	padding: 10px 0 10px 0;
	margin: 0;
	display: flex;
}

.right-content-section-new {
	width: 300.062px;
	background-color: #F9F9F9;
	border: 1px solid #F9F9F9;
	padding: 10px;
}

/* General form styling */
.elementor-form {
	background-color: #f9f9f9;
	padding: 15px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Input fields styling */
.elementor-field-textual {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

.elementor-field-textual:focus {
	border-color: #007BFF;
	outline: none;
}

/* Submit button styling */
.elementor-button {
	background-color: #0274be;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	display: flex;
	align-items: center;
}

.elementor-button:hover {
	background-color: #0274be;
}

.elementor-button-text {
	margin-left: 10px;
}

/* Form label hidden for screen readers */
.elementor-screen-only {
	display: none;
}

/* Input field container styling */
.elementor-field-group {
	margin-bottom: 15px;
}

/* Form alignment */
.elementor-form-fields-wrapper {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

/* Form container styling */
.elementor-form {
	background-color: #f9f9f9;
	padding: 10px;
	/* Reduced padding */
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 500px;
	/* Limit the width */
	margin: 0 auto;
	/* Center the form */
}

/* Input fields styling */
.elementor-field-textual {
	width: 100%;
	padding: 8px;
	/* Reduced padding */
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 14px;
	/* Smaller font size */
	margin-bottom: 10px;
	/* Space between inputs */
}

.elementor-field-textual:focus {
	border-color: #0274be;
	outline: none;
}

/* Submit button styling */
.elementor-button {
	background-color: #0274be;
	color: white;
	padding: 8px 16px;
	/* Reduced padding */
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 14px;
	display: flex;
	align-items: center;
}

.elementor-button:hover {
	background-color: #0274be;
}

.elementor-button-text {
	margin-left: 10px;
}

/* Form label hidden for screen readers */
.elementor-screen-only {
	display: none;
}

/* Input field container styling */
.elementor-field-group {
	margin-bottom: 10px;
}

/* Form alignment */
.elementor-form-fields-wrapper {
	display: flex;
	flex-direction: column;
	gap: 15px;
	/* Reduced gap between form fields */
}

.card {
	margin-bottom: 20px;
	/* Adjust the value as needed */
}

.form-section {
	margin-top: 20px;
	/* Adjust the value as needed */
	padding: 15px;
	/* Optional: Add padding for better form spacing */
	background-color: #f9f9f9;
	/* Optional: To distinguish the form visually */
	border-radius: 8px;
	/* Optional: Rounded corners for aesthetics */
	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
	/* Optional: Subtle shadow */
}

/* Form Section Styling */
.form-section {
	width: 135%;
	/* Match the blue container's width */
	max-width: 600px;
	/* Set a maximum width for consistency */
	margin: 25 auto;
	/* Center the form horizontally */
	padding: 20px;
	background: #ffffff;
	/* White background for contrast */
	border-radius: 8px;
	/* Add rounded corners */
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	/* Subtle shadow for design */
	box-sizing: border-box;
	/* Ensure padding is included in the width */
}

/* Form Heading */
.form-heading {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 15px;
	text-align: center;
	color: #333333;
}

/* Form Fields */
.elementor-form-fields-wrapper {
	display: flex;
	flex-direction: column;
	gap: 15px;
	/* Spacing between fields */
}

.form-group input {
	width: 100%;
	/* Inputs take up the full width of the form */
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

/* Submit Button */
.form-submit-button {
	width: 100%;
	/* Button spans the full width */
	padding: 12px;
	font-size: 16px;
	font-weight: bold;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.form-submit-button:hover {
	background-color: #0056b3;
}

.card {
	background-color: #0274be;
	color: #f1f1f145;
	width: 100%;
	max-width: 135%;
	/* Default max width */
	margin: 0 auto;
	padding: 20px;
}
/* Responsive Design */
@media ( max-width : 1024px) {
	.training-container, .Certification-training-container {
		flex-direction: column;
		gap: 20px;
	}
	.left-content-section, .right-content-section, .left-container-section,
		.right-container-section {
		width: 100%;
		margin: 0;
	}
	.creden {
		width: 100%;
		margin: 10px 0;
	}
	.Plenary-table {
		margin: 0 10px;
	}
}

@media ( max-width : 768px) {
	.training-container, .Certification-training-container {
		margin: 0 10px;
		align-items: center;
	}
	.training-section {
		padding: 10px;
	}
	.speciality-container {
		flex-direction: column;
		align-items: center;
		gap: 10px;
	}
	.speciality-item {
		width: 100%;
		max-width: 100%;
	}
	.price-section {
		text-align: center;
	}
	.price-section div {
		font-size: 16px;
	}
	.enroll-button {
		width: 100%;
		padding: 15px;
	}
	.table_body {
		padding: 20px;
		display: block;
		overflow-x: auto; /* Allows table to scroll horizontally */
	}
	.footer a {
		margin: 5px;
		padding: 5px;
	}
	.accordion-header {
		font-size: 14px; /* Adjust font size for mobile */
	}
	.accordion-content {
		padding: 8px; /* Reduce padding for mobile view */
	}
	.accordion {
		margin-top: 10px; /* Reduce margin for smaller screens */
	}
	.e_mar {
		margin-top: 80px;
	}
	.form-section {
		max-width: 100%;
		padding: 15px; /* Make the form responsive */
	}
	.card {
		max-width: 90%; /* Adjust width for tablets */
	}
}

@media ( max-width : 480px) {
	h2 {
		font-size: 20px;
	}
	.button-container button {
		font-size: 14px;
		padding: 8px 16px;
	}
	.speciality-number {
		font-size: 24px;
	}
	.speciality-text {
		font-size: 16px;
	}
	.credent, .creden {
		width: 100%;
		margin: 10px 0;
	}
	.credent img, .creden img {
		width: 40px;
		height: 40px;
	}
	.credent h3, .credent p, .creden h3, .creden p {
		font-size: 14px;
	}
	.table_body th, .table_body td {
		font-size: 14px; /* Reduce font size for better readability */
		padding: 8px; /* Adjust padding */
	}
	.accordion-header {
		font-size: 12px; /* Smaller font size for very small screens */
	}
	.accordion-icon {
		font-size: 16px; /* Adjust icon size for small screens */
	}
	.accordion-content {
		padding: 6px; /* Reduce padding further */
	}
	.e_mar {
		margin-top: 50px;
	}
	.left-content-section {
		margin-top: 30px;
	}
	.training-container-new {
		display: block;
	}
}
</style>
</head>

<body>
    <!-- Include reusable JSP components -->
    <%@ include file="base.jsp" %>
        <%@ include file="header.jsp" %>

            <div class="page-nav no-margin row">
                <div class="container"></div>
            </div>

            <!-- Salesforce Master Training Section -->
            <section >
                <div class="training-section e_mar">

                    <!-- Upper block -->
                    <div>
                        <div class="training-container">
                            <!-- Left Content Section -->
                            <div class="left-content-section">
                                <div>
                                    <h2 style="color: white;">Salesforce Master Training</h2>
                                    <p style="color: white; padding-bottom: 40px;">This
                                        Salesforce Master training will give you the skills to develop
                                        custom applications on the Salesforce platform. You will be able
                                        to utilize both the Declarative and Programming methods to build
                                        Salesforce applications.</p>
                                </div>

                                <!-- Logo and Vote Section -->
                                <!-- <div
							style="background-color: #0274be; color: white; display: flex; justify-content: space-between; align-items: center; width: 100%;">
							<div style="display: flex; align-items: center;">
								<div>4.9 out of 5 based on 23,517 votes</div>
								<div style="display: flex; margin-left: 10px;">
									Star rating icons
									<img src="star.svg" alt="star"
										style="width: 16px; height: 16px;"> <img src="star.svg"
										alt="star" style="width: 16px; height: 16px;"> <img
										src="star.svg" alt="star" style="width: 16px; height: 16px;">
									<img src="star.svg" alt="star"
										style="width: 16px; height: 16px;"> <img src="star.svg"
										alt="star" style="width: 16px; height: 16px;">
								</div>
							</div>
							Social media icons
							<div class="col-lg-2 col-md-12">
								<ul class="ulright"
									style="display: flex; margin: 0; padding: 0;">
									<li style="margin-right: 10px;"><i
										class="fab fa-facebook-square"></i></li>
									<li style="margin-right: 10px;"><i
										class="fab fa-twitter-square"></i></li>
									<li style="margin-right: 10px;"><i
										class="fab fa-instagram"></i></li>
									<li><i class="fab fa-linkedin"></i></li>
								</ul>
							</div>
						</div>

						<!-- Course Details Table -->
                                <div class="course-details-table">
                                    <div class="white-line"></div>
                                    <table>
                                        <tr>
                                            <th>Course Duration</th>
                                            <th>Live Project</th>
                                            <th>Certification Pass</th>
                                            <th>Training Mode</th>
                                        </tr>
                                        <tr>
                                            <td>180 Hrs.</td>
                                            <td>2 Projects</td>
                                            <td>Guaranteed</td>
                                            <td>Live instructor-led</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                            <!-- Right Content Section -->
                            <div class="right-content-section">
                                <div class="container">
                                    <!-- Embedded video -->
                                    <div class="video-container">
                                        <iframe src="https://www.youtube.com/embed/fhTo0ALft9U"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen> </iframe>

                                        <!-- Buttons below the video -->
                                        <div class="button-container">
                                            <button class="guide-button">Guide Me</button>
                                            <button class="download-button">Download Curriculum</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Specialty Section -->
                    <div class="speciality-section">
                        <div class="speciality-title">Speciality</div>
                        <div class="speciality-container">
                            <!-- Individual specialty items -->
                            <div class="speciality-item">
                                <div class="speciality-number">20K+</div>
                                <div class="speciality-text">Professionals Trained</div>
                            </div>
                            <div class="speciality-item">
                                <div class="speciality-number">4+</div>
                                <div class="speciality-text">Batches Every Month</div>
                            </div>
                            <div class="speciality-item">
                                <div class="speciality-number">1+</div>
                                <div class="speciality-text">Countries & Counting</div>
                            </div>
                            <div class="speciality-item">
                                <div class="speciality-number">100+</div>
                                <div class="speciality-text">Corporate Served</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <div>
                    <div class="training-section-new">

                        <!-- Upper block -->
                        <div>
                            <div class="training-container-new">
                                <!-- Left Content Section -->
                                <div class="left-content-section" style="padding:0 10px">
                                    <div class="accordion">
                                        <div class="accordion-item">
                                            <div class="accordion-header" onclick="toggleAccordion(this)">
                                                <span>What will you learn in this training?</span>
                                                <span class="accordion-icon">+</span>
                                            </div>
                                            <div class="accordion-content">
                                                <ol>
                                                    <li>1. Introduction to Salesforce CRM tool</li>
                                                    <li>2. Salesforce editions and features</li>
                                                    <li>3. Project life cycle</li>
                                                    <li>4. Workflow and fields creation</li>
                                                    <li>5. Validation rule for stock availability</li>
                                                    <li>6. Creating New User and active/inactive freeze</li>
                                                    <li>7. Login access to system admin</li>
                                                    <li>8. Organization-wide sharing defaults</li>
                                                    <li>9. Ways to do debugging, data validation and security</li>
                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion">
                                        <div class="accordion-item">
                                            <div class="accordion-header" onclick="toggleAccordion(this)">
                                                <span>Who should take up this salesforce master training course?</span>
                                                <span class="accordion-icon">+</span>
                                            </div>
                                            <div class="accordion-content">
                                                <ol>
                                                    <li>1. System Administrators, Software Developers, Architects and
                                                        Security Analysts</li>
                                                    <li>2. Those aspiring for a Salesforce career</li>

                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion">
                                        <div class="accordion-item">
                                            <div class="accordion-header" onclick="toggleAccordion(this)">
                                                <span>What are the prerequisites for taking up this course?</span>
                                                <span class="accordion-icon">+</span>
                                            </div>
                                            <div class="accordion-content">
                                                <ol>
                                                    <li>1. There are no specific prerequisites for this training course.
                                                    </li>

                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion">
                                        <div class="accordion-item">
                                            <div class="accordion-header" onclick="toggleAccordion(this)">
                                                <span>Why should you go for the Salesforce master training
                                                    course?</span>
                                                <span class="accordion-icon">+</span>
                                            </div>
                                            <div class="accordion-content">
                                                <ol>
                                                    <li>1. The global CRM market is projected to reach US$48.4 billion in
                                                        two years â€“ Strategyr</li>
                                                    <li>2. Salesforce leads the CRM market with a 19.7% of market share â€“
                                                        Gartner</li>
                                                    <li>3. A Salesforce Administrator in the United States can earn $82,000
                                                        â€“ Indeed</li>
                                                    <li>4. Workflow and fields creation</li>
                                                    <li>5. Validation rule for stock availability</li>
                                                    <li>6. Creating New User and active/inactive freeze</li>
                                                    <li>7. Login access to system admin</li>
                                                    <li>8. Organization-wide sharing defaults</li>
                                                    <li>9. Ways to do debugging, data validation and security</li>
                                                </ol>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <!-- Right Content Section -->
                                <!-- Right Content Section -->
                                <div class="right-content-section-new">
                                    <!-- Section Heading -->
                                    <h2 class="elementor-heading-title">Why should you learn Salesforce Certification?
                                    </h2>

                            
                                    <div class="card"
                                        style="background-color: #2D65B4; color: white; width: 135%; margin: 0 auto; border-radius: 5px;">

                                        <div class="slider">
                                            <div class="slides">
                                                <!-- Slide 1 -->
                                                <div class="slide">
                                                    <p>Salesforce is a highly sought-after skill with excellent job
                                                        prospects across various industries, enabling you to pursue
                                                        rewarding career opportunities and command higher salaries.</p>
                                                </div>
                                                <!-- Slide 2 -->
                                                <div class="slide">
                                                    <p>As the leading CRM platform, Salesforce empowers businesses to
                                                        streamline operations, enhance customer relationships, and drive
                                                        growth, making it a valuable asset for professionals.</p>
                                                </div>
                                                <!-- Slide 3 -->
                                                <div class="slide">
                                                    <p>Salesforce offers a rich ecosystem with numerous customization
                                                        options, allowing you to tailor solutions to specific business
                                                        needs and continually expand your skillset.</p>
                                                </div>
                                            </div>

                                            <!-- Carousel Dots -->
                                            <div class="dots-container">
                                                <span class="dot" onclick="currentSlide(1)"></span>
                                                <span class="dot" onclick="currentSlide(2)"></span>
                                                <span class="dot" onclick="currentSlide(3)"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Request More Information Form Section -->
                                    <div class="form-section">
                                        <h2 class="form-heading">Request more information</h2>
                                        <form class="elementor-form" id="reffer" method="post" name="Salesforce">
                                            <input type="hidden" name="post_id" value="4556">
                                            <input type="hidden" name="form_id" value="4a5216e9">
                                            <input type="hidden" name="referer_title"
                                                value="The Ultimate Salesforce Master Training">
                                            <input type="hidden" name="queried_id" value="4556">

                                            <!-- Form Fields -->
                                            <div class="elementor-form-fields-wrapper">
                                                <div class="form-group">

                                                    <input type="text" id="form-field-name" name="form_fields[name]"
                                                        placeholder="Name" required>
                                                </div>
                                                <div class="form-group">

                                                    <input type="email" id="form-field-email" name="form_fields[email]"
                                                        placeholder="Email" required>
                                                </div>
                                                <div class="form-group">

                                                    <input type="tel" id="form-field-phone" name="form_fields[phone]"
                                                        placeholder="Phone Number" required>
                                                </div>
                                                <div class="form-group">

                                                    <input type="text" id="form-field-city" name="form_fields[city]"
                                                        placeholder="City">
                                                </div>
                                                <button type="submit" class="form-submit-button">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </section>

            <!-- Salesforce Developer Certification  Training Start here-->
            <section style="background-color: #0274be;">
                <div class="certification-header Plenary-table">
                    <div class="Certification-block ">
                        <h2 class="plenary-header" style="text-align: center">Plenary
                            for Salesforce Developer Certification Training</h2>
                    </div>
                    <!-- Salesforce Developer Certification Training Table -->
                    <div class="Certification-training-container" style="background-color: #FFFF;">
                        <div class="left-container-section">
                            <table class="table-two  table_body">
                                <thead>
                                    <tr>
                                        <th>Track</th>
                                        <th>Week Days</th>
                                        <th>Weekends</th>
                                        <th>Fast Track</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Course Duration</td>
                                        <td>6 Months</td>
                                        <td>24 Weekends</td>
                                        <td>30 Days</td>
                                    </tr>
                                    <tr>
                                        <td>Hours</td>
                                        <td>4 Hrs. Per Day</td>
                                        <td>8 Hrs. Per Weekend</td>
                                        <td>6+ Hrs. Per Day</td>
                                    </tr>
                                    <tr>
                                        <td>Training Mode</td>
                                        <td>Classroom/Online</td>
                                        <td>Classroom/Online</td>
                                        <td>Classroom/Online</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="right-container-section " style="background-color: #FFFF">
                            <div class="price-section">
                                <div style="padding: 10px 0; color: black">
                                    Course Price at: <br> <span>35,000 + GST</span>
                                </div>
                                <button class="enroll-button">ENROLL NOW</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Salesforce Developer Certification Table and button section ends here-->

            </section>
            <!-- Salesforce Developer Certification Training Ends here -->





            <!-- Program Core Credentials -->
            <div class="contai">
                <div class="titl">Program Core Credentials</div>
                <div class="creden">
                    <div class="credent">
                        <img alt="Icon of a trainer profile" height="50"
                            src="https://storage.googleapis.com/a1aa/image/8xxUXrehYc1eAErEIz5AdSSgM61NR9kJDaYaMBl4iLufNc9nA.jpg"
                            width="50" />
                        <h3>Trainer Profiles</h3>
                        <p>Industry Expert</p>
                    </div>
                    <div class="credent">
                        <img alt="Icon of a graduation cap" height="50"
                            src="https://storage.googleapis.com/a1aa/image/jxoAG8fNMn2KbKqcrkgeROhSlANQoquPa3ASGsDt0dE4GuenA.jpg"
                            width="50" />
                        <h3>Trained Students</h3>
                        <p>20000+</p>
                    </div>
                    <div class="credent">
                        <img alt="Icon of a star and hand" height="50"
                            src="https://storage.googleapis.com/a1aa/image/2kipWRVR7xq3D1y8PXNgwRKcG0cX0TLPE1Q5BLTsOmYvhrfJA.jpg"
                            width="50" />
                        <h3>Placement Ratio</h3>
                        <p>95%</p>
                    </div>
                    <div class="credent">
                        <img alt="Icon of corporate training" height="50"
                            src="https://storage.googleapis.com/a1aa/image/YjMuZgovAr5zPJO6DvMF3ApcLMn8mjNDMbvyJWDVzb7uhrfJA.jpg"
                            width="50" />
                        <h3>Corporate Training</h3>
                        <p>For India &amp; Abroad</p>
                    </div>
                    <div class="credent">
                        <img alt="Icon of certification assistance" height="50"
                            src="https://storage.googleapis.com/a1aa/image/GkBzMuae2zxxFy3MLOLwgMaxvSJmYNHVdSi4H1XUj3NdDXfTA.jpg"
                            width="50" />
                        <h3>Certification Assistance</h3>
                        <p>100%</p>
                    </div>
                </div>
            </div>


            <div class="footer">
                <a href="#"><i class="fas fa-phone-alt"></i> Request For Call Back</a>
                <a href="#"><i class="fas fa-female"></i> Free Salesforce Training
                    for Women</a> <a href="#"><i class="fas fa-gift"></i> Salesforce
                    Learning</a>
            </div>



 <%@include file="base-jquery.jsp"%>

		<script>
                function toggleAccordion(header) {
                    const content = header.nextElementSibling;
                    const icon = header.querySelector('.accordion-icon');
                    if (content.style.display === "block") {
                        content.style.display = "none";
                        icon.textContent = "+"; // Change icon to "+"
                    } else {
                        content.style.display = "block";
                        icon.textContent = "-"; // Change icon to "-"
                    }
                }

                let slideIndex = 0;

                // Function to show the slide and activate the corresponding dot
                function showSlide(n) {
                    const slides = document.querySelectorAll('.slide');
                    const dots = document.querySelectorAll('.dot');

                    if (n >= slides.length) {
                        slideIndex = 0; // If we've gone past the last slide, start from the first
                    }
                    if (n < 0) {
                        slideIndex = slides.length - 1; // If we've gone before the first slide, go to the last
                    }

                    // Hide all slides and remove active class from all dots
                    slides.forEach(slide => slide.style.display = 'none');
                    dots.forEach(dot => dot.classList.remove('active'));

                    // Show the current slide and activate the corresponding dot
                    slides[slideIndex].style.display = 'block';
                    dots[slideIndex].classList.add('active');
                }

                // Function to change slides when a dot is clicked
                function currentSlide(n) {
                    showSlide(slideIndex = n);
                }

                // Initial setup
                document.addEventListener('DOMContentLoaded', () => {
                    const dots = document.querySelectorAll('.dot');
                    dots.forEach((dot, index) => {
                        dot.addEventListener('click', () => currentSlide(index));
                    });

                    // Show the first slide by default
                    showSlide(slideIndex);
                });
            </script>
               
</body>

</html>