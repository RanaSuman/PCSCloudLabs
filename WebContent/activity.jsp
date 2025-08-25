
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Stream</title>

    <!-- Include Bootstrap CSS for dropdown functionality -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
         /* General Styles for Breadcrumb Section */
.bread_crum {
    background-color: #002d62;
    padding: 0px; /* Vertical padding */
    font-family: Arial, sans-serif;
}

.bread_crum .container {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
}

/* Flexbox Layout for Breadcrumbs */
/*.bread_box>.bread_left{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    display: flex;
    align-items: center;
    font-size: 14px;
}*/
.bread_box >.bread_left {
    margin-top: 0;
    overflow-x: hidden;
    overflow-y: hidden;
    white-space: nowrap;
    color: #d8d8d8;
    padding: 11px 0;
    
}
/*.bread_box {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.bread_left {
    display: flex;
    align-items: center;
    font-size: 14px;
}*/

.bread_left span {
    margin-right: 8px;
}

.bread_left a {
    color: blueviolet;
    text-decoration: none;
    font-weight: bold;
}

.bread_left a:hover {
    color:blueviolet;
}

/* For the Right Side (Breadcrum Right - Empty for now) */
.bread_right {
    display: flex;
    justify-content: flex-end;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .bread_left {
        font-size: 12px; /* Reduced font size on mobile */
    }

    .bread_left span {
        margin-right: 5px; /* Reduced spacing between items */
    }

    /* Hide the left part (breadcrumb text) on mobile */
    .bread_left.hidden-xs {
        display: none;
    }

    /* For mobile view, adjust right side if needed */
    .bread_right {
        justify-content: center;
        width: 100%;
    }
}

        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
        }

        /* Main container with padding */
        .container {
            padding: 20px;
            
        }

        /* Flexbox for layout */
        .activity-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        /* Inner Wrapper */
        .inner-wrapper {
            padding: 20px;
        }

        /* Activity and Profile Strength Containers */
        .bg-white {
            background-color: white;
        }

        .b-shadow {
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Activity Section */
        .col-md-12 h4 {
            padding-left: 0;
            padding-right: 0;
            
        }

        /* Profile Image */
        .profile-img,
        .prof-img-link {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* Dropdown Setup */
        .activity-search .btn {
            background-color: #f8f8f8;
            border: 1px solid #ddd;
            padding: 8px 12px;
            font-size: 14px;
            margin-top: 20px;
            width: 100%;
            height: 34px;
            border-radius: 0;
            text-align: left;
        }

        /* Flexbox for profile layout */
        .col-md-8,
        .col-md-4 {
            padding-left: 0;
            padding-right: 0;
        }

        .p-top-space {
            padding-top: 20px;
        }

        /* Responsive Layout */
        @media (max-width: 768px) {
            .activity-details {
                flex-direction: column;
                align-items: center;
            }

            .col-md-8,
            .col-md-4 {
                width: 100%;
                padding: 0;
            }
        }

        /* Profile Strength */
        .profile-strength-container {
            background-color: #f7f7f7;
            padding: 20px;
            margin-top: 30px;  /* Create a gap between the sections */
        }

        .profile-strength-header {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .progress-bar-container {
            height: 8px;
        }

        .progress-bar-container .progress-bar {
            width: 80%; /* Example for profile strength percentage */
        }

        /* Proper Gap Between Containers */
        .activity-container {
            margin-bottom: 30px; /* Adds a proper gap below the activity container */
        }
    </style>
</head>

<body>
    <section _ngcontent-c1="" class="container-fluid bread_crum">
        <div _ngcontent-c1="" class="container">
            <div _ngcontent-c1="" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding bread_box">
                <div _ngcontent-c1="" class="col-lg-8 col-md-7 col-sm-6 col-xs-12 no-padding bread_left hidden-xs">
                    <span _ngcontent-c1=""><a _ngcontent-c1="" href="https://www.edureka.co">Home</a></span>
                    <span _ngcontent-c1="">Activity</span>
                </div>
                <div _ngcontent-c1="" class="col-lg-4 col-md-5 col-sm-6 col-xs-12 no-padding bread_right">
                    <!---->
                    <!---->
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <!-- Main Content Section -->
        <div class="col-lg-12 col-md-12 no-padding activity-details">
            
            <!-- Activity Section with a gap -->
            <div class="col-md-8 no-padding inner-wrapper activity-container">
                <div class="col-md-12 bg-white b-shadow">
                    <div class="col-md-12 no-padding pro-details bar-bottom clearfix">
                        <div class="col-md-12 col-sm-12 no-padding">
                            <div class="col-md-3 col-sm-3 no-padding">
                                <img alt="img" style="width: 150px; height:150px; margin-top: 20px;"
                                    src="https://d3ejdag3om7lbm.cloudfront.net/assets/img/user_default_img.png">
                            </div>
                            <div class="col-md-9 col-sm-9 no-padding">
                                <div class="control-group">
                                    <h4 class="no-margin text-left" style="margin-top: 50px;">PCS Cloud lab Guest</h4><br>
                                    <p class="text-muted mod-lvl1-desc" style="color: #bababa;"></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-12 no-padding p-top-space">
                        <h4 class="col-md-6 pull-left no-padding p-top-space">PCS Cloud lab Guest's Recent Activities</h4>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pull-right no-padding">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 input select pull-right">
                                <div class="input-group-btn activity-search">
                                    <button class="btn btn-default countrydrpbtn dropdown-toggle" data-toggle="dropdown"
                                        type="button" aria-haspopup="true" aria-expanded="false">
                                        All Courses
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu countrydrpdwn" role="menu">
                                        <li><input autocomplete="false" placeholder="Search Course" type="text"> </li>
                                        <li>All Courses</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 no-padding timeline-wrapper">
                        <h4>No activities!</h4>
                    </div>
                </div>
            </div>

            <!-- Profile Strength Section with a proper gap -->
            <div class="col-md-4 p-init-right p-init-right-sm inner-wrapper profile-strength-container">
                <div class="col-md-12 inner-wraper bg-white b-shadow clearfix">
                    <div class="col-md-12 col-sm-12 profile-widget no-padding inner-wrapper">
                        <div class="col-md-3 col-sm-3 profile_strength_links text-center no-padding">
                            <a href="/my-profile">
                                <img alt="image"
                                    style="width: 60px; height: 50px; border-radius: 50%; object-fit: cover;"
                                    class="img-round img60 img-responsive prof_img_link"
                                    src="https://d3ejdag3om7lbm.cloudfront.net/assets/img/user_default_img.png">
                            </a>
                        </div>
                        <div class="col-md-9 col-sm-9 pull-left no-padding">
                            <h4 class="margin-bottom10 display_name">
                                <a class="label label-primary editproflink pull-right" href="cc.html">Edit</a>
                            </h4>
                            <div class="progress progress-mouseover progress-bar-container">
                                <div class="progress-bar progress-bar-success bg-success" role="progressbar"
                                    style="height: 8px; cursor: pointer;"></div>
                            </div>
                            <span class="regular mute">Profile Strength %</span><br>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- Include Bootstrap JS and jQuery for dropdown functionality -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- JavaScript for dynamic content -->
    <script>
        // Example to show/hide activity message
        const activities = [];  // This should come from your database/API
        const activitiesSection = document.querySelector('.timeline-wrapper');

        if (activities.length === 0) {
            activitiesSection.innerHTML = '<h4>No activities!</h4>';
        }
    </script>
</body>

</html>