<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAO.CategoryDAO, Model.Category, java.util.List, java.util.ArrayList" %>
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

        <title>Basic Inputs - Forms | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
    </head>

    <body>

        <div class="content-wrapper">
            <!--            <div class="row">
                            
                        </div>-->
            <div class="container-xxl flex-grow-1 container-p-y">
                <h4 class="py-3 mb-4"><span class="text-muted fw-light"></span> Add product</h4>
                <div class="row">
                    <!--                    
                                        <h5 class="card-header">Input Sizing</h5>-->
                    <div class="card-body">

                        <form action="AddProduct" method="post">
                            <div class="mb-3">
                                <label for="productName" class="form-label">Product name: </label>
                                <h5 style="color: red;">${errorMessage}</h5>
                                <input name="productName" id="productName"  type="text" 
                                       placeholder="Product name" required="" autocomplete="off" value="${productName}"/>
                            </div>
                            <div class="mb-3">

                                <label for="productCategory" class="form-label">Category: </label>
                                <select id="productCategory" name="productCategory">
                                    <%!
                                        List<Category> list = CategoryDAO.INSTANCE.getCategoryList();
                                    %>
                                    <c:forEach items="<%=CategoryDAO.INSTANCE.getCategoryList()%>" var="cat">
                                        <option value="${cat.categoryName}" ${categoryName.equals(cat.categoryName)?"selected":""}>${cat.categoryName}</option>
                                    </c:forEach>

                                </select>
                            </div>
                                    
                                <!--option--> 
                            <%--
                            <div class="mb-3">
                                <label for="addOption" class="form-label">Add Option</label>
                                <input style="width: 300px;" name="addOption" id="addOption" placeholder="color, size, memory size, etc (optional)" 
                                       value="${optionName}"/>
<!--                                <button type="submit" name="addOptionSubmit">
                                    +
                                </button>-->
                                <c:if test="${addOptionList != null}">
                                    <span>Added: &nbsp
                                        <c:forEach items="${addOptionList}" var="option">
                                            ${option}, &nbsp;
                                        </c:forEach>
                                    </span>
                                </c:if>
                            </div>
                            --%>
                                
                            <div class="mb-3">
                                <label for="optionDetail" class="form-label">Option detail</label>
                                <input style="width: 300px;" name="optionDetail" id="optionDetail" placeholder="Red, 128Gb, etc" 
                                       value="${optionDetail}"/>
                            
                            </div>
                                
                            <div class="mb-3">
                                <label for="product price" class="form-label">Product price: </label>
                                <input name="productPrice" id="productPrice" type="number" min="0" placeholder="Product price" required="" autocomplete="off"
                                       value="${price}"/>
                            </div>
                            <div class="mb-3">
                                <label for="image" class="form-label">Image: </label>
                                <input style="width: 216px;" multiple
                                       name="image" id="productPrice" type="file" min="0" placeholder="image" autocomplete="off"/>
                            </div>
                            <div class="mb-3">
                                <input name="submit" id="submit" type="submit" value="Add"/>
                                <input name="clear" value="clear" style="margin-left: 40px;" type="submit"/>
                            </div>
                            
                        </form>
                    </div>
                </div>
                                

            </div>
        </div>

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