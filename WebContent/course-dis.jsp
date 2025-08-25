<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="base.jsp" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            background-color: #f5f5f5;
            height: 100vh;
            width: 100vw;
            margin: 0;
        }

        .top-panel {
            display: none;
        }

        .sub-body {
            display: flex;
            align-items: center;
            margin-top: 150px;
            justify-content: center;
            width: 100%;
            height: auto;
            flex-wrap: wrap;
        }

        .main-content-wrapper {
            width: 80%;
            background: white;
            margin: 20px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .course-header-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        .course-title {
            font-weight: bold;
            color: #333;
        }

        .contact-info-section {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .contact-info-section i {
            color: #007bff;
        }

        .course-statistics {
            display: flex;
            gap: 20px;
            font-size: 16px;
            margin-top: 10px;
        }

        .video-preview-section {
            text-align: center;
            margin: 20px 0;
        }

        .video-preview-section img {
            width: 100%;
            border-radius: 10px;
        }

        .action-button {
            display: inline-block;
            padding: 10px 15px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
            text-align: center;
        }

        .primary-button {
            background-color: #007bff;
            color: white;
            border: none;
        }

        .outline-button {
            border: 2px solid #007bff;
            color: #007bff;
        }

        .course-description {
            margin-top: 20px;
            font-size: 16px;
            color: #555;
        }

        .highlight-text {
            font-weight: bold;
            color: #333;
        }

        .live-class-notice {
            color: red;
            font-weight: bold;
        }

        .footer-notice {
            margin-top: 20px;
            font-size: 14px;
        }

        .status-badge {
            display: inline-block;
            padding: 5px 10px;
            font-size: 14px;
            border-radius: 5px;
        }

        .high-demand-badge {
            background-color: #198754;
            color: white;
        }

        .free-badge {
            background-color: red;
            color: white;
            padding: 5px;
            font-size: 14px;
            border-radius: 5px;
        }

        @media screen and (max-width: 400px) {
            .sub-body {
                margin-top: 280px;
            }
        }

    </style>
</head>
<body>
    <%@include file="header.jsp" %>

    <div class="sub-body" id="courseDetails" >
        <div class="main-content-wrapper">
            <div class="course-header-section">
                <h1 class="course-title" id="courseName"></h1>
                <div class="contact-info-section">
                    <span>Have queries? Ask us <br> <i class="bi bi-telephone-fill"></i> +91-8697741611 </span>
                </div>
            </div>

            <span class="status-badge high-demand-badge">In High Demand</span>
            
            <div class="course-statistics">
                <span id="course-learners"></span>
                <span id="course-ratings"><i class="bi bi-star-fill"></i> <strong>5</strong> (250+ Ratings)</span>
            </div>

            <!-- Dynamic Course Image -->
            <div class="video-preview-section">
                <img id="course-image" src="" alt="Course Preview">
            </div>

            <!-- Dynamic Course Video -->
            <div class="video-preview-section" id="video-section" style="display: none;">
                <video id="course-video" width="100%" controls>
                    <source src="" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>

            <p><a id="video-link" href="#" class="action-button primary-button" target="_blank">View Course Preview Video</a></p>

            <p class="course-description" id="courseDesc"></p>

            <p class="highlight-text">📢 30 days of free Cloud Lab access worth ₹4000.</p>
            <p class="live-class-notice">📢 Live Online Classes starting on <strong>soon</strong></p>

            <div>
                <a href="#" class="action-button primary-button">Enroll Now</a>
                <a href="#" class="action-button outline-button">Download Curriculum</a>
            </div>
        </div>
    </div>

    <%@include file="drop-us-a-query.jsp" %>
    <%@include file="footer.jsp" %>

    <script>
        function getQueryParams() {
            let params = new URLSearchParams(window.location.search);
            return {
                name: params.get("name"),
                desc: params.get("desc"),
                cer: params.get("cer"),
                hrs: params.get("hrs"),
                cal: params.get("cal")
            };
        }

        function displayCourseDetails() {
            let course = getQueryParams();
            if (course.name) {
                document.getElementById("courseName").innerText = course.name;
                document.getElementById("courseDesc").innerText = course.desc;
                document.getElementById("courseCer").innerText = course.cer;
                document.getElementById("courseHrs").innerText = course.hrs;
                document.getElementById("courseCal").innerText = course.cal;
            } else {
                document.getElementById("courseDetails").innerHTML = "<p>No course selected.</p>";
            }
        }

        window.onload = displayCourseDetails;
    </script>

</body>
</html>
