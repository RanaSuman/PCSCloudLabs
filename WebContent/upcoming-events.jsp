
<!doctype html>
<html lang="en">
<style>
.carousl:hover img, .cours-card:hover img, .video-container:hover iframe {
	transform: scale(1.05); /* Slightly enlarge */
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3); /* Add shadow */
	transition: all 0.3s ease-in-out; /* Smooth transition */
}

.text-center {
	margin-top: 10px;
	text-align: center;
}

.text-center mb-4 {
	margin-top: 20px;
	text-align: center;
}

/* Optional: Adjust cursor */
.carousl:hover img, .cours-card:hover img, .video-container:hover iframe {
	cursor: pointer;
}

/* Additional styling for hover effects (optional) */
.carousl:hover img, .cours-card:hover .cours-name {
	color: #ff9800; /* Highlight text on hover */
	font-weight: bold;
}

/* Slider Styling Starts here */
/* General Styles */
.carousel-inner img {
	height: 500px;
	object-fit: cover;
	
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
    /*  background-image: url('assets/images/slider/back12.png'); /* Replace 'your-image-path.jpg' with the path to your image */ */
     background-size: cover; /* Ensures the image covers the entire container */
     background-position: center; /* Centers the image */
     background-repeat: no-repeat; /* Prevents the image from repeating */
     overflow: hidden;
     width: 100%;
     background-color:#FFFF;
    
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
@media (max-width: 1200px) {
        section {
        margin-top: 60px;
    }
    
    .containr {
        padding: 10px;
    }
}

@media (max-width: 1024px) {
        section {
        margin-top: 60px;
    }
    
    .containr {
        flex-direction: column;
        align-items: center;
    }
    .carousl {
        flex: 1 1 100%;
        justify-content: center;
    }
}

@media (max-width: 768px) {
    section {
        margin-top: 60px;
    }

    .carousl {
        padding: 15px;
    }

    .arrow {
        font-size: 1.8rem;
    }
    .event_mar{
    margin-top:100px;
    }
}
@media (max-width: 480px) {
    font-size: 0.8rem;
    section {
        margin-top: 60px;
    }
    .carousel {
        padding: 10px;
    }
    .arrow {
        font-size: 1.5rem;
    }
    .event_mar{
    margin-top:80px;
    }
}

@media (max-width: 360px) {
    section {
        margin-top: 60px;
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


/* Slider Styling Ends here */
</style>
<body>
	 <%@include file="base.jsp"%>
	<%@include file="header.jsp"%>
	<div class="page-nav no-margin row">
		<div class="container"></div>
	</div>
	 
	<!--======================= Events Starts Here =========================-->
	<section class="events-section ">
		<h2 class="text-center event_mar">Regular Events</h2>
		<p class="text-center mb-4">Events & Webinars are designed for
			continuous development and are created by technical domain experts
			around the world.</p>

		<div class="row no-gutters">
			<div class="col-md-1 col-sm-12 mb-3"></div>

			<!-- First Course Card (Image) -->
			<div class="col-md-5 col-sm-12 mb-3">

				<div class="slider-detail">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
							
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="containr carousl"style="padding: 20px">
								
										<img alt="Internship Image"
											 src="assets/images/content/internships.jpg" style="height: 350px; width: 100%; border-radius: 20px;">
									
								</div>
							</div>
							<div class="carousel-item">
								<div class="containr carousl"style="padding: 20px" >
									
										<img alt="Java Training Image"
											src="assets/images/content/salesforeces.jpg" style="height: 350px; width: 100%; border-radius: 20px;">
									
								</div>
							</div>
							<div class="carousel-item">
								<div class="containr carousl" style="padding: 20px">

									<img alt="Salesforce Image"
										src="assets/images/content/javat.jpg"
										style="height: 350px; width: 100%; border-radius: 20px;">

								</div>
							</div>
							<div class="carousel-item">
								<div class="containr carousl" style="padding: 20px">

									<img alt="Python Image"
										src="assets/images/content/pythonbanner.jpg"
										style="height: 350px; width: 100%; border-radius: 20px;">

								</div>
							</div>


						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			
			

			<!-- Second Course Card (Video) -->
			<div class="col-md-5 col-sm-12 mb-3">
				<div class="video-container " style="padding: 20px">
					<iframe src="https://www.youtube.com/embed/7A14qzsSnYI"
						title="YouTube video player" frameborder="0" class="w-100"
						style="height: 350px; width: 100%; border-radius: 20px;"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen> </iframe>
				</div>
			</div>
			<div class="col-md-1 col-sm-12 mb-3"></div>
		</div>
	</section>
	
	<!-- Content for the Internship -->

<section class="py-5">
  <div class="container">
    <!-- Main Heading -->
    <h1 class="main-heading text-center mb-4" style="font-weight:bold">
      Free Internship Opportunity at PCS Cloud Lab
    </h1>
    <!-- Introduction -->
    <p class="intro-text text-center lead" style="font-weight:bold">
      Are you ready to kick-start your tech career?
    </p>
    <p class="intro-text text-center" style="font-weight:bold">
      PCS Cloud Lab is excited to offer:
    </p>
    <div class="offer-text text-center mb-4">
      Free Internship Programs to help you gain hands-on experience and learn
      in-demand skills to excel in the tech industry
    </div>

    <!-- Internship Details -->
    <h3 style="font-weight:bold">Internship Duration:</h3>
    <p>1 Month</p>

    <h3 style="font-weight:bold">Location:</h3>
    <p>PCS Cloud Lab (Onsite/Online options available)</p>

    <!-- Courses Offered -->
    <h3 style="font-weight:bold">Courses Offered:</h3>
    <p>
      Our internship program includes expert-led training in a wide range of courses tailored for beginners and professionals alike:
    </p>
<ul style="list-style-type: disc; margin: 1rem 0; padding-left: 1.5rem; font-size: 1.2rem; line-height: 1.8; font-weight: bold;">
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    Java Training Course: Master Java programming and object-oriented concepts.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    Salesforce CRM: Learn Salesforce CRM development and administration.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    Python Programming: Explore the world of Python for data analysis, web development, and more.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    Linux: Gain expertise in Linux server administration and shell scripting.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    JavaScript: Build dynamic websites with JavaScript fundamentals and advanced techniques.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    PHP: Create powerful backend solutions with PHP and MySQL integration.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    SQL: Learn database management and SQL query writing.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    Android Development: Develop mobile applications for Android platforms.
  </li>
  <li style="margin-bottom: 1rem; color: #000; font-size: 1.2rem; text-transform: uppercase; border-left: 4px solid #007bff; padding-left: 0.5rem;">
    Other Courses: Additional training options are available to broaden your skill set.
  </li>
</ul>



    <!-- Why Join -->
    <h1 class="text-center mt-5" style="font-weight:bold">Why Join This Internship?</h1>
    <div class="benefits row mt-4">
      <div class="benefit-item col-md-6">
        <h4>Hands-on Projects:</h4>
        <p>Work on real-world projects guided by industry experts.</p>
      </div>
      <div class="benefit-item col-md-6">
        <h4>Certification:</h4>
        <p>Receive a certificate of completion to boost your resume.</p>
      </div>
      <div class="benefit-item col-md-6">
        <h4>Career Growth:</h4>
        <p>Build a strong foundation for a successful career in IT.</p>
      </div>
      <div class="benefit-item col-md-6">
        <h4>Networking Opportunities:</h4>
        <p>Connect with like-minded peers and experienced professionals.</p>
      </div>
    </div>

    <!-- Who Can Apply -->
    <h1 class="text-center mt-5" style="font-weight:bold">Who Can Apply</h1>
    <p>Fresh graduates, students, and IT enthusiasts eager to learn new technologies.</p>
    <p>Individuals seeking practical experience and certifications in high-demand skills.</p>

    <h1 class="text-center mt-5">
      Dont miss this incredible opportunity to learn, grow, and launch your
      tech career all for free!
    </h1>
  </div>
</section>
	<%@include file="footer.jsp"%>
</body>
<%@include file="base-jquery.jsp"%>
</html>