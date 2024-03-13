<%-- 
    Document   : update-product
    Created on : Jan 19, 2024, 9:09:26 AM
    Author     : zenzen1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.ProductDAO, java.util.List, java.util.ArrayList, Model.Product,DAO.CouponDAO" %>
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



        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="assets/vendor/js/helpers.js">
        </script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="assets/js/config.js">
        </script>

        <script src="js/main.js">
        </script>
        <script>
            function updateAndRedirect() {
                // Lưu lại đường dẫn hiện tại
                var currentURL = window.location.href;

                // Kiểm tra nếu notify không null thì hiển thị thông báo thành công và các thành phần đã thêm
            <c:if test="${notify != null}">
                document.getElementById("successMessage").innerHTML =
                        `<h5>Discount Rate: ${discountRate * 100}%</h5>
                 <h5>Start Date: ${startDate}</h5>
                 <h5>End Date: ${endDate}</h5>
                 <h5>Is used: ${isUsed}</h5>`;
                document.getElementById("successMessage").style.display = "block";
            </c:if>

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
                                    <!--                                    <div class="card">
                                                                            
                                                                            <table class="product-table" >
                                                                                <h2>Coupon List</h2>
                                                                                <h5>${error}</h5>
                                                                                <div>Sort By: </div>
                                                                                <form action="couponList" method="post">
                                                                                    <select name="sortType" style="width: 12%">
                                                                                        <option value="discountRate">Discount Rate</option>
                                                                                        <option value="startDate">Start Date</option>
                                                                                        <option value="endDate">End Date</option>
                                                                                        <option value="isUsed">Is Used</option>
                                                                                    </select>
                                                                                    <input type="checkbox" name="sortOrder" value="increase"> Increase
                                                                                    <input type="checkbox" name="sortOrder" value="decrease"> Decrease
                                    
                                                                                    <button type="submit">Sort</button>
                                                                                </form>
                                                                                <br>
                                                                                <br>
                                                                                <table border="1">
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th>Coupon ID</th>
                                                                                            <th>Discount Rate</th>
                                                                                            <th>Start Date</th>
                                                                                            <th>End Date</th>
                                                                                            <th>Is Used</th>
                                                                                            <th>Product Option ID</th>
                                                                                            <th>Ban Coupon</th>
                                                                                            <th>Update Coupon</th>
                                                                                            <th>Attach Coupon</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                    <c:forEach var="coupon" items="${couponList}">
                                        <tr>
                                            <td>${coupon.couponId}</td>
                                            <td>${coupon.discountRate*100}%</td>
                                            <td>${coupon.startDate}</td>
                                            <td>${coupon.endDate}</td>
                                            <td>${coupon.isUsed}</td>
                                            <td>
                                        ${CouponDAO.INSTANCE.getProductOptionIdByCouponId(coupon.couponId)}                      
                                    </td>
                                    <td>
                                        <c:if test="${coupon.isUsed}">
                                            <form action="couponList" method="post">
                                                <button type="submit" name="banid" value="${coupon.couponId}" style="color: red">Ban</button>
                                            </form>
                                        </c:if>
                                    </td>
                                    <td>
                                        <form action="updateCoupon" method="get">
                                            <button type="submit" name="cid" value="${coupon.couponId}">Update</button>
                                        </form>
                                    </td>
                                    <td>
                                        <c:if test="${coupon.isUsed}">
                                        <form action="attachCoupon" method="get">
                                            <button type="submit" name="cid" value="${coupon.couponId}">Attach</button>
                                        </form>
                                        </c:if>
                                    </td>
                                </tr>
                                    </c:forEach>

                                </tbody>
                            </table> 
                    </div>-->
                                    <div class="card">

                                        <div class="card-datatable ">
                                            <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                                                <div class="card-header d-flex flex-wrap py-3">
                                                    <div class="me-5 ms-n2">
                                                        <div id="DataTables_Table_0_filter" class="dataTables_filter">
                                                            <label>
                                                                <input type="search" class="form-control" placeholder="Search " aria-controls="DataTables_Table_0">
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end gap-3 gap-sm-2 flex-wrap flex-sm-nowrap pt-0">
                                                        <div class="dataTables_length mt-0 mt-md-3 me-2" id="DataTables_Table_0_length">
                                                            <!--                                                            <label>
                                                                                                                            <div>Sort By: </div>
                                                                                                                            <form action="couponList" method="post">
                                                                                                                                <select name="sortType" style="width: 12%">
                                                                                                                                    <option value="discountRate">Discount Rate</option>
                                                                                                                                    <option value="startDate">Start Date</option>
                                                                                                                                    <option value="endDate">End Date</option>
                                                                                                                                    <option value="isUsed">Is Used</option>
                                                                                                                                </select>
                                                                                                                                <input type="checkbox" name="sortOrder" value="increase"> Increase
                                                                                                                                <input type="checkbox" name="sortOrder" value="decrease"> Decrease
                                                            
                                                                                                                                <button type="submit">Sort</button>
                                                                                                                            </form>
                                                                                                                        </label>-->

                                                        </div>
                                                        <div class="dt-buttons"> 
                                                            <button id="exportButton" class="dt-button buttons-collection dropdown-toggle btn btn-label-secondary mx-3"   >
                                                                <span>Export</span>
                                                            </button>

                                                            <button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasAddUser">
                                                                <span>
                                                                    <i class="bx bx-plus me-0 me-sm-1">
                                                                    </i>
                                                                    <span class="d-none d-sm-inline-block">Add Coupon</span>
                                                                </span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <table class="datatables-customers table border-top dataTable no-footer dtr-column" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1200px;">
                                                    <thead>
                                                        <tr>
                                                            <th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label="">
                                                            </th>

                                                            <th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="Customer: activate to sort column ascending" aria-sort="descending">Discount Rate</th>
                                                            <th class="text-nowrap sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="Customer Id: activate to sort column ascending">Activatation </th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="Country: activate to sort column ascending">Product Option ID</th>

                                                            <th class="text-nowrap sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="Total Spent: activate to sort column ascending">Start</th>
                                                            <th class="text-nowrap sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="Total Spent: activate to sort column ascending">End</th>
                                                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  aria-label="Order: activate to sort column ascending">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="coupon" items="${couponList}">
                                                            <tr class="odd">
                                                                <td class="control dtr-hidden" tabindex="0" style="display: none;">
                                                                </td>

                                                                <td class="sorting_1">
                                                                    <div class="d-flex justify-content-start align-items-center customer-name">

                                                                        <div class="d-flex flex-column">
                                                                            <a href="/SWP_Project/updateCoupon?cid=${coupon.couponId}">
                                                                                <span class="fw-medium">${coupon.discountRate*100}%</span>
                                                                            </a>
                                                                            <small class="text-muted">ID:${coupon.couponId}</small>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <span class="fw-medium text-heading">${coupon.isUsed}</span>
                                                                </td>
                                                                <td class="" style="">
                                                                    <div class="d-flex justify-content-start align-items-center customer-country">
                                                                        <div>
                                                                            <i class="fis fi fi-ua rounded-circle me-2 fs-3">
                                                                            </i>
                                                                        </div>
                                                                        <div>
                                                                            <span> ${CouponDAO.INSTANCE.getProductOptionIdByCouponId(coupon.couponId)}</span>
                                                                        </div>
                                                                    </div>
                                                                </td>


                                                                <td class="" style="">
                                                                    ${coupon.startDate}
                                                                </td>
                                                                <td class="fw-medium text-heading" style="">
                                                                    ${coupon.endDate}
                                                                </td>
                                                                <td>
                                                                    <div class="d-inline-block text-nowrap">
                                                                        <form action="updateCoupon" method="get" >
                                                                            <button class="btn btn-sm btn-icon" type="submit" name="cid" value="${coupon.couponId}">

                                                                                <i class="bx bx-edit btn btn-primary me-3"></i>

                                                                            </button>
                                                                        </form>
                                                                        <c:if test="${coupon.isUsed}">
                                                                            <form action="attachCoupon" method="get">
                                                                                <button class="btn btn-secondary btn-icon delete-record" type="submit" name="cid" value="${coupon.couponId}">
                                                                                    Attach Coupon
                                                                                </button>
                                                                            </form>
                                                                        </c:if>
                                                                        <c:if test="${coupon.isUsed}">
                                                                            <form action="couponList" method="post">
                                                                                <button class="btn btn-label-secondary btn-icon delete-record " type="submit" name="banid" value="${coupon.couponId}">
                                                                                    Ban
                                                                                </button>
                                                                            </form>
                                                                        </c:if>

                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                                <div class="row mx-2">
                                                    <div class="col-sm-12 col-md-6">
                                                        <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to 10 of 100 entries</div>
                                                    </div>

                                                </div>
                                                <div style="width: 1%;">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Offcanvas to add new customer -->

                                    </div>
                                </div>

                                <!--/ Transactions -->
                            </div>
                            <div class="offcanvas offcanvas-end " tabindex="-1" id="offcanvasAddUser" aria-labelledby="offcanvasAddUserLabel" aria-modal="true" role="dialog">
                                <div class="offcanvas-header">
                                    <h5 id="offcanvasAddUserLabel" class="offcanvas-title">Coupon</h5>
                                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close">
                                    </button>
                                </div>

                                <div class="offcanvas-body mx-0 flex-grow-0">
                                    <form action="addCoupon" method="post" class="add-new-user pt-0 fv-plugins-bootstrap5 fv-plugins-framework" id="addNewUserForm"  novalidate="novalidate">
                                        <div class="mb-3 fv-plugins-icon-container">
                                            <label class="form-label" for="add-user-fullname">Discount Rate</label>
                                            <input type="number" class="form-control" id="discountRate"  name="discountRate" step="0.01" required>

                                            <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback">
                                            </div>                                     
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label" for="add-user-contact">Start Date</label>
                                            <input type="date" id="startDate" class="form-control phone-mask" required placeholder="" aria-label="" name="startDate">

                                        </div>



                                        <div class="mb-3">
                                            <label class="form-label" for="user-role">End Date</label>
                                            <input type="date" id="endDate" class="form-control phone-mask" required placeholder="" aria-label="" name="endDate">

                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="user-role">isUsed</label>

                                            <input type="checkbox" id="isUsed" name="isUsed">
                                        </div>
                                        <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Submit</button>
                                        <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="offcanvas">Cancel</button>
                                        <input type="hidden">
                                    </form>
                                </div>
                            </div>
                            <div id="successMessage" style="display: none; color: green;">
                                Thêm thành công!
                            </div>
                        </div>

                        <!-- / Content -->

                        <!-- Footer -->

                        <!-- / Footer -->

                        <div class="content-backdrop fade">
                        </div>
                    </div>
                    <!-- Content wrapper -->
                </div>
                <!-- / Layout page -->
            </div>

            <!-- Overlay -->
            <div class="layout-overlay layout-menu-toggle">
            </div>
        </div>

        <script src="assets/vendor/libs/jquery/jquery.js">
        </script>
        <script src="assets/vendor/libs/popper/popper.js">
        </script>
        <script src="assets/vendor/js/bootstrap.js">
        </script>
        <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js">
        </script>
        <script src="assets/vendor/js/menu.js">
        </script>

        <!-- endbuild -->

        <!-- Vendors JS -->
        <script src="assets/vendor/libs/apex-charts/apexcharts.js">
        </script>

        <!-- Main JS -->
        <script src="assets/js/main.js">
        </script>

        <!-- Page JS -->
        <script src="assets/js/dashboards-analytics.js">
        </script>

        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js">
        </script>
    </body>
</html>
