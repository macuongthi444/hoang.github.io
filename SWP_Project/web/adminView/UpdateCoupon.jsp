<%-- 
    Document   : update-product
    Created on : Jan 19, 2024, 9:09:26 AM
    Author     : zenzen1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.ProductDAO, java.util.List, java.util.ArrayList, Model.Product" %>
<!DOCTYPE html>
<html
    lang="en"
    class="light-style layout-menu-fixed layout-compact"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="assets/"
    data-template="vertical-menu-template-free">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

        <meta name="description" content="" />

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet" />

        <link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" />

        <!-- Core CSS -->
        <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="assets/css/demo.css" />

        <!-- Vendors CSS -->
        <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
        <link rel="stylesheet" href="assets/vendor/libs/apex-charts/apex-charts.css" />


        <link rel="stylesheet" href="css/style.css" />
        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="assets/js/config.js"></script>

        <script src="js/main.js"></script>
    </head>
    <body>

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
                            <div class="row">
                                <!--                  <div class="col-md-12">
                                                      Search by: 
                                                      <input type="checkbox" id="nameSearch" name="search"/>
                                                      <input name="nameSearch" placeholder="Name" style="width: 100px; padding-top: 0px; padding-bottom: 0px;"/>
                                                      
                                                      <input type="checkbox" name="search" />
                                                      
                                                      <label for="nameSearch">Name</label>
                                                  </div>-->
                                <div class="col-md-12 mb-4 order-0">
                                    <div class="card">


                                        <div class="text-center mb-4">
                                            <h3>Update Coupon</h3>
                                            <p>Updating Coupon details will receive a privacy audit.</p>
                                        </div>
                                        <div class="modal-body"  >
                                            <form action="updateCoupon" method="post">

                                                <div class="col-12 col-lg-8">
                                                    <!-- Post Information -->
                                                    <div class="card mb-4">
                                                        <div class="card-header">
                                                            <h5 class="card-tile mb-0">Coupon information</h5>
                                                        </div>

                                                        <input type="hidden" name="postByUserMarketing" value="${sessionScope.accl.id}">

                                                        <div class="card-body">
                                                            <div class="mb-3">
                                                                <label class="form-label" for="ecommerce-product-name">Title</label>
                                                                <input type="text" class="form-control" id="ecommerce-product-name" placeholder="Product title" name="PostTitle" aria-label="Product title">
                                                            </div>
                                                            <div>
                                                                <label class="form-label" for="ecommerce-product-name">Discount Rate:</label>
                                                                <input type="number" class="form-label" id="discountRate" name="discountRate" value="${coupon.discountRate*100}" step="0.1">
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col"><label class="form-label" for="ecommerce-product-sku">Start</label>
                                                                    <input type="date" class="form-control" id="ecommerce-product-sku" name="startDate" value="${coupon.startDate}"></div>
                                                                <div class="col"><label class="form-label" for="ecommerce-product-barcode">End</label>
                                                                    <input type="date" class="form-control" id="ecommerce-product-barcode" name="endDate" value="${coupon.endDate}"></div>
                                                            </div>
                                                            <!-- Description -->

                                                            <label class="form-label">Is Used:<span class="text-muted"></span></label>
                                                            <div>
                                                                <input type="checkbox" class="form-label" id="isUsed" name="isUsed" ${coupon.isUsed ? 'checked' : ''}>
                                                            </div>                                            
                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Update">
                                                    </div>
                                                    <!-- /Pot Information -->




                                                </div>
                                            </form>
                                        </div>
                                        <form action="couponList" method="get">
                                            <input type="submit" value="Cancel">
                                        </form>
                                    </div>
                                </div>

                                <!--/ Transactions -->
                            </div>
                        </div>
                        <!-- / Content -->

                        <!-- Footer -->
                        <!-- / Footer -->

                        <div class="content-backdrop fade"></div>
                    </div>
                    <!-- Content wrapper -->
                </div>
                <!-- / Layout page -->
            </div>

            <!-- Overlay -->
            <div class="layout-overlay layout-menu-toggle"></div>
        </div>

        <script src="assets/vendor/libs/jquery/jquery.js"></script>
        <script src="assets/vendor/libs/popper/popper.js"></script>
        <script src="assets/vendor/js/bootstrap.js"></script>
        <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="assets/vendor/js/menu.js"></script>

        <!-- endbuild -->

        <!-- Vendors JS -->
        <script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>

        <!-- Page JS -->
        <script src="assets/js/dashboards-analytics.js"></script>

        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
    </body>
</html>
