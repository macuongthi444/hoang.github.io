<%-- 
    Document   : update-product
    Created on : Jan 19, 2024, 9:09:26 AM
    Author     : zenzen1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.ProductDAO, DAO.CategoryDAO, java.util.List, java.util.ArrayList, Model.Product" %>
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
        <style>



        </style>
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
                <div class="layout-page" style="padding: 50px;">

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>
                    <!-- / Navbar -->

                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y">
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="AdminShowAllProducts" method="post">

                                        <!--<button type="button" style="border: solid 1px black; margin-left: 40px;">Delete multiple products</button>-->
                                    </form>
                                </div>
                                <div class="col-md-12 mb-4 order-0">
                                    <div class="card">

                                        <table class="product-table" >
                                            <tr>
                                                <th style="width: 7%;">Name</th>
                                                <th class="category-width">Category</th>
                                                <th class="product-detail-width">Detail</th>
                                                <th>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <th class="brand-width">Brand</th>
                                                            <th class="hardware-width">Hardware</th>
                                                            <th class="ram-width">Ram</th>
                                                            <th class="color-width">Color</th>
                                                            <th class="screen-size-width">Screen size</th>
                                                            <th class="resolution-width">Resolution</th>
                                                            <th class="graphic-card-width">Graphic card</th>
                                                            <th class="price-width">Price</th>
                                                            <th class="number-in-stock-width">Number in stock</th>
                                                            <th class="quantity-sold-width">Quantity sold</th>
                                                            <th class="image-width">Image</th>
                                                            <th class="action-width"></th>
                                                        </tr>
                                                    </table>
                                                </th>
                                            </tr>
                                            <%
                              
                  //                              List<Product> productList = new ArrayList<>(${productMap.keySet()});
                  //                              productList.sort((o1, o2) -> {
                  //                                  return o1.getProductId() - o2.getProductId();
                  //                              });
                                            %>
                                            <%--<c:forEach items="${productMap.entrySet()}" var="productEntry">--%>

                                            <c:forEach items="${productList}" var="productEntry">
                                                <tr>
                                                    <td style="width: 7%;">${ProductDAO.INSTANCE.getProductById(productEntry).productName} <br/>
                                                        <a style="color: green; font-size: 12px; " href="/SWP_Project/AddProductOption?productId=${productEntry}">Add other option</a>
                                                    </td>
                                                    <td class="category-width">${ProductDAO.INSTANCE.getProductById(productEntry).category.categoryName}</td>
                                                    <td class="product-detail-width">${ProductDAO.INSTANCE.getProductById(productEntry).productDetail}</td>
                                                    <%--<td>${product.coupon==null?"no coupon":coupon}</td> --%>
                                                    <td style="">
                                                        <table  style="width: 100%; height: 90px;">
                                                            <%--<c:forEach items="${ProductDAO.INSTANCE.getProductOptionByProductId(productEntry.productId)}" var="poEntry">--%>
                                                            <c:forEach items="${productMap.get(productEntry)}" var="poEntry">
                                                                <tr>
                                                                    <td class="brand-width">
                                                                        ${ProductDAO.INSTANCE.getBrandById(poEntry.brandId).brandName}
                                                                    </td>
                                                                    <td class="hardware-width">
                                                                        ${ProductDAO.INSTANCE.getHardwareMemoryById(poEntry.hardwareMemoryId).hardwareMemory}
                                                                    </td>
                                                                    <td class="ram-width">
                                                                        ${ProductDAO.INSTANCE.getRamMemoryById(poEntry.ramMemoryId).ramMemory}
                                                                    </td>
                                                                    <td class="color-width">
                                                                        ${ProductDAO.INSTANCE.getColorById(poEntry.colorId).color}
                                                                    </td>
                                                                    <td  class="screen-size-width">
                                                                        ${ProductDAO.INSTANCE.getScreenSizeById(poEntry.screenSizeId).screenSize}
                                                                    </td>
                                                                    <td class="resolution-width">
                                                                        ${ProductDAO.INSTANCE.getResolutionById(poEntry.resolutionId).resolution}
                                                                    </td>        
                                                                    <td class="graphic-card-width">
                                                                        ${ProductDAO.INSTANCE.getGraphicCardById(poEntry.graphicCardId).graphicCard}
                                                                    </td>
                                                                    <td class="price-width">
                                                                        ${poEntry.price}
                                                                    </td>
                                                                    <td class="number-in-stock-width">
                                                                        ${poEntry.numberInStock}
                                                                    </td>
                                                                    <td class="quantity-sold-width">
                                                                        ${poEntry.quantitySold}
                                                                    </td>
                                                                    <td class="image-width">
                                                                        <c:if test="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId()).size() == 0}">
                                                                            No image
                                                                        </c:if>
                                                                        <c:forEach items="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId())}" var="image">
                                                                            <img src="img/${image.imageText}" width="50px" height="50px" alt="alt"/> 
                                                                        </c:forEach>
                                                                    </td>

                                                                    <td class="action-width">
                                                                        <a style="color:blue;" href="/SWP_Project/UpdateProduct?productOptionId=${poEntry.productOptionId}">Update</a>
                                                                        <%--<a style="color: red;" href="/SWP_Project/DeleteProduct?productOptionId=${poEntry.key.productOptionId}">Delete</a>--%>
                                                                        <a style="color: red;" onclick="confirmDeleteProductOption(${poEntry.productOptionId})" href="#">Delete</a>
                                                                        &nbsp;
                                                                        <%--<a href="/SWP_Project/AddProductOption?productId=${poEntry.key.productOptionId}" style="color: green;">Add option</a>
                                                                        --%>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                            <script type="text/javascript">
                                            </script>
                                        </table>
                                        <!--                    <div class="d-flex align-items-end row">
                                                              <div class="col-sm-7">
                                                                
                                                              </div>
                                                              <div class="col-sm-5 text-center text-sm-left">
                                                                
                                                              </div>
                                                            </div>-->
                                    </div>
                                </div>

                                <!--/ Transactions -->
                            </div>
                        </div>
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

        <script type="text/javascript">
//        console.log("${sessionScope.searchMap}" === "");
//        if("${sessionScope.searchMap}" !== "" && "${searching}" !== ""){
//            $.ajax({
//                url: "/SWP_Project/AdminShowAllProducts",
//                data: {
//                    "searching": "search"
//                },
//                type: 'POST'
//            });
//        }
        </script>

        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
    </body>
</html>
