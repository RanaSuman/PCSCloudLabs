<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fixed Header with Dropdown & Search</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 15px;
            padding:25px;
            padding-left:0px;
            padding-right:270px;
            height:50px;
            background-color: #f8f9fa;
            text-align: center;
         }

        /* Header Styling */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: linear-gradient(to right, #1c3faa, #5a9fe7);
            padding: 30px 35px;
            height: 50px;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }

         /* Icons */
        .navbar i {
            font-size: 20px;
            color: white;
            cursor: pointer;
            padding: 10px;
            padding-right:200px;
            padding-left:40px;
            
        }

       /* Search Container */
        .search-container {
            display: flex;
            align-items: center;
            flex-grow: 1;
            margin: 0 20px;
            position: relative;
        }
     
        .search-container input {
            width: 50%;
            padding: 12px;
            border: none;
            border-bottom: 1px solid white;
            background: transparent;
            color: white;
            font-size: 16px;
            outline: none;
        }

        .search-container input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        /* Dropdown Menu */
        .menu-container {
            position: relative;
            display: inline-block;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 80px;
            left:0px;
            right: 200px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
            padding: 5px;
          /*   z-index: 1000; */
        /*  padding-left:50px; */
            width: 200px;
            height:400px;
        }

        .dropdown-menu ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .dropdown-menu ul li {
            padding: 10px;
            text-align: left;
           
        }

        .dropdown-menu ul li a {
            text-decoration: none;
            color: black;
            display: block;
        }

        .dropdown-menu ul li:hover {
            background-color: #f1f1f1;
        }

        /* Course List Styling */
        .course-list {
            list-style: none;
            padding: 20px;
            text-align: left;
            max-width: 600px;
            margin: 80px auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .course-list li {
            font-size: 16px;
            padding: 10px 0;
        }

        .course-list a {
            text-decoration: none;
            color: black;
        }

        .course-list a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header class="navbar">
        <i class="bi bi-arrow-left" id="backBtn"></i>
        
        <div class="search-container">
            <input type="text" placeholder="Enter Course, Category or Keyword" id="searchInput">
            <i class="bi bi-search" id="searchBtn"></i>
        </div>
        <i class="bi bi-x-circle" id="closeBtn"></i>
        <div class="menu-container">
            <i class="bi bi-list" id="menuBtn"></i>
            <div class="dropdown-menu" id="dropdownMenu">
                <ul>
                    <li><a href="data science.jsp">Trending Courses</a></li>
                    <li><a href="#">Masters Program</a></li>
                    <li><a href="#">New Launches</a></li>
                    <li><a href="#">DevOps</a></li>
                    <li><a href="#">Cloud Computing</a></li>
                    <li><a href="#">Data Science</a></li>
                    <li><a href="#">BI & Visualization</a></li>
                    <li><a href="#">Programming & Frameworks</a></li>
                    <li><a href="#">Blockchain</a></li>
                    <li><a href="#">Artificial Intelligence</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- COURSE LIST -->
    <ul class="course-list">
        <li><a href="java.jsp">Java Full Stack Training Certification Course</a></li>
        <li><a href="mean&mern.jsp">Mean/Mern Training with Certification Course</a></li>
        <li><a href="devOps.jsp">DevOps Training Certification Course</a></li>
        <li><a href="data-science.jsp">Data Science AI/ML Training Certification Course</a></li>
        <li><a href="python.jsp">Python Training Certification Course</a></li>
        <li><a href="#">Oracle Training Certification Course</a></li>
        <li><a href="all-courses.jsp" class="view-all">View All Courses</a></li>
    </ul>

    <script>
        // Dropdown menu toggle
        document.getElementById("menuBtn").addEventListener("click", function () {
            let dropdown = document.getElementById("dropdownMenu");
            dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
        });

        // Close dropdown when clicking outside
        document.addEventListener("click", function (event) {
            let dropdown = document.getElementById("dropdownMenu");
            let menuBtn = document.getElementById("menuBtn");
            if (!menuBtn.contains(event.target) && !dropdown.contains(event.target)) {
                dropdown.style.display = "none";
            }
        });
        // Back Button Functionality
        document.getElementById("backBtn").addEventListener("click", function () {
            window.history.back(); // Go to the previous page
        });
        // close Button Functionality
        document.getElementById("closeBtn").addEventListener("click", function () {
            window.history.back(); // Go to the previous page
        });
    </script>

</body>
</html>
