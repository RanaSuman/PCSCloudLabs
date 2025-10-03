<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.dao.pojo.OnGoingEvents"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ongoing Events</title>

<!-- Bootstrap CSS/JS for Carousel -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<style>
.text-center {
	margin-top: 10px;
	text-align: center;
}

.text-center mb-4 {
	margin-top: 20px;
	text-align: center;
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

.events-section {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	flex-wrap: wrap;
	padding-top: 2rem;
	padding-bottom: 2rem;
}

.events-sub {
	width: 100vw;
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	gap: 1rem;
}

.ongo-ev {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
	width: 900px;
	height: auto;
	gap: 2rem;
	padding: 1rem;
}

.card {
	border-radius: 10px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card img {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	object-fit: cover;
}

.why-box {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	width: 400px;
	height: 400px;
	background-color: #fff;
	margin-top: 20px;
	position: sticky;
	top: 90px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

@media screen and (max-width: 991px) {
	.why-box {
		position: static;
		margin-top: 20px;
	}
}

.sub-why {
	width: 380px;
	height: 300px;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: row;
	flex-wrap: wrap;
	gap: 1.5rem;
}
/* Responsive for smaller screens */
@media ( max-width : 480px) {
	.card img {
		width: 220px;
	}
	.ongo-ev {
		width: 500px;
		height: auto;
		gap: 2rem;
		padding: 1rem;
	}
	.why-box {
		width: 320px;
		height: 330px;
		margin-top: 20px;
	}
	.sub-why {
		width: 290px;
		height: 200px;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-direction: row;
		flex-wrap: wrap;
		gap: 1.5rem;
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

	<!--======================= Events Starts Here =========================-->
	<section class="events-section">
		<h2 class="text-center event_mar"
			style="font-weight: bold; font-size: 40px;">Ongoing Events</h2>
		<p class="text-center mb-4">Events & Webinars are designed for
			continuous development and are created by technical domain experts
			around the world.</p>

		<div class="events-sub">
			<div class="ongo-ev">
				<div class="row g-4 w-100">
					<%
					List<OnGoingEvents> events = (List<OnGoingEvents>) request.getAttribute("ongoinglist");
					System.out.println(events);
					if (events != null && !events.isEmpty()) {
						if (events.size() <= 2) {
							// Show 1 or 2 cards normally
							for (OnGoingEvents ev : events) {
					%>  
					<div class="col-md-4">
						<div class="card h-100 shadow-sm">
							<img src="<%=request.getContextPath() + "/" + ev.getImage()%>"
								class="card-img-top" alt="Event Image" style="height: 200px;">
							<div class="card-body">
								<h5 class="card-title" style="font-weight: 700;"><%=ev.getTitle()%></h5>
								<p class="card-text mb-1">
									<strong>Time:</strong>
									<%=ev.getTime()%></p>
								<p class="card-text mb-1">
									<strong>Start Date:</strong>
									<%=ev.getStartDate()%></p>
								<p class="card-text">
									<strong>End Date:</strong>
									<%=ev.getEndDate()%></p>
							</div>
						</div>
					</div>
					<%
					}
					} else {
					// More than 2 events => Carousel
					%>
					<div id="eventsCarousel" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<%
							int total = events.size();
							for (int i = 0; i < total; i++) {
								String activeClass = (i == 0) ? "active" : "";
								// current card
								OnGoingEvents ev1 = events.get(i);
								// next card (wrap-around)
								OnGoingEvents ev2 = events.get((i + 1) % total);
							%>
							<div class="carousel-item <%=activeClass%>">
								<div class="d-flex justify-content-center gap-3">
									<!-- first card -->
									<div class="card h-100 shadow-sm" style="width: 380px;">
										<img
											src="<%=request.getContextPath() + "/" + ev1.getImage()%>"
											class="card-img-top" alt="Event Image" style="height: 200px;">
										<div class="card-body">
											<h5 class="card-title"><%=ev1.getTitle()%></h5>
											<p class="card-text mb-1">
												<strong>Time:</strong>
												<%=ev1.getTime()%></p>
											<p class="card-text mb-1">
												<strong>Start:</strong>
												<%=ev1.getStartDate()%></p>
											<p class="card-text">
												<strong>End:</strong>
												<%=ev1.getEndDate()%></p>
										</div>
									</div>

									<!-- second card -->
									<div class="card h-100 shadow-sm" style="width: 380px;">
										<img
											src="<%=request.getContextPath() + "/" + ev2.getImage()%>"
											class="card-img-top" alt="Event Image" style="height: 200px;">
										<div class="card-body">
											<h5 class="card-title"><%=ev2.getTitle()%></h5>
											<p class="card-text mb-1">
												<strong>Time:</strong>
												<%=ev2.getTime()%></p>
											<p class="card-text mb-1">
												<strong>Start:</strong>
												<%=ev2.getStartDate()%></p>
											<p class="card-text">
												<strong>End:</strong>
												<%=ev2.getEndDate()%></p>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>

						<!-- Carousel Controls -->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#eventsCarousel" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#eventsCarousel" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>


					<%
					}
					} else {
					%>
					<div class="col-12">
						<div class="alert alert-info text-center">No ongoing events
							found.</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
			<div class="why-box">
				<h4>Why Join</h4>
				<span>PCS Cloudlabs Masterclasses</span>
				<div class="sub-why">
					<div style="display: flex; width: 130px;">
						<img
							src="https://assets-v2.scaler.com/assets/events/certificate-01-62466f3f71bfde641037ecfcdcbb3ddc800f4c7347c595bf01eeec457a698132.svg.gz"
							width="40px" />
						<div style="margin-left: 5px;">
							<span style="font-weight: bold; font-size: 14px;">PCS
								Global</span> <span style="font-size: 13px;">Certificate</span>
						</div>
					</div>
					<div style="display: flex; width: 130px;">
						<img
							src="https://assets-v2.scaler.com/assets/events/video-recorder-760c5cec32a76c5fb002cd88e513f7312730f1a01bd7b094f24135aa74e6c42b.svg.gz"
							width="40px" />
						<div style="margin-left: 5px;">
							<span style="font-weight: bold; font-size: 14px;">Live</span> <span
								style="font-size: 13px;">Learning</span>
						</div>
					</div>
					<div style="display: flex; width: 130px;">
						<img
							src="https://assets-v2.scaler.com/assets/events/stars-02-958cc085a8ea7b5cb68f28c182183d5ecb9daf0d3f8a71a0189f82da8baddecb.svg.gz"
							width="40px" />
						<div style="margin-left: 5px;">
							<span style="font-weight: bold; font-size: 14px;">Top</span> <span
								style="font-size: 13px;">Instructors</span>
						</div>
					</div>
					<div style="display: flex; width: 130px;">
						<img
							src="https://assets-v2.scaler.com/assets/events/book-open-7a08f8c060299c1f5548307892d39e63e1a6c36410015b500b7558947e99b1dc.svg.gz"
							width="40px" />
						<div style="margin-left: 5px;">
							<span style="font-weight: bold; font-size: 14px;">Bonus</span> <span
								style="font-size: 13px;">Resources</span>
						</div>
					</div>
					<div style="display: flex; width: 130px;">
						<img
							src="https://assets-v2.scaler.com/assets/events/quiz-5797725b3d0b2f3ec4571df37a810ef5f28656647e549938f33d6b0ac05a6221.svg.gz"
							width="40px" />
						<div style="margin-left: 5px;">
							<span style="font-weight: bold; font-size: 14px;">Live</span><br />
							<span style="font-size: 13px;">Quizzes</span>
						</div>
					</div>
					<div style="display: flex; width: 130px;">
						<img
							src="https://assets-v2.scaler.com/assets/events/earth-22dc28e0b1c07d45b94784ca6d4063bc1d717bb792987ba92643fed439c267ac.svg.gz"
							width="40px" />
						<div style="margin-left: 5px;">
							<span style="font-weight: bold; font-size: 14px;">Real</span><br />
							<span style="font-size: 13px;">World Topics</span>
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