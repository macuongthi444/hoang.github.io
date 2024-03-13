<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.CategoryDAO, Model.Category, java.util.List, java.util.ArrayList, DAO.ProductDAO" %>
<!DOCTYPE html>
<html
    lang="en"
    class="light-style layout-menu-fixed layout-compact"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="/SWP_Project/assets/"
    data-template="vertical-menu-template-free">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title></title>

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

        <!-- Page CSS -->

        <!-- Helpers -->
        <script src="/SWP_Project/assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="/SWP_Project/assets/js/config.js"></script>
        <style>
            input[readonly], textarea[readonly]{
                background-color: #f8f8f8;
                border: solid 1px rgba(0, 0, 0, 0.2);
            }
            .mb-3:first-of-type{
                padding-top: 0px;
            }
            .mb-3{
                margin-left: 50px;
                padding-top: 20px;
            }
            .mb-3:last-of-type{
                padding-bottom: 20px;
            }
            .add-product-table{
                margin-bottom: 20px;
                margin-left: 40px;
                margin-right: 200px;
                width: 80%;
            }
            .add-product-table tr:first-child{
                border-top: 1px solid rgba(0, 0, 0, 0.3);
            }
            .add-product-table tr td:first-child{
                width: 170px;
            }
            .add-product-table select{
                width: 200px;
            }
            .add-product-table tr{
                border-bottom: 1px solid rgba(0, 0, 0, 0.3);
            }
            .product-option div:nth-child(1){
                margin: 30px 0 20px 100px;
            }
            .product-option div:nth-child(2){
                margin: 20px 0 20px 100px;
            }
        </style>
    </head>

    <body>
        <div class="layout-wrapper layout-content-navbar">
            <div class="layout-container">
                <jsp:include page="HeaderAdmin.jsp" />
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page" >

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>

                    <div class="content-wrapper">
                        <form action="AddProduct" method="post">
                            <!-- Content -->

                            <div class="container-xxl flex-grow-1 container-p-y" style="background: blanchedalmond;">



                                <h4 class="py-3 mb-4">
                                    <span class="text-muted fw-light">eCommerce /</span><span> Add Product</span>

                                </h4>
                                <h5 style="color: red;">${errorMessage}</h5>
                                <label for="productName" class="form-label">Product name: </label>
                                <div class="app-ecommerce">

                                    <!-- Add Product -->
                                    <div class="d-flex flex-wrap justify-content-between align-items-center mb-3">

                                        <div class="d-flex flex-column justify-content-center">
                                            <h4 class="mb-1 mt-3">Add a new Product</h4>
                                        </div>
                                        <div class="d-flex align-content-center flex-wrap gap-3" style="padding-right: 300px;">



                                            <button type="submit" name="clear"  value="clear" class="btn btn-label-primary">Clear</button>
                                            <button type="submit" name="submit" value="Add" class="btn btn-primary">Publish product</button>
                                        </div>

                                    </div>

                                    <div class="row">

                                        <!-- First column-->
                                        <div class="col-12 col-lg-8">
                                            <!-- Product Information -->
                                            <div class="card mb-4">
                                                <div class="card-header">
                                                    <h5 class="card-tile mb-0">Product information</h5>
                                                </div>
                                                <div class="card-body">
                                                    <div class="mb-3">
                                                        <label class="form-label" for="ecommerce-product-name">Name</label>

                                                        <input name="productName" id="ecommerce-product-name" class="form-control" placeholder="Product title" aria-label="Product title"
                                                               type="text" ${sessionScope.productId != null?"readonly":""} autocomplete="off" value="${productName==null?sessionScope.product.productName:productName}">
                                                    </div>




                                                    <div class="">
                                                        <div class="row mb-3">
                                                            <div class="col">
                                                                <label class="form-label" for="ecommerce-product-sku">Category:</label>
                                                                <c:if test="${sessionScope.productId == null}">
                                                                    <%!
                                                                        List<Category> list = CategoryDAO.INSTANCE.getCategoryList();
                                                                    %>
                                                                    <select id="productCategory" name="productCategory" ${sessionScope.productId != null?"readonly":""} class="select2 form-select select2-hidden-accessible" >
                                                                        <c:forEach items="<%=CategoryDAO.INSTANCE.getCategoryList()%>" var="cat">
                                                                            <option value="${cat.categoryName}" ${(categoryName==null?SessionScope.product.category.categotyName:categoryName).equals(cat.categoryName)?"selected":""}>${cat.categoryName}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </c:if>
                                                                <c:if test="${sessionScope.productId != null}">
                                                                    <input type="hidden" readonly="" name="productCategory" value="${product.category.categoryId}"/> ${product.category.categoryName}
                                                                </c:if>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <!-- Description -->
                                                    <div class="card mb-5">
                                                        <label class="form-label">Product detail: <span class="text-muted">(Optional)</span></label>
                                                        <div class="form-control p-0 pt-1">
                                                            <textarea name="productDetail" id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
                                                            <label for="form76"></label>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-4" data-select2-id="21">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Product Option:</h5>
                                                </div>
                                                <div class="card-body" data-select2-id="20">

                                                    <div data-repeater-list="group-a" data-select2-id="18">
                                                        <div data-repeater-item="" data-select2-id="17">
                                                            <div class="row mb-3" data-select2-id="16">

                                                                <div class=" col-6" data-select2-id="15">
                                                                    <label class="form-label" for="form-repeater-1-1">Brand:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="brandId" name="brandId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getBrandList()%>" var="brand">
                                                                                <option value="${brand.brandId}" ${brandId==brand.brandId?"selected":""}>${brand.brandName}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class=" col-6" data-select2-id="15" style="padding-bottom: inherit;">
                                                                    <label class="form-label" for="form-repeater-1-1">Hardware memory:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="hardwareMemoryId" name="hardwareMemoryId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="hardwareMemory">
                                                                                <option value="${hardwareMemory.hardwareMemoryId}" ${hardwareMemoryId==hardwareMemory.hardwareMemoryId?"selected":""}
                                                                                        >${hardwareMemory.hardwareMemory}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class=" col-6" data-select2-id="15" style="padding-bottom: inherit;">
                                                                    <label class="form-label" for="form-repeater-1-1">Ram memory:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="ramMemoryId" name="ramMemoryId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getRamMemoryList()%>" var="ramMemory">
                                                                                <option value="${ramMemory.ramMemoryId}" ${ramMemoryId==ramMemory.ramMemoryId?"selected":""}>${ramMemory.ramMemory}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class=" col-6" data-select2-id="15" style="padding-bottom: inherit;">
                                                                    <label class="form-label" for="form-repeater-1-1">Product color:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="colorId" name="colorId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getColorList()%>" var="color">
                                                                                <option value="${color.colorId}" ${colorId==color.colorId?"selected":""}>${color.color}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class=" col-6" data-select2-id="15" style="padding-bottom: inherit;">
                                                                    <label class="form-label" for="form-repeater-1-1">Screen size:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="screenSizeId" name="screenSizeId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getScreenSizeList()%>" var="ss">
                                                                                <option value="${ss.screenSizeId}" ${screenSizeId==ss.screenSizeId?"selected":""}>${ss.screenSize}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>


                                                                <div class=" col-6" data-select2-id="15" style="padding-bottom: inherit;">
                                                                    <label class="form-label" for="form-repeater-1-1">Resolution:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="resolutionId" name="resolutionId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getResolutionList()%>" var="resolution">
                                                                                <option value="${resolution.resolutionId}" ${resolutionId==resolution.resolutionId?"selected":""}>${resolution.resolution}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class=" col-6" data-select2-id="15" style="padding-bottom: inherit;">
                                                                    <label class="form-label" for="form-repeater-1-1">Graphic card:</label>
                                                                    <div class="position-relative" data-select2-id="14">
                                                                        <select id="resolutionId" name="graphicCardId" class="select2 form-select select2-hidden-accessible" data-placeholder="Size" data-select2-id="form-repeater-1-1" tabindex="-1" aria-hidden="true">
                                                                            <c:forEach items="<%=ProductDAO.INSTANCE.getGraphicCardList()%>" var="gc">
                                                                                <option value="${gc.graphicCardId}" ${graphicCardId==gc.graphicCardId?"selected":""}>${gc.graphicCard}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="row mb-2" >
                                                                    <div class="col" style="padding-bottom: inherit;">
                                                                        <label class="form-label" for="ecommerce-product-sku">Product price:</label>
                                                                        <input type="number" min="0" placeholder="Product price" required="" autocomplete="off"
                                                                               value="${price==null?0:price}" 
                                                                               class="form-control" id="ecommerce-product-sku" placeholder="SKU" name="productPrice" aria-label="productPrice"></div>
                                                                    <div class="col" style="padding-bottom: inherit;">
                                                                        <label class="form-label" for="ecommerce-product-barcode">Quantity:</label>
                                                                        <input  type="number" min="0" placeholder="Quantity" required="" autocomplete="off"
                                                                                value="${quantity==null?0:quantity}" 
                                                                                class="form-control" id="ecommerce-product-barcode" placeholder="0123-4567" name="quantity" aria-label="quantity"></div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>





                                            <!-- /Product Information -->
                                            <!-- Media -->
                                            <div class="card mb-4">
                                                <div class="card-header d-flex justify-content-between align-items-center">
                                                    <h5 class="mb-0 card-title">Image:</h5>

                                                </div>
                                                <div class="card-body">

                                                    <div  class="dropzone needsclick dz-clickable" id="dropzone-basic">
                                                        <input style="width: 216px;" multiple
                                                               name="image" id="productPrice" type="file" min="0" placeholder="image" autocomplete="off"/>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- /Media -->
                                        <!-- Variants -->

                                        <!-- /Variants -->
                                        <!-- Inventory -->

                                        <!-- /Inventory -->
                                    </div>
                                    <!-- /Second column -->

                                    <!-- Second column -->

                                    <!-- /Second column -->

                                </div>
                            </div>
                        </form>

                    </div>
                </div> </div></div>
        <script type="text/javascript">
            function inputProductPrice() {
                var priceElement = document.getElementById("productPrice");
                var price = priceElement.value.toString();
                if (price.endsWith(" ")) {
                    priceElement.value = price.substring(0, price.length - 1);
                    return;
                }
                if (!isNumeric(removeSpace(price))) {
                    priceElement.value = price.substring(0, price.length - 1);
                    return;
                }
                price = removeSpace(price);
//                parseInt(price);
                // 1 293 123 221
//                var len = price.length;
//                var noOfLoop = parseInt((len - len % 3) / 3);
//                for (var i = 0; i < noOfLoop; i++) {
//                    var index = (len % 3) + i * 3 + 1;
//                    
//                    price = price.substring(0, index) + " " + price.substring(index);
//                }
//                window.console.log(noOfLoop + "  " + price.length + "  " + price);
                priceElement.value = addSpace(price);

            }

            function addSpace(string) {
                var len = string.length;
                var noOfLoop = parseInt((len - 1) / 3);
                // 1 293 -> 1
                // 12 345 -> 2
                // 100 000 -> 3
                // 100 000 000 -> 3
                // 3 123 221
                // 3 - (len % 3)
                var num = len % 3 === 0 ? 3 : len % 3;
                for (var i = 0; i < noOfLoop; i++) {
                    var index = num + i * 3 + i;
                    var firstString = string.substring(0, index);
                    var lastString = string.substring(index);
                    window.console.log(firstString + "  " + lastString);
                    string = firstString + " " + lastString;
                }
                window.console.log(noOfLoop + "  " + string.length + "  " + string);
                return string;
//                priceElement.value = price;
            }

            function removeSpace(string) {
                return string.toString().replaceAll(" ", "");
            }

            function isNumeric(str) {
                if (typeof str !== "string")
                    return false;
                return !isNaN(str) && !isNaN(parseFloat(str));
            }
        </script>

        <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/popper/popper.js"></script>
        <script src="/SWP_Project/assets/vendor/js/bootstrap.js"></script>
        <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="/SWP_Project/assets/vendor/js/menu.js"></script>

        <!-- endbuild 

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
</html>