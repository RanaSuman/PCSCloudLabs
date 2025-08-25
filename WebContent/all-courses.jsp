<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<%@include file="base.jsp"%>
<title>Courses List</title>
<style>
body {
	display: flex;
	flex-direction: column;
	background-color: #f5f5f5;
	height: 100vh;
	width: 100vw;
	margin: 0;
}

.sub-bd {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	margin-top: 180px;
}

.sea-div {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

.main-head {
	color: #333;
}

.search-container {
	margin-bottom: 20px;
}

.sear-bar {
	padding: 10px;
	width: 300px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

#courseCards {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
	width: 90%;
	height: auto;
}

.course-card {
	background: white;
	padding: 15px;
	margin: 20px;
	width: 400px;
	height: 350px;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.course-card:hover {
	box-shadow: 0px 2px 10px 2px;
	transform:
}

.course-card h3 {
	font-size: 35px;
	font-weight: bolder;
	margin-bottom: 20px;
}

.course-card p {
	margin-bottom: 10px;
	font-size: 15px;
}

.view-btn {
	background: #007bff;
	color: white;
	border: none;
	padding: 8px 12px;
	cursor: pointer;
	border-radius: 5px;
	margin-top: 20px;
	margin-left: 100px;
}

.view-btn:hover {
	background: #0056b3;
}

#noResults {
	color: red;
	display: none;
}

@media screen and (max-width: 430px) {
	.sub-bd {
		margin-top: 320px;
	}
	.main-head {
		font-size: 35px;
	}
}
</style>

</head>
<body>
	<%@include file="header.jsp"%>

	<div class="sub-bd">
		<div class="sea-div">
			<h1 class="main-head">All Available Courses</h1>
			<div class="search-container">
				<input class="sear-bar" type="text" id="searchInput"
					placeholder="Search courses...">
			</div>
		</div>
		<div id="noResults">No course found</div>
		<div id="courseCards"></div>
	</div>
	<%@include file="footer.jsp"%>

	<script src="courses-list.js"></script>
	<script>
	
		console.log(courses);
        function loadCourses() {
            let courseContainer = document.getElementById("courseCards");
            courseContainer.innerHTML = "";
            courses.all.forEach((course, index) => {
                let card = '<div class="course-card unique-' + index + '">' +
                               '<h3>' + course.name + '</h3>' +
                               '<h6>' + course.Desp + '</h6>' +
                               '<p><strong>Certificate:</strong> ' + course.cer + '</p>' +
                               '<p><strong>Duration:</strong> ' + course.hrs + '</p>' +
                               '<p><strong>Schedule:</strong> ' + course.cal + '</p>' +
                               '<button class="view-btn" onclick="viewCourse(\'' + course.name + '\', \'' + course.Desp + '\', \'' + course.cer + '\', \'' + course.hrs + '\', \'' + course.cal + '\')">View Course Details</button>' +
                           '</div>';
                courseContainer.innerHTML += card;
            });
        }


        function viewCourse(name, desc, cer, hrs, cal) {
            let url = "course-dis.jsp?name=" + encodeURIComponent(name) +
                      "&desc=" + encodeURIComponent(desc) +
                      "&cer=" + encodeURIComponent(cer) +
                      "&hrs=" + encodeURIComponent(hrs) +
                      "&cal=" + encodeURIComponent(cal);
            window.location.href = url;
        }

        
        function searchCourse() {
            let searchQuery = document.getElementById("searchInput").value.toLowerCase();
            let courseCards = document.querySelectorAll(".course-card");
            let noResults = document.getElementById("noResults");
            let found = false;
            
            courseCards.forEach(card => {
                let title = card.querySelector("h3").innerText.toLowerCase();
                if (title.includes(searchQuery)) {
                    card.style.display = "block";
                    found = true;
                } else {
                    card.style.display = "none";
                }
            });
            
            noResults.style.display = found ? "none" : "block";
        }
        
        window.onload = () => {
            loadCourses();
            document.getElementById("searchInput").addEventListener("keyup", searchCourse);
        };
    </script>

</body>
</html>
