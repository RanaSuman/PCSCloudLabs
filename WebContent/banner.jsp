<!doctype html>
<html lang="en">

<head>
<style>
/* General Styles */
.carousel-inner img {
	height: 500px;
	object-fit: cover;
	padding-left: 20px;
}

h2, h3 {
	color: #333;
	font-weight: bold;
}

.slider-detail {
	padding-top: 0px !important;
}

.slider-detail .carousel-caption p {
	margin-top: 10px !important;
}

.col-md-4 {
	margin-bottom: 10px;
}

/* Ensure all cards are the same height */
.card {
	border: none;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s;
	height: 100%; /* Ensure cards expand to full height */
	display: flex;
	flex-direction: column;
	/* Ensures proper alignment of content inside */
	border-radius: 20px !important;
}

.card-body {
	background-color: #ffc107;
	flex-grow: 1; /* Make the card body expand equally */
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	border-radius: 20px !important;
}

.custom-margin {
	margin: 10px 0;
}

/* Card Hover Effect */
.card {
	border: none;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s;
}

.card:hover {
	transform: translateY(-5px);
}

hr {
	border-top: 1px solid #ddd;
}

ul {
	color: #555;
	padding-left: 20px;
}

/* Footer */
footer {
	padding: 20px !important;
	background-color: #343a40;
	color: white;
	padding: 20px 0;
}

footer a {
	color: fade;
	text-decoration: none;
}

footer a:hover {
	text-decoration: underline;
}

/* Styling for the Plenary section */
.Certification-training-container {
	padding: 30px;
	margin: 0 auto; /* Center the container */
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	border-radius: 10px;
	max-width: 1200px; /* Limit the width for better alignment */
	align-item: center;
}

.left-content-section {
	flex: 1 1 65%;
	/* Set the left section to take up 65% of the container */
	max-width: 800px; /* Ensure it doesnt exceed a reasonable size */
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
	justify-content: center; /* Center vertically */
	align-items: center; /* Center horizontally */
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
	justify-content: center; /* Center content vertically */
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
	padding: 0 50px;
}

/* Make the layout responsive */
@media ( max-width : 1024px) {
	.Certification-training-container {
		flex-direction: column;
		gap: 20px;
	}
	.left-container-section, .right-container-section {
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

/* Additional responsive adjustments for smaller devices */
@media ( max-width : 768px) {
	.training-section {
		padding: 10px;
	}
	.Certification-training-container {
		margin: 0 10px;
		flex-direction: column;
		align-items: center;
	}
	.left-content-section, .right-container-section {
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
	.creden {
		width: 100%;
		margin: 10px 0;
	}
	.creden img {
		width: 40px;
		height: 40px;
	}
	.creden h3, .creden p {
		font-size: 14px;
	}
}

/* Ensure table content is scrollable on smaller screens */
@media ( max-width : 768px) {
	.table_body {
		padding: 20px;
		display: block; /* Allows table to scroll horizontally */
		overflow-x: auto;

		/* white-space: nowrap; /* Prevent wrapping of table content */
		*/
	}
}

@media ( max-width : 480px) {
	.table_body th, .table_body td {
		font-size: 14px; /* Reduce font size for better readability */
		padding: 8px; /* Adjust padding */
	}
}

.plenary-header {
	padding: 10px;
	color: #FFFF;
}
/* Hover effect for table rows */
.table tbody tr:hover {
	background-color: #f2f2f2;
	cursor: pointer;
}

/* Hover effect for the course price box */
.price-box:hover {
	background-color: #003b70;
	color: white;
	transform: scale(1.05);
	transition: all 0.3s ease-in-out;
}

/* Hover effect for the button */
.btn-primary:hover {
	background-color: #0056b3;
	border-color: #004080;
	transition: background-color 0.5s ease, border-color 0.5s ease;
}

.center {
	display: flex;
	justify-content: center;
	align-items: center;
	border: 3px solid green;
}

.card:hover {
	transform: scale(1.1);
	border-color: #1a73e8;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	border-radius: 20px !important;
}

/* -------------------------------- Banner Responsive CSS ----------------------------------- */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
	color: #333;
	box-sizing: border-box;
}

.containr {
	display: flex;
	flex-wrap: wrap;
	padding-left: 45px;
	justify-content: space-between;
	max-width: 100%; /* max-width: 1200px; */
	background-image: url('assets/images/slider/back12.png');
	/* Replace 'your-image-path.jpg' with the path to your image */
	background-size: cover;
	/* Ensures the image covers the entire container */
	background-position: center; /* Centers the image */
	background-repeat: no-repeat; /* Prevents the image from repeating */
	overflow: hidden;
	width: 100%;
}

.text-contet {
	flex: 1 1 50%;
	padding: 20px;
	box-sizing: border-box;
	display: flex;
	flex-direction: column;
	justify-content: center;
	
}

.text-contet h2 {
	font-size: 44px "Open Sans", sans-serif;
	font-weight: bold;
	margin: 0 0 10px;
	color: #202020;
	animation: bounceInDown 1s ease-in-out;
}

.text-contet p {
	font-size: 16px "Open Sans", sans-serif;
	font-weight: 600;
	line-height: 1.5;
	margin-bottom: 20px;
	color: #202020;
	animation: bounceInLeft 1s ease-in-out;
}

.enrol-btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #ffc107;
	border-color: #ffc107;
	color: #212529;
	text-decoration: none;
	border-radius: 5px;
	font-size: 1rem;
	text-align: center;
	font-weight: bold;
	transition: background-color 0.3s;
	width: fit-content;
	animation: bounceInUp 1s ease-in-out;
}

.enrol-btn:hover {
	background-color: #ffc107;
}

.powered-by {
	margin-top: 20px;
	font-size: 0.9rem;
	color: #555;
	animation: bounceInUp 1s ease-in-out;
}

.powered-by span {
	font-weight: bold;
}

.carousl {
	flex: 1 1 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	padding-top: 20px;
	box-sizing: border-box;
}

.carousl img {
	max-width: 100%;
	height: auto;
}

.arrow {
	font-size: 2rem;
	color: #007bff;
	cursor: pointer;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	user-select: none;
}

.arrow:hover {
	color: #0056b3;
}

.arrow:first-of-type {
	left: 10px;
}

.arrow:last-of-type {
	right: 10px;
}

/* Responsive Design */
@media ( max-width : 1200px) {
	.containr {
		padding: 10px;
	}
}

@media ( max-width : 1024px) {
	.containr {
		flex-direction: column;
		align-items: center;
	}
	.text-contet {
		flex: 1 1 100%;
		text-align: center;
		padding: 20px;
		display: flex;
		flex-direction: column;
		align-items: center; /* Center elements horizontally */
	}
	.carousl {
		flex: 1 1 100%;
		justify-content: center;
	}
}

@media ( max-width : 768px) {
	.text-contet {
		padding: 15px;
		display: flex;
		flex-direction: column;
		align-items: center; /* Center elements horizontally */
		text-align: center;
		margin-top: 80px !important;
	}
	.text-contet h1 {
		font-size: 1.4rem;
	}
	.text-contet p {
		font-size: 0.9rem;
	}
	.enrol-btn {
		font-size: 0.9rem;
		padding: 8px 16px;
		margin: 10px 0; /* Add spacing */
	}
	.carousl {
		padding: 15px;
	}
	.arrow {
		font-size: 1.8rem;
	}
}

@media ( max-width : 480px) {
	.text-contet {
		padding: 10px;
		display: flex;
		flex-direction: column;
		align-items: center; /* Center elements horizontally */
		text-align: center;
		margin-top: 80px !important;
	}
	.text-contet h1 {
		font-size: 1.2rem;
	}
	.text-contet p {
		font-size: 0.8rem;
	}
	.enrol-btn {
		font-size: 0.8rem;
		padding: 6px 12px;
		margin: 10px 0; /* Add spacing */
	}
	.carousl {
		padding: 10px;
	}
	.arrow {
		font-size: 1.5rem;
	}
}

@media ( max-width : 360px) {
	.text-contet {
		padding: 10px;
		display: flex;
		flex-direction: column;
		align-items: center; /* Center elements horizontally */
		text-align: center;
	}
	.text-contet h1 {
		font-size: 1rem;
	}
	.text-contet p {
		font-size: 0.7rem;
	}
	.enrol-btn {
		font-size: 0.7rem;
		padding: 5px 10px;
		margin: 10px 0; /* Add spacing */
	}
	.carousl {
		padding: 5px;
	}
	.arrow {
		font-size: 1.2rem;
	}
}

/* Add animations */
@keyframes bounceInDown {
  0% {
    opacity: 0;
    transform: translateY(-100px);
  }
  60% {
    opacity: 1;
    transform: translateY(20px);
  }
  100% {
    transform: translateY(0);
  }
}

@keyframes bounceInLeft {
  0% {
    opacity: 0;
    transform: translateX(-100px);
  }
  60% {
    opacity: 1;
    transform: translateX(20px);
  }
  100% {
    transform: translateX(0);
  }
}

@keyframes bounceInUp {
  0% {
    opacity: 0;
    transform: translateY(100px);
  }
  60% {
    opacity: 1;
    transform: translateY(-20px);
  }
  100% {
    transform: translateY(0);
  }
}

@media (max-width: 480px) {
  .text-content h4,
  .text-content p,
  .enrol-btn,
  .powered-by {
    animation-duration: 1.5s; /* Smoother animation on smaller screens */
  }
}

</style>
</head>
<body>
	<%@include file="base.jsp"%>
	<%@include file="header.jsp"%>
	<div class="page-nav no-margin row">
		<div class="container"></div>
	</div>


    <div class="slider-detail">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="containr">
                <div class="text-contet">
                  <h2>Software Training & 100% Placement</h2>
                  <p>
                     Get a Job-Guranteed!
                     Enroll Now For Emerging Technologies and Trending Courses with Job Assurance
                     17+ Years Experience in Software Training & Placemen
                     17+ Years Experience in Software Training & Placements
                     Avail Both Classroom & Online Courses
                     Headquarted in Bangalore, Kolkata, Bhubaneswar and PAN India & Overseas
                  </p>
                  <a class="enrol-btn" href="#">Apply Online</a>
                  <p class="powered-by">
                    Powered by <span>PCS Cloud Labs</span>
                  </p>
                </div>
                <div class="carousl">
                  <img alt="Java Full Stack Training and Certification icons" height="450" src="assets/images/slider/back.png" width="450"/>
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="containr">
                <div class="text-contet">
                  <h2>Software Training & 100% Placement</h2>
                  <p>
                    Get a Job-Guranteed!
                    Enroll Now For Emerging Technologies and Trending Courses with Job Assurance
                    17+ Years Experience in Software Training & Placemen
                    17+ Years Experience in Software Training & Placements
                    Avail Both Classroom & Online Courses
                     Headquarted in Bangalore, Kolkata, Bhubaneswar and PAN India & Overseas
                  </p>
                  <a class="enrol-btn" href="#">Apply Online</a>
                  <p class="powered-by">
                    Powered by <span>PCS Cloud Labs</span>
                  </p>
                </div>
                <div class="carousl">
                  <img alt="Advanced Java Full Stack Training" height="450" src="assets/images/slider/back.png" width="450"/>
                </div>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    </div>



</body>
</html>