<%-- 
    Document   : update-product
    Created on : Jan 19, 2024, 9:09:26 AM
    Author     : zenzen1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.ProductDAO, DAO.CategoryDAO" %>
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


        <link rel="stylesheet" href="./css/style.css" />
        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <style>
            #update-product-table {
                /*margin-left: 50px*/
                /*width: 50%;*/
            }
            #update-product-table select{
                width: 200px;
            }
            #update-product-table tr > td:nth-child(2){
                width: 30%;
            }
            #update-product-table input[type="number"], input:first-child{
                /*color: red;*/
                width: 200px;
            }
        </style>
        <script src="assets/js/config.js"></script>
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
                                <div class="col-md-12 mb-4 order-0">
                                    <div class="card">
                                        <c:if test="${productOption == null}">
                                            <c:if test="${updateSuccess != null}">
                                                <h3 style="color: green;">Update success</h3>
                                            </c:if>
                                            <c:if test="${updateSuccess == null}">
                                                <h3 style="color: red;">
                                                    Product not found
                                                </h3>

                                            </c:if>
                                        </c:if>
                                        <c:if test="${productOption != null}">
                                            <form action="UpdateProduct" method="post">
                                                <table id="update-product-table">
                                                    <tr>
                                                        <th></th>
                                                        <th>Old value</th>
                                                        <th>New value</th>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Product name: </td> 
                                                        <td>${product.productName}
                                                        </td>
                                                        <td>
                                                            <input name="productName" id="productName" value="${product.productName}" required="" autocomplete="off"/>
                                                        </td>
                                                    </tr>
                                                    <!--                              <tr>
                                                                                      <td>Category: </td>
                                                                                      <td>${product.category.categoryName}</td>
                                                                                      <td>
                                                                                          <select name="category" >
                                                    <c:forEach items="<%=CategoryDAO.INSTANCE.getCategoryList()%>" var="cat">
                                                      <option value="${cat.categoryId}" ${product.category.categoryName.equals(cat.categoryName)?"selected":""}>${cat.categoryName}</option>
                                                    </c:forEach>
                                                 </select>
                                             </td>
                                         </tr>-->
                                                    <tr>
                                                        <td style="width: 13%;">Product detail: </td>
                                                        <td>${product.productDetail}</td>
                                                        <td>
                                                            <textarea id="productDetail" name="productDetail" rows="3" cols="20">${product.productDetail}</textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Brand: </td>
                                                        <td>${ProductDAO.INSTANCE.getBrandById(productOption.brandId).brandName}</td>
                                                        <td>
                                                            <select id="brandId" name="brandId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getBrandList()%>" var="brand">
                                                                    <option value="${brand.brandId}" ${productOption.brandId==brand.brandId?"selected":""}>${brand.brandName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Hardware: </td>
                                                        <td>${ProductDAO.INSTANCE.getHardwareMemoryById(productOption.hardwareMemoryId).hardwareMemory}</td>
                                                        <td>
                                                            <select id="hardwareMemoryId" name="hardwareMemoryId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="hardwareMemory">
                                                                    <option value="${hardwareMemory.hardwareMemoryId}" ${productOption.hardwareMemoryId==hardwareMemory.hardwareMemoryId?"selected":""}
                                                                            >${hardwareMemory.hardwareMemory}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Ram: </td>
                                                        <td>${ProductDAO.INSTANCE.getRamMemoryById(productOption.ramMemoryId).ramMemory}</td>
                                                        <td>
                                                            <select id="ramMemoryId" name="ramMemoryId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getRamMemoryList()%>" var="ramMemory">
                                                                    <option value="${ramMemory.ramMemoryId}" ${productOption.ramMemoryId==ramMemory.ramMemoryId?"selected":""}>${ramMemory.ramMemory}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Color: </td>
                                                        <td>${ProductDAO.INSTANCE.getColorById(productOption.colorId).color}</td>
                                                        <td>
                                                            <select id="colorId" name="colorId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getColorList()%>" var="color">
                                                                    <option value="${color.colorId}" ${productOption.colorId==color.colorId?"selected":""}>${color.color}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Screen size: </td>
                                                        <td>${ProductDAO.INSTANCE.getScreenSizeById(productOption.screenSizeId).screenSize}</td>
                                                        <td>
                                                            <select id="screenSizeId" name="screenSizeId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getScreenSizeList()%>" var="ss">
                                                                    <option value="${ss.screenSizeId}" ${screenSizeId==ss.screenSizeId?"selected":""}>${ss.screenSize}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Resolution: </td>
                                                        <td>${ProductDAO.INSTANCE.getResolutionById(productOption.resolutionId).resolution}</td>
                                                        <td>
                                                            <select id="resolutionId" name="resolutionId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getResolutionList()%>" var="resolution">
                                                                    <option value="${resolution.resolutionId}" ${resolutionId==resolution.resolutionId?"selected":""}>${resolution.resolution}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Graphic card: </td>
                                                        <td>${ProductDAO.INSTANCE.getGraphicCardById(productOption.graphicCardId).graphicCard}</td>
                                                        <td>
                                                            <select id="resolutionId" name="graphicCardId">
                                                                <c:forEach items="<%=ProductDAO.INSTANCE.getGraphicCardList()%>" var="gc">
                                                                    <option value="${gc.graphicCardId}" hicCardId?"selected":""}>${gc.graphicCard}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Price: </td>
                                                        <td>${productOption.price}</td>
                                                        <td>
                                                            <input name="productPrice" id="productPrice" type="number" min="1" placeholder="Product price" required="" autocomplete="off"
                                                                   value="${productOption.price}"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 13%;">Quantity: </td>
                                                        <td>${productOption.numberInStock}</td>
                                                        <td>
                                                            <input type="number" min="0" name="numberInStock" placeholder="numberInStock" autocomplete="off" 
                                                                   required="" value="${productOption.numberInStock}"/>
                                                        </td>
                                                    <tr>
                                                        <td>
                                                            Images: 
                                                        </td>
                                                        <td>
                                                            <c:if test="${imageList.isEmpty()}" >
                                                                No image
                                                            </c:if>
                                                            <c:forEach items="${imageList}" var="image">
                                                                <img src="img/${image.imageText}" width="50px" height="50px" alt="alt"/>
                                                            </c:forEach>
                                                        </td>
                                                        <td>
                                                            <input style="width: 216px;" multiple
                                                                   name="productImage" id="productImage" type="file" />
                                                            <br/>
                                                            <input type="radio" id="overrideImage" value="overrideImage" name="imageOption"/> <label for="overrideImage">Override image </label> <br/>
                                                            <input type="radio" name="imageOption" value="addMoreImage" id="addMoreImage" checked/><label for="addMoreImage">Add more image </label>
                                                            <span></span>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <input type="hidden" value="${productOption.productOptionId}" name="productOptionId"/>
                                                <input style="width: 100px;" type="submit" value="Update" name="Update"/>
                                            </form>
                                            <h4>Other options of this product</h4>
                                            <c:if test="${productOptionList.isEmpty()}">
                                                <h5 style="color: red;">None</h5>
                                            </c:if>
                                            <c:forEach items="${productOptionList}" var="po">
                                                ${ProductDAO.INSTANCE.getBrandById(po.brandId).brandName} - ${ProductDAO.INSTANCE.getHardwareMemoryById(po.hardwareMemoryId).hardwareMemory} 
                                                - ${ProductDAO.INSTANCE.getRamMemoryById(po.ramMemoryId).ramMemory} - ${ProductDAO.INSTANCE.getColorById(po.colorId).color} - ${ProductDAO.INSTANCE.getScreenSizeById(po.screenSizeId).screenSize} - ${ProductDAO.INSTANCE.getResolutionById(po.resolutionId).resolution} - ${ProductDAO.INSTANCE.getGraphicCardById(po.graphicCardId).graphicCard} - ${po.price}
                                                <br/>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                </div>

                                <!-- Total Revenue -->

                                <!--/ Total Revenue -->

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
        <script>
            if (${updateSuccess} === 'updateSuccess') {
                alert("Update success");
            }
        </script>

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
