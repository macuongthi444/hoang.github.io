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
        </style>
    </head>

    <body>

        <div class="content-wrapper">
            <!--            <div class="row">
                            
                        </div>-->
            <div class="container-xxl flex-grow-1 container-p-y">
                <div class="row">
                    <!--                    
                                        <h5 class="card-header">Input Sizing</h5>-->
                    <div class="card-body">

                        <form action="AddProduct" method="post" style="background-color: white; width: 90%; margin: auto;">
                            <div class="mb-3">
                                <h4 class="py-3 mb-4"><span class="text-muted fw-light"></span> Add product  <span style="color: red;">(Please press clear button to insert other product)</span></h4>
                            <!--<table>-->
                                <!--<tr>-->
                                    <!--<td>-->
                                        <h5 style="color: red;">${errorMessage}</h5>
                                        <label for="productName" class="form-label">Product name: </label>
                                        
<!--                                    </td>
                                    <td style="width: 80%">-->
                                        <input name="productName" id="productName" class=""  type="text" 
                                               placeholder="Product name" required="" autocomplete="off" value="${productName}"/>
                                        
<!--                                    </td>
                                </tr>-->
                            <!--</table>-->
                            
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
                                    
                            <div class="mb-3">
                                <label for="brandId" class="form-label">Brand: </label>
                                <select id="brandId" name="brandId">
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getBrandList()%>" var="brand">
                                        <option value="${brand.brandId}" ${brandId==brand.brandId?"selected":""}>${brand.brandName}</option>
                                    </c:forEach>
                                </select>
                            </div>        
                            
                            <div class="mb-3">
                                <label for="productDetail">Product detail: </label>
                                <textarea id="productDetail" name="productDetail" rows="3" cols="20">${productDetail}</textarea>
                            </div>
                                    
                            <div class="mb-3">
                                <label for="hardwareMemoryId" class="form-label">Hardware memory: </label>
                                <select id="hardwareMemoryId" name="hardwareMemoryId">
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="hardwareMemory">
                                        <option value="${hardwareMemory.hardwareMemoryId}" ${hardwareMemoryId==hardwareMemory.hardwareMemoryId?"selected":""}
                                                >${hardwareMemory.hardwareMemory}</option>
                                    </c:forEach>
                                </select>
                            </div>   
                                    
                            <div class="mb-3">
                                <label for="ramMemoryId" class="form-label">Ram memory: </label>
                                <select id="ramMemoryId" name="ramMemoryId">
                                    <!--<option></option>-->
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getRamMemoryList()%>" var="ramMemory">
                                        <option value="${ramMemory.ramMemoryId}" ${ramMemoryId==ramMemory.ramMemoryId?"selected":""}>${ramMemory.ramMemory}</option>
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
                                <label for="colorId" class="form-label">Product color: </label>
                                <select id="colorId" name="colorId">
                                <c:forEach items="<%=ProductDAO.INSTANCE.getColorList()%>" var="color">
                                    <option value="${color.colorId}" ${colorId==color.colorId?"selected":""}>${color.color}</option>
                                </c:forEach>
                                </select>
                            </div>
                            
                            <div class="mb-3">
                                <label for="screenSizeId" class="form-label">Screen size: </label>
                                <select id="screenSizeId" name="screenSizeId">
                                <c:forEach items="<%=ProductDAO.INSTANCE.getScreenSizeList()%>" var="ss">
                                    <option value="${ss.screenSizeId}" ${screenSizeId==ss.screenSizeId?"selected":""}>${ss.screenSize}</option>
                                </c:forEach>
                                </select>
                            </div>
                            
                            <div class="mb-3">
                                <label for="resolutionId" class="form-label">Resolution: </label>
                                <select id="resolutionId" name="resolutionId">
                                <c:forEach items="<%=ProductDAO.INSTANCE.getResolutionList()%>" var="resolution">
                                    <option value="${resolution.resolutionId}" ${resolutionId==resolution.resolutionId?"selected":""}>${resolution.resolution}</option>
                                </c:forEach>
                                </select>
                            </div>
                            
                            <div class="mb-3">
                                <label for="graphicCardId" class="form-label">Graphic card: </label>
                                <select id="resolutionId" name="graphicCardId">
                                <c:forEach items="<%=ProductDAO.INSTANCE.getGraphicCardList()%>" var="gc">
                                    <option value="${gc.graphicCardId}" ${graphicCardId==gc.graphicCardId?"selected":""}>${gc.graphicCard}</option>
                                </c:forEach>
                                </select>
                            </div>
                            
                            <%--
                            <div class="mb-3">
                                <label for="optionDetail" class="form-label">Option detail</label>
                                <input style="width: 300px;" name="optionDetail" id="optionDetail" placeholder="Red, 128Gb, etc" 
                                       value="${optionDetail}"/>
                            
                            </div>
                            --%>
                            
                            
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