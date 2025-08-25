
<!doctype html>
<html lang="en">
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

.ev-card1 {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	height: 470px;
	width: 380px;
	border-radius: 10px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.ev-card1 img {
	margin-bottom: 1rem;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.ev-details {
	width: 380px;
	border-bottom: 0.5px solid;
}

.ev-details h3 {
	margin-left: 10px;
	font-size: 20px;
	font-weight: bold;
}

.ev-times {
	display: flex;
	justify-content: center;
	flex-direction: column;
	width: 380px;
	margin-bottom: 10px;
	margin-left: 10px
}

.ev-times span {
	font-size: 13px;
}

.reg-btn {
	align-items: center;
	display: flex;
	height: 110px;
	margin-right: -200px;
}

.reg-btn a {
	border-radius: 3px;
	width: 150px;
	height: 30px;
	display: flex;
	align-items: center;
	justify-content: center;
	text-decoration: none;
	background-color: #2782c2;
	color: white !important;
	cursor: pointer;
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
	top: 90px; /* It will stick when it reaches 20px from the top */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Responsive for mobile and tablet */
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

/* Responsive Design */
@media ( max-width : 1200px) {
	section {
		margin-top: 60px;
	}
}

@media ( max-width : 1024px) {
	section {
		margin-top: 60px;
	}
}

@media ( max-width : 768px) {
	section {
		margin-top: 60px;
	}
}

@media ( max-width : 480px) {
	font-size: 0.8rem ; section {
		margin-top: 60px;
	}
	.ev-card1 img {
		margin-bottom: 1rem;
		width: 220px;
	}
	.ongo-ev {
		width: 500px;
		height: auto;
		gap: 2rem;
		padding: 1rem;
	}
	.ev-card1 {
		height: 400px;
		width: 320px;
	}
	
	.ev-details {
		width: 300px;
	}
	.ev-times {
		width: 300px;
	}
	.ev-times span {
		font-size: 12px;
	}
	.reg-btn {
		height: 110px;
		margin-right: -100px;
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

}
@media ( max-width : 360px) {
	section {
		margin-top: 60px;
	}
}
</style>
<body>
	<%@include file="base.jsp"%>
	<%@include file="header.jsp"%>
	<div class="page-nav no-margin row">
		<div class="container"></div>
	</div>

	<!--======================= Events Starts Here =========================-->
	<section class="events-section ">
		<h2 class="text-center event_mar"
			style="font-weight: bold; font-size: 40px;">Ongoing Events</h2>
		<p class="text-center mb-4">Events & Webinars are designed for
			continuous development and are created by technical domain experts
			around the world.</p>

		<div class="events-sub">
			<div class="ongo-ev">
				<div class="ev-card1">
					<img src="assets/images/events/salesforce-event.jpg" width="290" />
					<div class="ev-details">
						<h3>Master class in Salesforce Markeing Cloud</h3>
						<div class="ev-times">
							<span>Time: 10:00 Am (IST) To 5:00 Pm (IST)</span> <span>Start:
								March 20, 2025 </span> <span>End: March 30, 2025 </span>
						</div>
					</div>
					<div class="reg-btn">
						<a href="salesforce-event.jsp">Register Now</a>
					</div>
				</div>

				<div class="ev-card1">
					<img src="./assets/images/events/vip-event.jpg" width="290" />
					<div class="ev-details">
						<h3>Virtual Intenrship Program (VIP)</h3>
						<div class="ev-times">
							<span>Time: 10:00 Am (IST) To 5:00 Pm (IST)</span> <span>Start:
								March 20, 2025 </span> <span>End: March 30, 2025 </span>
						</div>
					</div>
					<div class="reg-btn">
						<a href="vip-event.jsp">Register Now</a>
					</div>
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
	</section>
	<%@include file="footer.jsp"%>
</body>
<%@include file="base-jquery.jsp"%>
</html>