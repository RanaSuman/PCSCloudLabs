<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Courses</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        /* Header */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #0c4ead;
            color: white;
            padding: 15px;
            flex-wrap: wrap;
        }

        .logo img {
            width: 150px;
        }

        .search-container {
            display: flex;
            align-items: center;
        }

        .search-container input {
            padding: 10px;
            width: 250px;
            border: none;
            border-radius: 5px;
        }

        .search-container button {
            background: orange;
            border: none;
            padding: 10px;
            margin-left: 5px;
            cursor: pointer;
            border-radius: 5px;
        }

        .user-menu {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        /* Search Results */
        .no-results {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }

        .search-box {
            background: white;
            padding: 20px;
            margin: 30px auto;
            width: 80%;
            max-width: 500px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: left;
        }

        .search-box input {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-box button {
            width: 100%;
            background: gray;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Categories */
        .categories-container {
            padding: 20px;
            text-align: center;
        }

        .categories-container h3 {
            font-size: 1.5em;
            margin-bottom: 15px;
        }

        .categories-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
        }

        .categories-grid button {
            padding: 10px 15px;
            border: 1px solid #aaa;
            background-color: white;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s;
        }

        .categories-grid button:hover {
            background-color: #f4f4f4;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                text-align: center;
            }
            .search-container {
                margin-top: 10px;
            }
        }
        .hr{
       display: inline-block;
    padding: 10px 0 10px 0;
    padding-top: 10px;
    padding-right: 0px;
    padding-bottom: 10px;
    padding-left: 0px;
    border-bottom: 1px solid #e6e6e6;
    border-bottom-width: 1px;
    border-bottom-style: solid;
    border-bottom-color: rgb(230, 230, 230);
    margin-top: 20px;
}
        }
        
    </style>
</head>
<body>
    <%@include file="base.jsp" %>
    
    
    <!-- HEADER -->
    <header class="navbar">
        <div class="logo">
            <img src="assets/images/logo.jpg" alt="PCS Cloud Lab Logo">
        </div>
        <div class="search-container">
       <a href="wishlist.jsp"><input type="text" placeholder="Enter Course, Category or Keyword" ></a> 
            <button><i class="bi bi-search"></i></button>
        </div>
        <div class="user-menu">
            <span>Courses | Community</span>
            <span><i class="bi bi-bell"></i></span>
        </div>
    </header>

    <!-- SEARCH MESSAGE -->
    <div class="col-xs-12 col-md-9 filtermain sugg_box" style="margin-top: 55px;">
    <span class="noresulttxt" style="display:none"></span>
    <p class="no-results">Your search did not match any courses</p>
    <br>
</div>
    <div class="col-xs-12 col-md-9 filtermain sugg_box" style="margin-top: 55px;">
    <span class="noresulttxt" style="display:none"></span>
    <br>
</div>
    <div class="hr"><hr></div>

    <div class="search-box">
        <h2>Your search <span style="color: blue;">"favourite"</span> did not match any courses</h2>
        <p>Tell us what you are looking for and we will help you find it</p>
        <form>
            <input type="text" placeholder="Your mobile number">
            <input type="text" placeholder="Type in the course you are looking for">
            <button>Get a call back</button>
        </form>
    </div>
   <div class="col-xs-12 col-md-9 filtermain sugg_box" style="margin-top: 55px;">
    <span class="noresulttxt" style="display:none"></span>
    <br>
</div>
   
    <!-- CATEGORIES -->
    <section class="categories-container">
        <h3>Discover Top Categories</h3>
        <div class="categories-grid">
            <button>Artificial Intelligence</button>
            <button>BI and Visualization</button>
            <button>Cloud Computing</button>
            <button>DevOps</button>
            <button>Data Science</button>
            <button>Cyber Security</button>
            <button>Programming & Frameworks</button>
            <button>Project Management</button>
            <button>PG Programs</button>
            <button>Software Testing</button>
            <button>Big Data</button>
            <button>Frontend Development</button>
            <button>Databases</button>
            <button>Data Warehousing</button>
            <button>Blockchain</button>
            <button>Operating Systems</button>
            <button>Robotic Process Automation</button>
            <button>Digital Marketing</button>
            <button>Others</button>
        </div>
    </section>
     <script>
        function closeSearch() {
            document.getElementById("searchOverlay").style.display = "none";
        }

        document.getElementById("searchInput").addEventListener("focus", function() {
            document.getElementById("searchOverlay").style.display = "flex";
        });
    </script>

    <%@include file="footer.jsp" %>
</body>
</html>
