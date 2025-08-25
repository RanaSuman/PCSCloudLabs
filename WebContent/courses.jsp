<!DOCTYPE html>
<html lang="en">
<%@ include file="base.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
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

        .contact-rooo h4 {
            color: royalblue;
            margin-top: 20px;
        }

        .contact-form {
            padding: 20px;
        }

        .contact-form .cont-row {
            margin-bottom: 10px;
        }

        .contact-form textarea {
            font-size: 14px;
            margin: 10px 0;
            width: 100%;
            padding: 5px;
            resize: none;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
        }

        .contact-store-add {
            padding: 50px 0;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            color: #fff;
        }

        .offertitle {
            text-align: center;
            font-size: 30px;
            color: #002D62;
            font-family: 'Arial', sans-serif;
            margin-bottom: 40px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .contact-store-picture {
            text-align: center;
            margin-bottom: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .contact-store-img img {
            width: 100%;
            height: 200px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

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

        .col-md-4 {
            padding: 20px;
            background-color: #ffffff;
            transition: all 0.3s ease;
        }

        .col-md-4:hover {
            background-color: #f1f1f1;
            transform: scale(1.05);
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        }

        @media (max-width: 768px) {
            .col-md-4 {
                width: 100%;
                padding: 15px;
            }

            .contact-store-picture {
                margin-bottom: 20px;
            }
        }

        @media (max-width: 576px) {
            .offertitle {
                font-size: 24px;
            }

            .contact-store-title h3 {
                font-size: 18px;
            }

            .contact-store-title p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="page-nav no-margin row">
    <div class="container"></div>
</div>
<div class="row contact-rooo no-margin">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 contact-form">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d249759.19784092825!2d79.10145254589841!3d12.009924873581818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1448883859107"
                    allowfullscreen></iframe>

                <h2>Contact Form</h2>
                <form action="#" method="post">
                    <div class="row cont-row">
                        <div class="col-sm-3">
                            <label for="name">Enter Name</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="text" id="name" name="name" placeholder="Enter Name" class="form-control">
                        </div>
                    </div>
                    <div class="row cont-row">
                        <div class="col-sm-3">
                            <label for="email">Email Address</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="email" id="email" name="email" placeholder="Enter Email Address" class="form-control">
                        </div>
                    </div>
                    <div class="row cont-row">
                        <div class="col-sm-3">
                            <label for="mobile">Mobile Number</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" class="form-control">
                        </div>
                    </div>
                    <div class="row cont-row">
                        <div class="col-sm-3">
                            <label for="message">Enter Message</label>
                        </div>
                        <div class="col-sm-8">
                            <textarea id="message" name="message" rows="5" placeholder="Enter Your Message" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-8">
                            <button type="submit" class="btn btn-success">Send Message</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-sm-6 serv">
                <!-- Office details here -->
               			 <div>
							<h4 style="margin-top: 10px; color: royalblue">Bengaluru -
								Headquarter</h4>
							SpringBoard <br /> Dr Puneeth Rajkumar Rd,Mahadevapura <br />
							Land Mark - Beside More Hypermart Mahadevpura <br /> Mr. Arijit
							Sanyal- 9836812465 <br /> Mr. Utpal Anand Pathak - 6205197761
							Phone- (+91) 033-23440159 <br />
						</div>

						<div>
							<h4 style="margin-top: 10px; color: royalblue">PCS Cloud
								Labs -Kolkata,WB</h4>
							DN-36, Suite-1101, Primarc Tower, Saltlake , Sector-v ,
							Kolkata-91 <br /> Phone: Mr. Sunit Chaudhuri +91-8334001667
						</div>

						<div>
							<h4 style="margin-top: 10px; color: royalblue">PCS Cloud
								Labs - Bhubaneswar,Odisha</h4>
							Awfis <br /> Jayadev Vihar, Nandankanan Rd, Nayapalli,
							Bhubaneswar, Odisha - 751013 <br /> Land Mark - Opposite Nalco
							Headquarters <br /> Contact Person : Suman Ananya Sahoo -
							7608807457
						</div>
						<div>
							<h4 style="margin-top: 10px; color: royalblue">PCS Cloud
								Labs - Noida,Uttar Pradesh</h4>
							Sharkspace Coworking <br /> First floor, A-83, Sector 63 Rd, A
							Block, Sector 63, Noida, Uttar Pradesh 201301 <br /> Land Mark -
							J9CH+7X Noida, Uttar Pradesh <br /> Contact Person : Ujjawal
							Chandra - 9717076341 ,Chandan Das - 7654140885 ,Sunil Patel -
							8318955731
						</div>
						<div>
							<h4 style="margin-top: 10px; color: royalblue">PCS Cloud
								Labs - PAN India & Overseas</h4>

							Contact Person : Mr. Arijit Sanyal- 9836812465 | Mr. Utpal Anand
							Pathak - 6205197761 | Mr. Sunit Chaudhuri +91-8334001667
						</div>
                
            </div>
        </div>
    </div>
</div>

 <section>
       <h2 style="font-weight: bold; text-align: center;">Our Work Location</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="contact-store-picture">
                        <div class="contact-store-img">
                            <img decoding="async" src="assets/images/content/pcsglobalbengluruoffice.jpeg" alt=" Bengaluru (HQ)" class="lazyloaded" style="border-top-left-radius: 10px;border-top-right-radius: 10px;">
                        </div>
                        <div class="contact-store-title">
                            <h3>Bengaluru H.Q.</h3>
                            <p>57/65, Chikkalakshmaiah Layout,Hosur main road, Bengaluru,Karnataka 560029 Bengaluru</p>
                            <a href="https://www.google.com/maps/place/Beyond+health+clinic+and+medical+shop/@12.9357488,77.6084033,19z/data=!4m10!3m9!1s0x3bae15c40de411c3:0x250f8515b62e6f80!5m3!1s2023-10-10!4m1!1i2!8m2!3d12.9360824!4d77.6089132!16s%2Fg%2F11h909gqqd?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">bengaluru Location</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-store-picture">
                        <div class="contact-store-img">
                            <img decoding="async" src="assets/images/content/kolkata.jpeg" alt="Kolkata Orangemantra" class="lazyloaded" style="border-top-left-radius: 10px;border-top-right-radius: 10px;">
                        </div>
                        <div class="contact-store-title">
                            <h3>Kolkata Saltlake</h3>
                            <p>Godrej Genesis, Block EP & GP Opp to Syndicate Bank, Sector V, Salt Lake City, Kolkata, West Bengal 700091, India </p>
                            <a href="https://www.google.com/maps/place/Godrej+Genesis/@22.5730705,88.4338005,17z/data=!3m1!4b1!4m6!3m5!1s0x3a02754101008535:0xe5a40f5bdaad26f8!8m2!3d22.5730705!4d88.4338005!16s%2Fg%2F11l4n5cfyy?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">Kolkata Location</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-store-picture">
                        <div class="contact-store-img">
                            <img decoding="async" src="assets/images/content/bhuvaneshwar.jpeg"  alt="Bhuvanesher Orangemantra" class="lazyloaded" style="border-top-left-radius: 10px;border-top-right-radius: 10px;">
                        </div>
                        <div class="contact-store-title">
                            <h3>Bhuvaneshwar</h3>
                            <p> Opposite Nalco Headquarters, Jayadev Vihar, Nandankanan Rd,
                                Odisha Nayapalli Bhubaneswar 751013</p>
                            <a href="https://www.google.com/maps/place/NALCO+BHAWAN/@20.3040371,85.8212738,17z/data=!3m1!4b1!4m6!3m5!1s0x3a1909c76ef5d24d:0x26075c3af849ce46!8m2!3d20.3040371!4d85.8212738!16s%2Fg%2F1tdmhx71?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">Bhubaneswar Location</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-store-picture">
                        <div class="contact-store-img">
                            <img decoding="async" src="assets/images/content/noida.jpeg"  alt="Noida Orangemantra" class="lazyloaded" style="border-top-left-radius: 10px;border-top-right-radius: 10px;">
                        </div>
                        <div class="contact-store-title">
                            <h3>Noida</h3>
                            <p>First floor, A-83, Sector 63 Rd, A Block, Sector 63, Noida, Uttar Pradesh 201301</p>
                            <a href="https://www.google.com/maps/place/Sharkspace+Coworking+%7C+Office+on+Rent/@28.6207146,77.3799469,17z/data=!3m1!4b1!4m6!3m5!1s0x390cefb95942fa95:0xeb0ad81d2e7debd8!8m2!3d28.6207146!4d77.3799469!16s%2Fg%2F11vy5f2vkm?entry=ttu&g_ep=EgoyMDI1MDEwMi4wIKXMDSoASAFQAw%3D%3D">Noida Location</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<%@ include file="footer.jsp" %>
<%@ include file="base-jquery.jsp" %>
</body>
</html>
