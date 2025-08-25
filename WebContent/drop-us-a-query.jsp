<!doctype html>
<html lang="en">
<%@include file="base.jsp"%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

 <!-- Bootstrap CSS -->



<style>
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
.query-container.query-color .query-submit
	{
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


</style>
</head>
<body>
   
    <div class="query-container query-color query-transition  duq-mweb">
        
        <!-- Collapsible header section with color change -->
        <div class="color_change query-header collapsible" >
            <span class="title_color query-title"> 
                "Drop us a Query"
                <!-- Image for blinker animation -->
                <picture> 
                    <img height="23" width="23" src="assets/images/content/blinker_d.webp" alt="img"> 
                </picture>
            </span>
            <!-- Chevron icon for collapsible functionality -->
            <span class="query-chevron-icon query-closed">
                <svg xmlns="http://www.w3.org/2000/svg" width="1024" height="1024" viewBox="0 0 1024 1024" class="chevron" >
                    <path d="M994.485 295.755l-497.544 497.544-496.941-497.544 84.932-84.932 412.009 412.009 412.009-412.009 85.534 84.932z"></path>
                </svg>
            </span>
        </div>

        <!-- Main content section, initially hidden -->
        <div class="query-body query-otp-view appear-done enter-done content">    
            
            <!-- Image Section: Displays logo or image at the top -->
            <div class="query-top-section ">
                <div class="query-box-img-center">
                    <picture> 
                        <img width="250" height="73" fullbase="true" alt="Edureka 24x7 Support" title="24x7 Support" loading="lazy" src="assets/images/logo.jpg">
                    </picture>
                </div>
            </div>
            
            <!-- Phone number and logo section -->
            <div class="query-talktous ">
                <div class="query-talktous-icon">
                    <!-- Phone icon (SVG) -->
                    <span><svg xmlns="http://www.w3.org/2000/svg" width="16.523"
                            height="16.491" viewBox="0 0 16.523 16.491">
                                <path data-name="Path 24546" d="M53.8,12.05l-2.3-2.3a1.569,1.569,0,0,0-2.2,0,2.092,2.092,0,0,0-.4.6,1.566,1.566,0,0,1-1.8,1,7.3,7.3,0,0,1-4.3-4.3,1.431,1.431,0,0,1,1-1.8,1.584,1.584,0,0,0,1-1.9,2.092,2.092,0,0,0-.4-.6L42.1.45a1.569,1.569,0,0,0-2.2,0l-1.6,1.6c-1.6,1.6.2,6,4,9.8,3.9,3.9,8.2,5.7,9.8,4l1.6-1.6a1.485,1.485,0,0,0,.1-2.2" transform="translate(-37.72)">
                                </path>
                            </svg>
                    </span>
                </div>
                <!-- Contact info with phone number and description -->
                <div class="query-talktous-info">
                    <a href="tel:+91 89517 55408">+91 8697741611<br></a>
                    <span>Available 24x7 for your queries</span>
                </div>
            </div>

            <!-- Contact form for user input -->
            <form class="query-form">
                <!-- Textarea for the query -->
                <div class="position-relative form-group" >
                    <textarea rows="3" placeholder="Type your query here*" name="query"
                        id="duqFormTextarea" class="duq_input__se4iR1 form-control" ></textarea>
                </div>
				<!-- Phone number input field -->
				<div class="phone-input-container-custom" id="mar">
					<label for="phone-custom">Phone Number</label>
					<div class="phone-input-custom">
						<select id="countryCode-custom">
							<option value="India">IN +91</option>
							<option value="United States">US +1</option>
							<option value="United Kingdom">GB +44</option>
							<option value="Canada">CA +1</option>
							<option value="Australia">AU +61</option>
							<option value="France">FR +33</option>
							<option value="Germany">DE +49</option>
							<option value="China">CN +86</option>
							<option value="Japan">JP +81</option>
							<option value="Brazil">BR +55</option>
							<option value="Russia">RU +7</option>
							<option value="South Africa">ZA +27</option>
							<option value="Singapore">SG +65</option>
							<option value="United Arab Emirates">AE +971</option>
							<option value="Italy">IT +39</option>
							<option value="Spain">ES +34</option>
							<option value="Saudi Arabia">SA +966</option>
							<option value="Sweden">SE +46</option>
							<option value="Switzerland">CH +41</option>
							<option value="Netherlands">NL +31</option>
							<option value="Belgium">BE +32</option>
							<option value="Mexico">MX +52</option>
							<option value="Argentina">AR +54</option>
							<option value="South Korea">KR +82</option>
							<option value="Indonesia">ID +62</option>
							<option value="Pakistan">PK +92</option>
							<option value="Bangladesh">BD +880</option>
							<option value="Nigeria">NG +234</option>
							<option value="Egypt">EG +20</option>
							<option value="Thailand">TH +66</option>
							<option value="Malaysia">MY +60</option>
							<option value="Philippines">PH +63</option>
							<option value="Vietnam">VN +84</option>
							<option value="Turkey">TR +90</option>
							<option value="Iran">IR +98</option>
							<option value="Kenya">KE +254</option>
							<option value="Colombia">CO +57</option>
							<option value="Venezuela">VE +58</option>
							<option value="Poland">PL +48</option>
							<option value="Greece">GR +30</option>
							<option value="Austria">AT +43</option>
							<option value="New Zealand">NZ +64</option>
							<option value="Portugal">PT +351</option>
							<option value="Ireland">IE +353</option>
							<option value="Czech Republic">CZ +420</option>
							<option value="Hong Kong">HK +852</option>
							<option value="Chile">CL +56</option>
							<option value="Romania">RO +40</option>
							<option value="Bulgaria">BG +359</option>
							<option value="Lithuania">LT +370</option>
							<option value="Latvia">LV +371</option>
							<option value="Slovenia">SI +386</option>
							<option value="Slovakia">SK +421</option>
							<option value="Iceland">IS +354</option>
							<option value="Finland">FI +358</option>
							<option value="Norway">NO +47</option>
							<option value="Moldova">MD +373</option>
							<option value="Armenia">AM +374</option>
							<option value="Belarus">BY +375</option>
							<option value="Kazakhstan">KZ +7</option>
							<option value="Ukraine">UA +380</option>
							<option value="Bahamas">BS +1-242</option>
							<option value="Trinidad and Tobago">TT +1-868</option>
							<option value="Jamaica">JM +1-876</option>
							<option value="Puerto Rico">PR +1-787</option>
							<option value="Bonaire Sint Eustatius and Saba">BQ +599</option>
							<!-- Add more countries as needed -->
						</select> <input type="text" id="phone-custom"
							placeholder="Enter Phone Number*" required> 
						
					</div>
				</div>
				<!-- Email input field -->
                <div class="position-relative form-group">
                    <label class="query-label form-label" for="duqFormEmail-duq">Email Id</label>
                    <input placeholder="Enter your email*" name="email"
                        autocomplete="email" type="email" id="duqFormEmail-duq"
                        class="duq_input__se4iR form-control">
                </div>
                <!-- Submit button for the form -->
                <button type="submit" class="query-submit btn btn-primary">SUBMIT QUERY</button>
            </form>
        
        </div>
    </div>

    <script>
        
     
        // Wait for the DOM to fully load
        document.addEventListener("DOMContentLoaded", () => {
            // Select the collapsible container
            const collapsibleContainer = document.querySelector('.query-container');

            // Initially hide the collapsible container
            collapsibleContainer.style.display = "none";

            // Use setTimeout to show the collapsible section after 3 seconds
            setTimeout(() => {
                collapsibleContainer.style.display = "block";
            }, 2000); // 2000 milliseconds = 2 seconds

            // JavaScript for collapsible functionality
            const collapsible = document.querySelector('.collapsible');
            const content = document.querySelector('.content');
            const chevron = document.querySelector('.chevron');

            // Event listener for collapsing and expanding content
            collapsible.addEventListener('click', () => {
                // Toggle visibility of content
                if (content.style.display === "block") {
                    content.style.display = "none";
                } else {
                    content.style.display = "block";
                }

                // Rotate the chevron icon when clicked
                chevron.classList.toggle("rotate");
            });
        });
        </script>
</body>

</html>
