<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="base.jsp" %>

<style>
body {
	display: flex;
	flex-direction: column; 
	background-color: #f5f5f5;
	height: 100vh;
	width:100vw;
	margin: 0;
}
.topPanel{
	display: none;
}

.my-ord-sec {
    display: flex;
    justify-content: center; 
    align-items: center; 
    width: 100vw; 
    height: 100vh;
    margin-top: 180px;
    margin-bottom: 30px;
    gap: 20px; 
}

.sidebar-ord {
    background: #eceff1;
    padding: 20px;
    height: 390px;
    flex-shrink: 0; 
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


.sidebar-ord h3 {
	font-size: 18px;
	color: #2c3e50;
	margin-bottom: 20px;
}

.sidebar-ord ul {
	list-style: none;
	padding: 0;
}

.sidebar-ord ul li {
	padding: 10px;
	display: flex;
	align-items: center;
	color: #34495e;
	cursor: pointer;
	font-size: 19px;
}

.sidebar-ord ul li i {
	margin-right: 10px;
	font-size: 18px;
}

.sidebar-ord ul li:hover {
	background: #dfe6e9;
	border-radius: 5px;
}

.content-ord {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 390px;
    width: 800px;
    background: white;
    border-radius: 10px;
    padding: 50px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.message-box-ord {
	text-align: center;
}

.message-box-ord img {
	width: 80px;
	margin-bottom: 20px;
}

.message-box-ord h2 {
	font-size: 18px;
	color: #2c3e50;
	margin-bottom: 10px;
}

.browse-btn-ord {
	background: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
	display: inline-block;
	margin-top: 10px;
}

.browse-btn-ord:hover {
	background: #0056b3;
}


@media screen and (max-width: 991px) {
	.my-ord-sec {
		flex-direction: column;
		height: auto;
		margin-top: 280px;
	}
	.sidebar-ord{
		display:flex;
		flex-wrap:wrap;
		width: 80%;
		height: auto;
		justify-content: space-between;
	}
	
	.sidebar-ord ul {
        width: 100%; 
        padding: 0;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

	 .sidebar-ord ul li {
        display: none;
    }
    
    .sidebar-ord ul li i{
    	font-size: 18px;
    }
	.sidebar-ord ul li:nth-child(1), 
    .sidebar-ord ul li:nth-child(6), 
    .sidebar-ord ul li:nth-child(7)  {
        display: flex;
        align-items:center;
        font-size: 18px;
    }

	.content-ord {
		width: 90%;
	}
}

@media screen and (max-width: 460px){
	.my-ord-sec {
		margin-top: 320px;
	}
}

@media screen and (max-width: 430px){
	.my-ord-sec {
		margin-top: 310px;
	}
	.sidebar-ord ul li i{
		font-size: 15px;
	}
    
}


</style>

</head>
<body>
	<%@include file="header.jsp" %>


	<section class="my-ord-sec">
		<!-- Sidebar -->
		<div class="sidebar-ord">
			<ul>
				<li> <span class="sd-br-opts"><i class="fas fa-user-circle"></i></span>My Profile</li>
				<li><i class="fas fa-cogs"></i> Personalize</li>
				<li><i class="fas fa-book"></i>  Topics of Interest</li>
				<li><i class="fas fa-briefcase"></i> Career Services</li>
				<li><i class="fas fa-lock"></i> Change Password</li>
				<li> <span class="sd-br-opts"><i class="fas fa-shopping-cart"></i></span> My Orders</li>
				<li> <span class="sd-br-opts"><i class="fas fa-wallet"></i></span>My Wallet</li>
			</ul>
		</div>

		<!-- Main Content -->
		<div class="content-ord">
			<div class="message-box-ord">
				<img src="https://cdn-icons-png.flaticon.com/512/3135/3135768.png"
					alt="Open Book">
				<h2>It looks like you are not enrolled for any course test</h2>
				<a href="all-courses.jsp" class="browse-btn-ord">Browse All Courses</a>
			</div>
		</div>

	</section>

	<%@include file="drop-us-a-query.jsp"%>
	<%@include file="footer.jsp" %>
	
</body>
</html>