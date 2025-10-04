<!doctype html>
<html lang="en">
   <%@include file="base.jsp" %>
<style>
.ex_mar{
margin-top: 0px !important;
}

@media ( max-width : 480px) {
	.ex_mar {
		margin-top: 50px !important;
	}
}
@media ( max-width : 1200px) {
	.ex_mar {
		margin-top: 0px;
	}
}
@media ( max-width : 768px) {
	.ex_mar {
		margin-top: 50px !important;
	}
}

</style>
<body>     
     <%@include file="header.jsp" %>   
     <div class="page-nav no-margin row">
       <div class="container">
       </div>
     </div>
     
      <!--################### About Us Starts Here #######################--->
         <div id="about" class="about-company ex_mar">
          <div class="container ">
              <div class="row">
                 <div class="col-md-6">
                   <div class="detail">
                       <h3 class="ex_mar">About PCS Cloud Lab</h3>
                    <p>PCS Cloud Lab is an online platform that offers students from all over the world a first-rate educational experience. Our expertise mentors have more than six years of professional experience in their specialised technological fields and have been employed as working professionals for the past 10 to 11 years.</p>
							</br>
						<h3>Why PCS Cloud Labs?</h3>
					<p>We provide the best online training courses in the latest technologies that are trending and job-market oriented. It includes full stack Java, Python, Salesforce, Machine Learning, Artificial Intelligence and so on and so forth. You will get plethora of benefits by learning real-time concepts from our expertise mentors.</p>
					<p>Our Job Help programme is organised and arranged such that students are forced to comprehend the ideas from the perspective of an interview. After the completion of each and every course, we provide expected and most regularly asked interview questions to foster confidence in students from day one. Several students have benefited from this effective method in being ready early for tough employment in the connected IT area.</p>		
							</br>
						<h3>Mission:</h3>
					<p>To give everyone who wants to improve their career advancement in the IT sector an equal opportunity by offering the greatest training with Real Time Projects that will help them to be prepared for their dream jobs.</p>	
                           </br>
						 <h3>Vision:</h3>  
					<p>To establish ourself as one of the leading technology Company across the globe. To impart technological knowledge to freshers and job seekers across West Bengal and Pan India.</p>	 
				   </div>
               </div>
               <div class="col-md-6">
                   <div class="imag">
                       <img src="assets/images/NewImages/image6.jpg" alt="Java Training">
                   </div>
               </div> 
              </div>
          </div>           
       </div>
   <%@include file="drop-us-a-query.jsp"%>
     <%@include file="footer.jsp" %>
     
</body>
   
</html>