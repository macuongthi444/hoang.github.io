<%-- 
    Document   : Dashboards
    Created on : 25-01-2024, 14:46:32
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html
    lang="en"
    class="light-style layout-menu-fixed layout-compact"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="../assets/"
    data-template="vertical-menu-template-free">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title>Dashboard </title>

        <meta name="description" content="" />

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/SWP_Project/assets/img/favicon/favicon.ico" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet" />

        <link rel="stylesheet" href="/SWP_Project/assets/vendor/fonts/boxicons.css" />

        <!-- Core CSS -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="/SWP_Project/assets/css/demo.css" />

        <!-- Vendors CSS -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/apex-charts/apex-charts.css" />

        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="/SWP_Project/assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="/SWP_Project/assets/js/config.js"></script>




        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>



        <script src="path/to/Chart.js"></script>

        <script type="text/javascript">
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['Admin', ${getRole1}],
                    ['Customer', ${getRole3}],
                    ['Marketing', ${getRole4}],
                    ['Customer Service', ${getRole5}]

                ]);

                var options = {

                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                chart.draw(data, options);
            }
        </script>

    </head>

    <body>
        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar">
            <div class="layout-container">
                <!-- Menu -->

                <jsp:include page="HeaderAdmin.jsp" />
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page">

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>
                    <!-- / Navbar -->

                    <!-- / Navbar -->

                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->
                        <div class="container-xxl flex-grow-1 container-p-y">


                            <h4 class="py-3 mb-4">
                                <span class="text-muted fw-light">User Profile /</span> Profile
                            </h4>


                            <!-- Header -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="card mb-4">
                                        <div class="user-profile-header-banner">
                                           
                                        </div>
                                        <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-center mb-4">
                                            <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                                                <img src="img/${otherprofile.avatar}" alt="user image" class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img">
                                            </div>
                                            <div class="flex-grow-1 mt-3 mt-sm-5">
                                                <div class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                                                    <div class="user-profile-info">
                                                        <h4> ${otherprofile.fullName }</h4>
                                                        <ul class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                                                            <li class="list-inline-item fw-medium">
                                                                <i class="bx bx-pen"></i> 
                                                            </li>
                                                            <li class="list-inline-item fw-medium">
                                                                <i class="bx bx-map"></i> 
                                                            </li>
<!--                                                            <li class="list-inline-item fw-medium">
                                                                <i class="bx bx-calendar-alt"></i> Joined April 2021
                                                            </li>-->
                                                        </ul>
                                                    </div>
<!--                                                    <a href="javascript:void(0)" class="btn btn-primary text-nowrap">
                                                        <i class="bx bx-user-check me-1"></i>Connected
                                                    </a>-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ Header -->

                            <!-- Navbar pills -->
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                                        <li class="nav-item"><a class="nav-link active" href="detail?productId=${productId}"><i class="bx bx-user me-1"></i> Back</a></li>
<!--                                        <li class="nav-item"><a class="nav-link" href="pages-profile-teams.html"><i class="bx bx-group me-1"></i> Teams</a></li>
                                        <li class="nav-item"><a class="nav-link" href="pages-profile-projects.html"><i class="bx bx-grid-alt me-1"></i> Projects</a></li>
                                        <li class="nav-item"><a class="nav-link" href="pages-profile-connections.html"><i class="bx bx-link-alt me-1"></i> Connections</a></li>-->
                                    </ul>
                                </div>
                            </div>
                            <!--/ Navbar pills -->

                            <!-- User Profile Content -->
                            <div class="row">
                                <div class="col-xl-4 col-lg-5 col-md-5">
                                    <!-- About User -->
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <small class="text-muted text-uppercase">About</small>
                                            <ul class="list-unstyled mb-4 mt-3">
                                                <li class="d-flex align-items-center mb-3"><i class="bx bx-user"></i><span class="fw-medium mx-2">Full Name:</span> ${otherprofile.fullName }<span></span></li>
                                                <li class="d-flex align-items-center mb-3"><i class="bx bx-check"></i><span class="fw-medium mx-2">Birth Date: </span> <span>${otherprofile.birthDate }</span></li>
                                                <li class="d-flex align-items-center mb-3"><i class="bx bx-star"></i><span class="fw-medium mx-2">Gender: </span> <span><c:if test = "${otherprofile.gender ==true}"><span>Male</c:if><c:if test = "${otherprofile.gender ==false}"><span>Female</c:if></span></li>
                                               
                                            </ul>
                                           
                                        </div>
                                    </div>
                                    <!--/ About User -->
                                    <!-- Profile Overview -->
                                    
                                    <!--/ Profile Overview -->
                                </div>
                                <div class="col-xl-8 col-lg-7 col-md-7">
                                <div class="card mb-4">
                                        <div class="card-body">
                                            <small class="text-muted text-uppercase">Overview</small>
                                            <ul class="list-unstyled mt-3 mb-0">
                                                <li class="d-flex align-items-center mb-3"><i class="bx bx-check"></i><span class="fw-medium mx-2">Review posted:</span> <span>${count}</span></li>
                                             <c:forEach var="listReview" items="${listReview}">
                                                     <li class="d-flex align-items-center"><i class="bx bx-user"></i><span class="fw-medium mx-2">ProductName :</span> <span>${listReview.productName}</span></li><br>
                                            <li class="d-flex align-items-center mb-3"><i class="bx bx-customize"></i><span class="fw-medium mx-2">Content:</span> <span>${listReview.contentReview}</span></li>
                                            <li class="d-flex align-items-center"><i class="bx bx-user"></i><span class="fw-medium mx-2">Date :</span> <span>${listReview.dateReview}</span></li>
                                            <br>
                                            <h1>--------------------------------------------</h1> 
                                                  </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                    </div>
                            </div>
                            <!--/ User Profile Content -->

                        </div>

                        <!-- / Content -->



                        <div class="content-backdrop fade"></div>
                    </div>
                    <!-- Content wrapper -->
                </div>
                <!-- / Layout page -->
            </div>

            <!-- Overlay -->
            <div class="layout-overlay layout-menu-toggle"></div>
        </div>
        <!-- / Layout wrapper -->



        <!-- Core JS -->
        <!-- build:js assets/vendor/js/core.js -->

        <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/popper/popper.js"></script>
        <script src="/SWP_Project/assets/vendor/js/bootstrap.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="/SWP_Project/assets/vendor/js/menu.js"></script>

        <!-- endbuild -->

        <!-- Vendors JS -->
        <script src="/SWP_Project/assets/vendor/libs/apex-charts/apexcharts.js"></script>

        <!-- Main JS -->
        <script src="/SWP_Project/assets/js/main.js"></script>

        <!-- Page JS -->
        <script src="/SWP_Project/assets/js/dashboards-analytics.js"></script>

        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
    </body>
</html>

