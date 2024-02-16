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

        <div class="content-wrapper">
            <!--            <div class="row">
                            
                        </div>-->
            <div class="container-xxl flex-grow-1 container-p-y">
                <div class="row" style="background-color: white; width: 97%; margin: auto;">
                    <!--                    
                                        <h5 class="card-header">Input Sizing</h5>-->
                    <div class="col-md-6">
                    <div class="card-body">
                        <form action="AddProduct" method="post">
                            <table class="add-product-table">
                                <tr>
                                    
                                <a href="/SWP_Project/AdminShowAllProducts">Show all products</a>
                                <h4 class="py-3 mb-4"><span class="text-muted fw-light"></span> Add product  <span style="color: red;">(Please press clear button to insert other product)</span></h4>
                                    
                                
                            <!--<table>-->
                                <!--<tr>-->
                                    <!--<td>-->
                                    <td>
                                        
                                        <h5 style="color: red;">${errorMessage}</h5>
                                        <label for="productName" class="form-label">Product name: </label>
                                    </td>
                                    <td>
                                        
<!--                                    </td>
                                    <td style="width: 80%">-->
                                        <input name="productName" id="productName" class=""  type="text" ${sessionScope.productId != null?"readonly":""} 
                                               placeholder="Product name" required="" autocomplete="off" value="${productName==null?sessionScope.product.productName:productName}"/>
                                    </td>
                                        
<!--                                    </td>
                                </tr>-->
                            <!--</table>-->
                            </tr>
                            <tr>
                                <td>
                                    <label for="productCategory" class="form-label">Category: </label>
                                </td>
                                <td>
                                    
                                    <c:if test="${sessionScope.productId == null}">
                                    <%!
                                        List<Category> list = CategoryDAO.INSTANCE.getCategoryList();
                                    %>
                                    <select id="productCategory" name="productCategory" ${sessionScope.productId != null?"readonly":""} >
                                        <c:forEach items="<%=CategoryDAO.INSTANCE.getCategoryList()%>" var="cat">
                                            <option value="${cat.categoryName}" ${(categoryName==null?SessionScope.product.category.categotyName:categoryName).equals(cat.categoryName)?"selected":""}>${cat.categoryName}</option>
                                        </c:forEach>
                                    </select>
                                    </c:if>
                                    <c:if test="${sessionScope.productId != null}">
                                        <input type="hidden" readonly="" name="productCategory" value="${product.category.categoryId}"/> ${product.category.categoryName}
                                    </c:if>
                                            
                                </td>
                            </tr>
                                  
                            <tr>
                                <td>
                                    <label for="productDetail">Product detail: </label>
                                </td>
                                <td>
                                    <textarea id="productDetail" name="productDetail" rows="3" cols="20" ${sessionScope.productId != null?"readonly":""} >${productDetail==null?sessionScope.product.productDetail:productDetail}</textarea>
                                </td>
                            </tr>
                                
                            <tr>
                                <td>
                                    <label for="brandId" class="form-label">Brand: </label>
                                </td>
                                <td>
                                    <select id="brandId" name="brandId">
                                        <c:forEach items="<%=ProductDAO.INSTANCE.getBrandList()%>" var="brand">
                                            <option value="${brand.brandId}" ${brandId==brand.brandId?"selected":""}>${brand.brandName}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="hardwareMemoryId" class="form-label">Hardware memory: </label>
                                </td>
                                <td>
                                    <select id="hardwareMemoryId" name="hardwareMemoryId">
                                        <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="hardwareMemory">
                                            <option value="${hardwareMemory.hardwareMemoryId}" ${hardwareMemoryId==hardwareMemory.hardwareMemoryId?"selected":""}
                                                    >${hardwareMemory.hardwareMemory}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="ramMemoryId" class="form-label">Ram memory: </label>
                                </td>
                                <td>
                                    <select id="ramMemoryId" name="ramMemoryId">
                                        <!--<option></option>-->
                                        <c:forEach items="<%=ProductDAO.INSTANCE.getRamMemoryList()%>" var="ramMemory">
                                            <option value="${ramMemory.ramMemoryId}" ${ramMemoryId==ramMemory.ramMemoryId?"selected":""}>${ramMemory.ramMemory}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                                    
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
                            <tr>
                                <td>
                                    <label for="colorId" class="form-label">Product color: </label>
                                </td>
                                <td>
                                    <select id="colorId" name="colorId">
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getColorList()%>" var="color">
                                        <option value="${color.colorId}" ${colorId==color.colorId?"selected":""}>${color.color}</option>
                                    </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <label for="screenSizeId" class="form-label">Screen size: </label>
                                </td>
                                <td>
                                    <select id="screenSizeId" name="screenSizeId">
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getScreenSizeList()%>" var="ss">
                                        <option value="${ss.screenSizeId}" ${screenSizeId==ss.screenSizeId?"selected":""}>${ss.screenSize}</option>
                                    </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="resolutionId" class="form-label">Resolution: </label>
                                </td>
                                <td>
                                    <select id="resolutionId" name="resolutionId">
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getResolutionList()%>" var="resolution">
                                        <option value="${resolution.resolutionId}" ${resolutionId==resolution.resolutionId?"selected":""}>${resolution.resolution}</option>
                                    </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                        <label for="graphicCardId" class="form-label">Graphic card: </label>
                                </td>
                                <td>
                                    <select id="resolutionId" name="graphicCardId">
                                    <c:forEach items="<%=ProductDAO.INSTANCE.getGraphicCardList()%>" var="gc">
                                        <option value="${gc.graphicCardId}" ${graphicCardId==gc.graphicCardId?"selected":""}>${gc.graphicCard}</option>
                                    </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            
                            <%--
                            <div class="mb-3">
                                <label for="optionDetail" class="form-label">Option detail</label>
                                <input style="width: 300px;" name="optionDetail" id="optionDetail" placeholder="Red, 128Gb, etc" 
                                       value="${optionDetail}"/>
                            
                            </div>
                            --%>
                            
                            <tr>
                                <td>
                                    <label for="productPrice" class="form-label">Product price: </label>
                                </td>
                                <td>
                                    <input name="productPrice" id="productPrice" type="number" min="0" placeholder="Product price" required="" autocomplete="off"
                                           value="${price}" 
                                           <%--oninput="inputProductPrice()"--%>
                                           />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="quantity" class="form-label">Quantity: </label>
                                </td>
                                <td>
                                    <input name="quantity" id="quantity" type="number" min="0" placeholder="Quantity" required="" autocomplete="off"
                                           value="${quantity}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="image" class="form-label">Image: </label>
                                </td>
                                <td>
                                    <input style="width: 216px;" multiple
                                           name="image" id="productPrice" type="file" min="0" placeholder="image" autocomplete="off"/>
                                </td>
                            </tr>
                        </table>
                            <div class="mb-3">
                                <input name="submit" id="submit" type="submit" value="Add"/>
                                <input name="clear" value="clear" style="margin-left: 40px;" type="submit"/>
                            </div>
                            
                            
                            
                        </form>
                    </div>
                    </div>
                                
                    <div class="col-md-6 product-option">
                        <div>
                            
                        <c:if test="${addFail != null}">
                            <h3 style="color: red;">Add fail</h3>
                            <h5 style="color: red;">
                                Option: ${ProductDAO.INSTANCE.getBrandById(brandId).brandName} - ${ProductDAO.INSTANCE.getHardwareMemoryById(hardwareMemoryId).hardwareMemory} 
                              - ${ProductDAO.INSTANCE.getRamMemoryById(ramMemoryId).ramMemory} - ${ProductDAO.INSTANCE.getColorById(colorId).color} - ${ProductDAO.INSTANCE.getScreenSizeById(screenSizeId).screenSize} - ${ProductDAO.INSTANCE.getResolutionById(resolutionId).resolution} - ${ProductDAO.INSTANCE.getGraphicCardById(graphicCardId).graphicCard} 
                                already exist
                            </h5>
                        </c:if>
                        <c:if test="${addSuccess != null}">
                            <h3 style="color: green;">Add success</h3>
                        </c:if>
                        </div>
                        <div>
                            <c:if test="${product != null}">
                                <table>
                                    <tr>
                                        <td>Name: </td>
                                        <td>${product.productName}</td>
                                    </tr>
                                    <tr>
                                        <td>Category: </td>
                                        <td>${product.category.categoryName}</td>
                                    </tr>
                                    <tr>
                                        <td>Product detail: </td>
                                        <td>${product.productDetail}</td>
                                    </tr>
                                    <tr>
                                        <td>Product option: </td>
                                        <td></td>
                                    </tr>
                                </table>
                                <ul>
                                <c:forEach items="${ProductDAO.INSTANCE.getProductOptionByProductId(product.productId)}" var="po">
                                    <li>
                                        ${ProductDAO.INSTANCE.getBrandById(po.brandId).brandName} - ${ProductDAO.INSTANCE.getHardwareMemoryById(po.hardwareMemoryId).hardwareMemory} 
                              - ${ProductDAO.INSTANCE.getRamMemoryById(po.ramMemoryId).ramMemory} - ${ProductDAO.INSTANCE.getColorById(po.colorId).color} - ${ProductDAO.INSTANCE.getScreenSizeById(po.screenSizeId).screenSize} - ${ProductDAO.INSTANCE.getResolutionById(po.resolutionId).resolution} - ${ProductDAO.INSTANCE.getGraphicCardById(po.graphicCardId).graphicCard} - ${po.price}
                                    </li>
                                </c:forEach>
                                </ul>
                            </c:if>
                        </div>
                    </div>
                </div>
                                

            </div>
        </div>
        
        <script type="text/javascript">
            function inputProductPrice(){
                var priceElement = document.getElementById("productPrice");
                var price = priceElement.value.toString();
                if(price.endsWith(" ")){
                    priceElement.value = price.substring(0, price.length - 1);
                    return;
                }
                if (!isNumeric(removeSpace(price))){
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
            
            function addSpace(string){
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
            
            function removeSpace(string){
                return string.toString().replaceAll(" ", "");
            }
            
            function isNumeric(str) {
                if (typeof str !== "string") return false;
                return !isNaN(str) && !isNaN(parseFloat(str)) ; 
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