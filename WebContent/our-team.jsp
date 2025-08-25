
<!doctype html>
<html lang="en">
   <%@include file="base.jsp" %>
 <body>     
     <%@include file="header.jsp" %>   
     <div class="page-nav no-margin row">
       <div class="container">
       </div>
     </div>
     
     <!--=============================== Team Starts Here ============================-->
    <style>
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
@media (max-width: 768px) {
	.session-title h2 {
		margin-top: 30px ;
	}
    .team-row {
        flex-direction: column;
        align-items: center;
    }
}

/* Animations */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes fadeInCard {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
@media ( max-width : 480px) {
	.session-title h2 {
		margin-top: 20px ;
	}
}


</style>

	<section class="our-team team-11">
		<div class="container">
			<div class="session-title row ">
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
<!-- 				Team Member 2
				<div class="col-md-3 col-sm-6">
					<div class="single-usr">
						<img src="assets/images/team/.jpg" alt="Muruli Vijoy">
						<div class="det-o">
							<h4></h4>
							<i>Data Science Trainer </i>
						</div>
					</div>
				</div> -->
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
	</section>
    <!--=============================== Team Starts Here ============================-->
    <%@include file="drop-us-a-query.jsp"%>
     <%@include file="footer.jsp" %>
</body>

    <%--  <%@include file="base-jquery.jsp" %> --%>
    
</html>
   