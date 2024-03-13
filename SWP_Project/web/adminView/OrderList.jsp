<%-- 
    Document   : update-product
    Created on : Jan 19, 2024, 9:09:26 AM
    Author     : zenzen1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.ProductDAO,DAO.OrderDAO,DAO.DAOAccount, java.util.List, java.util.ArrayList, Model.Product,DAO.CouponDAO" %>
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

                                        <table class="product-table" >
                                            <h2>Order List</h2>
                                            <h5>${error}</h5>
                                            <br>
                                            <br>
                                            <form action="orderList" method="post">
                                                <table >
                                                    <thead>
                                                        <tr>
                                                            <th>Order ID</th>
                                                            <th>Mr/Ms</th>
                                                            <th>Order Date</th>
                                                            <th>Product</th>
                                                            <th>Total</th>
                                                            <th>Status</th>
                                                            <th>Change status</th>
                                                        </tr>
                                                    </thead>      
                                                    <tbody>
                                                        <c:forEach var="order" items="${orderList}" varStatus="loop">
                                                        <input type="hidden" name="orderId_${loop.index}" value="${order.orderId}">
                                                        <tr>
                                                            <!-- Các phần tử khác của bảng -->
                                                            <td>${order.orderId}</td>
                                                            <td>${DAOAccount.INSTANCE.getAccountProfileByAccountId(order.accountId).fullName}</td>
                                                            <td>${order.orderDate}</td>
                                                            <td>
                                                                <c:forEach items="${OrderDAO.INSTANCE.getAllImageTextByOrderId(order.getOrderId())}" var="image">
                                                                    <img src="img/${image}" width="50px" height="50px" alt="alt"/> 
                                                                </c:forEach>
                                                            </td>
                                                            <td>${OrderDAO.INSTANCE.getTotalMoneyByOrderId(order.getOrderId())}</td>
                                                            <td style="color: blue">
                                                                ${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId())}                      
                                                            </td>
                                                            <td>
                                                                <select name="orderStatusMap_${loop.index}">
                                                                    <c:choose>
                                                                        <c:when test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'waiting'}">
                                                                            <option value="waiting" selected>Waiting</option>
                                                                            <option value="shipping">Shipping</option>
                                                                        </c:when>
                                                                        <c:when test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'shipping'}">
                                                                            <option value="waiting">Waiting</option>
                                                                            <option value="shipping" selected>Shipping</option>
                                                                            <option value="cancelled">Cancelled</option>
                                                                            <option value="success">Success</option>
                                                                        </c:when>
                                                                        <c:when test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'cancelled' or OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'success'}">
                                                                            <option value="cancelled" <c:if test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'cancelled'}">selected</c:if>>Cancel</option>
                                                                            <option value="success" <c:if test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'success'}">selected</c:if>>Success</option>
                                                                        </c:when>
                                                                    </c:choose>
                                                                </select>
                                                            </td>

                                                        </tr>
                                                    </c:forEach>

                                                    </tbody>
                                                </table>
                                                <input type="submit" class="submit-button" value="Update Status" >
                                            </form>
                                        </table>

                                    </div>
                                </div>

                                <!--/ Transactions -->
                            </div>
                        </div>
                        <style>
                            .submit-button {
                                width: 20%;
                                margin-left: 940px; /* Đặt nút ở bên phải */
                                margin-top: 10px; /* Khoảng cách từ đỉnh của form */
                            }
                        </style>
                        <!-- / Content -->

                        <!-- Footer -->
                        <footer class="content-footer footer bg-footer-theme">
                            <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                                <div class="mb-2 mb-md-0">
                                    ©
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script>
                                    , made with ❤️ by
                                    <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                                </div>
                                <div class="d-none d-lg-inline-block">
                                    <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                                    <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                                    <a
                                        href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                                        target="_blank"
                                        class="footer-link me-4"
                                        >Documentation</a
                                    >

                                    <a
                                        href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                                        target="_blank"
                                        class="footer-link"
                                        >Support</a
                                    >
                                </div>
                            </div>
                        </footer>
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
