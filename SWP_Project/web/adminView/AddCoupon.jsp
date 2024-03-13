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

        <title>Add Coupon</title>

        <meta name="description" content="" />

        <link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet" />

        <link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" />
        <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="assets/css/demo.css" />
        <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
        <link rel="stylesheet" href="assets/vendor/libs/apex-charts/apex-charts.css" />
        <link rel="stylesheet" href="css/style.css" />        
        <script src="assets/vendor/js/helpers.js"></script>    
        <script src="assets/js/config.js"></script>
        <script src="js/main.js"></script>
        <script>
            function updateAndRedirect() {
                // Lưu lại đường dẫn hiện tại
                var currentURL = window.location.href;

                // Thực hiện cập nhật (ở đây là ví dụ)
                // Sau khi cập nhật thành công, chuyển hướng trở lại đường dẫn cũ
                // Thay thế dòng sau này bằng logic thực tế của bạn
                // Ví dụ: 
                // ajaxRequestToUpdateUser();
                // window.location.href = currentURL; // Chuyển hướng trở lại đường dẫn cũ
                alert("Update thành công! Đang chuyển hướng trở lại trang trước...");
                window.location.href = currentURL; // Chuyển hướng trở lại đường dẫn cũ
            }
        </script>
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

                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y">
                            <div class="card">
                                <div class="row">
                                    <div class="col-md-6 mb-8 order-0">
                                        <h5 style="color: red;">${error}</h5>
                                        <h5 style="color: red;">${notify}</h5>
                                        <h2>Add Coupon</h2>
                                        <form id="couponForm" action="addCoupon" method="post">
                                            <label for="discountRate">Discount Rate:</label>
                                            <input type="number" id="discountRate" name="discountRate" step="0.01" required>
                                            <br>
                                            <label for="startDate">Start Date:</label>
                                            <input type="date" id="startDate" name="startDate" required>
                                            <br>
                                            <label for="endDate">End Date:</label>
                                            <input type="date" id="endDate" name="endDate" required>
                                            <br>
                                            <label for="isUsed">Is Used:</label>
                                            <input type="checkbox" id="isUsed" name="isUsed">
                                            <br>
                                            <button type="submit" onclick="updateAndRedirect()">Add Coupon</button>
                                        </form>     
                                    </div>
                                    <div class="col-md-6 mb-8 order-0">
                                        <h5 style="color: red;">${notify}</h5>
                                        <c:if test="${notify != null}">
                                            <h5>Discount Rate: ${discountRate *100}%</h5>
                                            <h5>Start Date: ${startDate}</h5>
                                            <h5>End Date: ${endDate}</h5>
                                            <h5>Is used: ${isUsed}</h5>
                                        </c:if>
                                    </div>
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
