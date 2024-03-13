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

        <title>Order List</title>

        <meta name="description" content="" />

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/SWP_Project/assets/img/favicon/favicon.ico" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/fonts/boxicons.css" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="/SWP_Project/assets/css/demo.css" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/pages/page-auth.css" />
        <script src="/SWP_Project/assets/vendor/js/helpers.js"></script>
        <script src="/SWP_Project/assets/js/config.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#exportButton").click(function () {
                    $('#dataTable').DataTable().buttons().excelHtml5();
                });
            });
        </script> 
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
                                    <div class="card" style="padding-left: 20px;">
                                        <div class="card-datatable table-responsive">

                                            <h4 class="py-3 mb-4">
                                                <span class="text-muted fw-light">eCommerce /</span> Order List
                                            </h4>
                                            <h5>${error}</h5>
                                            <br>
                                            <br>
                                            <form action="orderList" method="get">
                                                <table class="datatables-order table border-top dataTable no-footer dtr-column collapsed" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1180px;">
                                                    <thead>
                                                        <tr>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Order</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Order Date</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Customer</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Product</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Total</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Status</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="order: activate to sort column ascending">Change status</th>
                                                        </tr>
                                                    </thead>      
                                                    <tbody>
                                                        <c:forEach var="order" items="${orderList}" varStatus="loop">
                                                        <input type="hidden" name="orderId_${loop.index}" value="${order.orderId}">
                                                        <tr class="odd">

                                                            <td>${order.orderId}</td>

                                                            <td><span class="text-nowrap">${order.orderDate}</span></td>
                                                            <td>${DAOAccount.INSTANCE.getAccountProfileByAccountId(order.accountId).fullName}</td>
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
                                                                    <option value="waiting" <c:if test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'waiting'}">selected</c:if>>Waiting</option>
                                                                    <option value="shipping" <c:if test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'shipping'}">selected</c:if>>Shipping</option>
                                                                    <option value="cancel" <c:if test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'cancelled'}">selected</c:if>>Cancel</option>
                                                                    <option value="success" <c:if test="${OrderDAO.INSTANCE.getOrderStatusByOrderId(order.getOrderId()) eq 'Success'}">selected</c:if>>Success</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                    </c:forEach>

                                                    </tbody>
                                                </table>
                                                
                                                <div class="mb-4"></div>
                                                
                                                <input type="submit" class="submit-button" value="Update Status" >
                                            </form>


                                        </div>
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

        <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/popper/popper.js"></script>
        <script src="/SWP_Project/assets/vendor/js/bootstrap.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/hammer/hammer.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/i18n/i18n.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/typeahead-js/typeahead.js"></script>
        <script src="/SWP_Project/assets/vendor/js/menu.js"></script>
        <!-- endbuild -->
        <!-- Vendors JS -->
        <script src="/SWP_Project/assets/vendor/libs/moment/moment.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/select2/select2.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/cleavejs/cleave.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/cleavejs/cleave-phone.js"></script>
        <script src="/SWP_Project/assets/js/main.js"></script>
        <!--        <script type="text/javascript" id="">console.log("TS:GTM Worked!");</script>      
                <script type="text/javascript" id="">(function (b, c, d) {
                        var a = b.createElement("script");
                        a.type = "text/javascript";
                        a.src = "https://a.omappapi.com/app/js/api.min.js";
                        a.async = !0;
                        a.dataset.user = c;
                        a.dataset.account = d;
                        b.getElementsByTagName("head")[0].appendChild(a)
                    })(document, 252882, 269977);</script>-->
        <script src="/SWP_Project/assets/js/app-user-list.js"></script>

        <script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>


        <script src="assets/js/dashboards-analytics.js"></script>


        <script async defer src="https://buttons.github.io/buttons.js"></script>
    </body>
</html>
