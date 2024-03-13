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

        <title>Product List</title>

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
                <div class="layout-page" >

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>
                    <!-- / Navbar -->

                    <!-- Content wrapper -->
                    <div class="content-wrapper" >
                        <!-- Content -->
                        <div class="card" >
                            <div class="card-header border-bottom" style="background: blanchedalmond;">
                                <div class="d-flex justify-content-between align-items-center row py-3 gap-3 gap-md-0">
                                    <h4 class="py-3 mb-4">
                                        <span class="text-muted fw-light">Product / List /</span> Search
                                    </h4>
                                    <form action="AdminShowAllProducts" method="post">
                                        <table class="search-table">
                                            <tr>

                                                <th>
                                                    <input type="checkbox" id="nameSearch" name="search" value="productName" 
                                                           ${sessionScope.searchMap.containsKey("productName")?"checked":""} />
                                                    Name
                                                </th>
                                                <%--
                                                <th>
                                                    <input type="checkbox" name="search" value="categoryId"
                                                           ${sessionScope.searchMap.containsKey("categoryId")?"checked":""}/>
                                                    Category
                                                </th>
                                                --%>
                                                <th>
                                                    <input type="checkbox" name="search" value="brandId" 
                                                           ${sessionScope.searchMap.containsKey("brandId")?"checked":""}/>
                                                    Brand
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="hardwareMemoryId"
                                                           ${sessionScope.searchMap.containsKey("hardwareMemoryId")?"checked":""}/>
                                                    Hardware
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="ramMemoryId"
                                                           ${sessionScope.searchMap.containsKey("ramMemoryId")?"checked":""}/>
                                                    Ram
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="colorId"
                                                           ${sessionScope.searchMap.containsKey("colorId")?"checked":""}/>
                                                    Color
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="screenSizeId"
                                                           ${sessionScope.searchMap.containsKey("screenSizeId")?"checked":""}/>
                                                    Screen size
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="resolutionId"
                                                           ${sessionScope.searchMap.containsKey("resolutionId")?"checked":""}/>
                                                    resolution
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="graphicCardId"
                                                           ${sessionScope.searchMap.containsKey("graphicCardId")?"checked":""}/>
                                                    Graphic card
                                                </th>
                                                <th  style="padding-left: 20px">
                                                    <input type="checkbox" name="search" value="price"
                                                           ${sessionScope.searchMap.containsKey("price")?"checked":""}/>
                                                    Price
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="numberInStock"
                                                           ${sessionScope.searchMap.containsKey("numberInStock")?"checked":""}/>
                                                    Number in stock
                                                </th>
                                                <th>
                                                    <input type="checkbox" name="search" value="quantitySold" 
                                                           ${sessionScope.searchMap.containsKey("quantitySold")?"checked":""}/>
                                                    Quantity sold
                                                </th>
                                            </tr>
                                            <tr>

                                                <td>
                                                    <input name="productName" placeholder="Name" style="width: 100px; padding-top: 0px; padding-bottom: 0px;"
                                                           value="${sessionScope.searchMap.containsKey("productName")?sessionScope.searchMap.get("productName").get(0):""}"/>
                                                </td>
                                                <%--
                                                <td>
                                                  <select name="categoryId">
                                                      <c:forEach items="<%=CategoryDAO.INSTANCE.getCategoryList()%>" var="category">
                                                          <option value="${category.categoryId}" 
                                                                  ${sessionScope.searchMap.containsKey("categoryId")?(sessionScope.searchMap.get("categoryId").get(0).equals(category.categoryId.toString())?"selected":""):""}
                                                                  >${category.categoryName}</option>
                                                      </c:forEach>
                                                  </select>
                                                </td>
                                                --%>
                                                <td>
                                                    <select id="brandId" name="brandId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getBrandList()%>" var="brand">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("brandId")?(sessionScope.searchMap.get("brandId").get(0).equals(brand.brandId.toString())?"selected":""):""}
                                                                value="${brand.brandId}" ${brandId==brand.brandId?"selected":""}>${brand.brandName}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select name="hardwareMemoryId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="hm">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("hardwareMemoryId")?(sessionScope.searchMap.get("hardwareMemoryId").get(0).equals(hm.hardwareMemoryId.toString())?"selected":""):""}
                                                                value="${hm.hardwareMemoryId}">${hm.hardwareMemory}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select name="ramMemoryId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getRamMemoryList()%>" var="ramMemory">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("ramMemoryId")?(sessionScope.searchMap.get("ramMemoryId").get(0).equals(ramMemory.ramMemoryId.toString())?"selected":""):""}
                                                                value="${ramMemory.ramMemoryId}" ${ramMemoryId==ramMemory.ramMemoryId?"selected":""}>${ramMemory.ramMemory}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>                        
                                                <td>
                                                    <select id="colorId" name="colorId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getColorList()%>" var="color">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("colorId")?(sessionScope.searchMap.get("colorId").get(0).equals(color.colorId.toString())?"selected":""):""}
                                                                value="${color.colorId}" ${colorId==color.colorId?"selected":""}>${color.color}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select id="screenSizeId" name="screenSizeId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getScreenSizeList()%>" var="ss">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("screenSizeId")?(sessionScope.searchMap.get("screenSizeId").get(0).equals(ss.screenSizeId.toString())?"selected":""):""}
                                                                value="${ss.screenSizeId}" ${screenSizeId==ss.screenSizeId?"selected":""}>${ss.screenSize}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select id="resolutionId" name="resolutionId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getResolutionList()%>" var="resolution">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("resolutionId")?(sessionScope.searchMap.get("resolutionId").get(0).equals(resolution.resolutionId.toString())?"selected":""):""}
                                                                value="${resolution.resolutionId}" ${resolutionId==resolution.resolutionId?"selected":""}>${resolution.resolution}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select id="resolutionId" name="graphicCardId">
                                                        <c:forEach items="<%=ProductDAO.INSTANCE.getGraphicCardList()%>" var="gc">
                                                            <option 
                                                                ${sessionScope.searchMap.containsKey("graphicCardId")?(sessionScope.searchMap.get("graphicCardId").get(0).equals(gc.graphicCardId.toString())?"selected":""):""}
                                                                value="${gc.graphicCardId}" ${graphicCardId==gc.graphicCardId?"selected":""}>${gc.graphicCard}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                                <td style="padding-left: 20px">
                                                    <!--                                  From: <input style="width: 100px;" type="number" min="0" /> <br/>
                                                                                      To:   <input style="width: 100px;" type="number" min='0' />-->
                                                    <section class="range-slider">
                                                        <span class="rangeValues"></span>
                                                        <input value="${sessionScope.searchMap.containsKey("price")?(sessionScope.searchMap.get("price").get(0)):"0"}"
                                                               min="0" max="10000" name="priceBegin" type="range" step="1">
                                                        <input value="${sessionScope.searchMap.containsKey("price")?(sessionScope.searchMap.get("price").get(1)):"5000"}" 
                                                               min="0" max="10000" name="priceEnd" type="range" step="1">
                                                    </section>
                                                </td>
                                                <td>
                                                    <section class="range-slider">
                                                        <span class="rangeValues"></span>
                                                        <input value="${sessionScope.searchMap.containsKey("numberInStock")?(sessionScope.searchMap.get("numberInStock").get(0)):"0"}"
                                                               min="0" max="2000" name="numberInStockBegin" type="range" step="1">
                                                        <input value="${sessionScope.searchMap.containsKey("numberInStock")?(sessionScope.searchMap.get("numberInStock").get(1)):"20"}" 
                                                               min="0" max="1000" name="numberInStockEnd" type="range" step="1">
                                                    </section>
                                                </td>
                                                <td>
                                                    <section class="range-slider">
                                                        <span class="rangeValues"></span>
                                                        <input value="${sessionScope.searchMap.containsKey("quantitySold")?(sessionScope.searchMap.get("quantitySold").get(0)):"0"}"
                                                               min="0" max="2000" name="quantitySoldBegin" type="range" step="1">
                                                        <input value="${sessionScope.searchMap.containsKey("quantitySold")?(sessionScope.searchMap.get("quantitySold").get(1)):"100"}" 
                                                               min="0" max="2000" name="quantitySoldEnd" type="range" step="1">
                                                    </section>
                                                </td>
                                            </tr>
                                        </table>
                                        <input type="submit" value="Clear Option" name="searchSubmit" />
                                        <input type="submit" value="Search" name="searchSubmit"/>

                                        <!--<button type="button" style="border: solid 1px black; margin-left: 40px;">Delete multiple products</button>-->
                                    </form>

                                </div>
                            </div>
                            <div class="card-datatable table-responsive">

                                <div class="dataTables_wrapper dt-bootstrap5 no-footer" id="DataTables_Table_0_wrapper">
                                    <table id="DataTables_Table_0" class="datatables-users table border-top dataTable no-footer dtr-column" style="display: contents;"  aria-describedby="DataTables_Table_0_info" style="width: 1380px;">
                                        <tr class=" py-1 ps ps--active-y">
                                            <th>Brand</th>
                                            <th >Name</th>
                                            <!--<th class="category-width">Category</th>-->
                                            <th class="product-detail-width">Detail</th>
                                            <th>
                                                <table style="width: 100%;"  class="datatables-users table border-top dataTable no-footer dtr-column">
                                                    <thead>
                                                        <tr style="display: flex;">
                                                            <th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label=""></th>

                                                            <th class="sorting dtr-hidden " >Hardware</th>
                                                            <th class="sorting" >Ram</th>
                                                            <th class="sorting" >Color</th>
                                                            <th class="sorting" >Screen size</th>
                                                            <th class="sorting" >Resolution</th>
                                                            <th class="sorting" >Graphic card</th>
                                                            <th class="sorting" >Price</th>
                                                            <th class="sorting" >Number in stock</th>
                                                            <th class="sorting" >Quantity sold</th>
                                                            <th class="sorting" >Image</th>
                                                            <th class="c sorting_disabled dtr-hidden" rowspan="1" colspan="1"  display: none;" aria-label="">Action</th>
                                                        </tr>
                                                    </thead>
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
                                            <tr class="even">
                                                <td class="control dtr-hidden" tabindex="0" >${ProductDAO.INSTANCE.getProductById(productEntry).brand.brandName}
                                                </td>

                                                <td style="width: 8.8%;"> ${ProductDAO.INSTANCE.getProductById(productEntry).productName}<br/>
                                                    <a style="color: green; font-size: 12px; " href="/SWP_Project/AddProductOption?productId=${productEntry}">Add other option</a>
                                                </td>
                                                <%--
                                                <td class="category-width">${ProductDAO.INSTANCE.getProductById(productEntry).category.categoryName}</td>
                                                --%>
                                                <td class="product-detail-width">${ProductDAO.INSTANCE.getProductById(productEntry).productDetail}</td>
                                                <%--<td>${product.coupon==null?"no coupon":coupon}</td> --%>
                                                <td style="">
                                                    <table class="datatables-users table border-top dataTable no-footer dtr-column">
                                                        <%--<c:forEach items="${ProductDAO.INSTANCE.getProductOptionByProductId(productEntry.productId)}" var="poEntry">--%>
                                                        <c:forEach items="${productMap.get(productEntry)}" var="poEntry">
                                                            <tr>
                                                                <td  style="">
                                                                    ${ProductDAO.INSTANCE.getHardwareMemoryById(poEntry.hardwareMemoryId).hardwareMemory}
                                                                </td>
                                                                <td  style="padding-left: 46px">
                                                                    ${ProductDAO.INSTANCE.getRamMemoryById(poEntry.ramMemoryId).ramMemory}

                                                                </td>
                                                                <c:set value="${ProductDAO.INSTANCE.getColorById(poEntry.colorId).color}" var="color"/>
                                                                <td  style="color: ${color.toLowerCase().equalsIgnoreCase("white")?"grey":color.toLowerCase()};width: 10px">
                                                                    ${color}
                                                                </td>
                                                                <td  style="padding-left: 30px">
                                                                    ${ProductDAO.INSTANCE.getScreenSizeById(poEntry.screenSizeId).screenSize}
                                                                </td>
                                                                <td  style="padding-left:  44px">
                                                                    ${ProductDAO.INSTANCE.getResolutionById(poEntry.resolutionId).resolution}
                                                                </td>        
                                                                <td  style="padding-left: 70px">
                                                                    ${ProductDAO.INSTANCE.getGraphicCardById(poEntry.graphicCardId).graphicCard}
                                                                </td>
                                                                <td  >
                                                                    ${poEntry.price}
                                                                </td>
                                                                <td  >
                                                                    ${poEntry.numberInStock}
                                                                </td>
                                                                <td  style="padding-left: 70px">
                                                                    ${poEntry.quantitySold}
                                                                </td>
                                                                <!--                                                                <td class="image-width">
                                                                <%--<c:if test="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId()).size() == 0}">--%>
                                                                    No image
                                                                <%--</c:if>--%>
                                                                <%--<c:forEach items="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId())}" var="image">--%>
                                                                    <img src="img/${image.imageText}" width="50px" height="50px" alt="alt"/> 
                                                                <%--</c:forEach>--%>
                                                            </td>-->
                                                                <td class="sorting_1"  style="padding-left: 50px">
                                                                    <div class="d-flex justify-content-start align-items-center ">
                                                                        <div class="avatar-wrapper">
                                                                            <div class=" me-2 rounded-2 ">
                                                                                <c:if test="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId()).size() == 0}">
                                                                                    No image
                                                                                </c:if>
                                                                                <c:forEach items="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId())}" var="image">
                                                                                    <a href="javascript:;" data-bs-target="#editUser"  data-bs-toggle="modal" >
                                                                                        <img src="img/${image.imageText}" style="width: 100%; " class="rounded-2" alt="alt"/> </a>   
                                                                                    <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true">
                                                                                        <div class="modal-dialog modal-lg modal-simple modal-edit-user">
                                                                                            <div class="modal-content p-3 p-md-5">
                                                                                                <div class="modal-body">
                                                                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                                                    <img src="img/${image.imageText}" style="width: 100%; " class="rounded-2" alt="alt"/> 
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </c:forEach>
                                                                            </div>

                                                                        </div>

                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="d-inline-block text-nowrap">
                                                                        <button class="btn btn-sm btn-icon">
                                                                            <a href="/SWP_Project/UpdateProduct?productOptionId=${poEntry.productOptionId}" class="bx bx-edit">Edit</a></button>
                                                                        <button class="btn btn-sm btn-icon delete-record">
                                                                            <i class="bx bx-trash" onclick="confirmDeleteProductOption(${poEntry.productOptionId})"></i></button>


                                                                    </div>
                                                                </td>
                                                                <!--                                                                    <td class="action-width">
                                                                                                                                        <a style="color:blue;" href="/SWP_Project/UpdateProduct?productOptionId=${poEntry.productOptionId}">Update</a>
                                                                <%--<a style="color: red;" href="/SWP_Project/DeleteProduct?productOptionId=${poEntry.key.productOptionId}">Delete</a>--%>
                                                                <a style="color: red;" onclick="confirmDeleteProductOption(${poEntry.productOptionId})" href="#">Delete</a>
                                                                &nbsp;
                                                                <%--<a href="/SWP_Project/AddProductOption?productId=${poEntry.key.productOptionId}" style="color: green;">Add option</a>
                                                                --%>
                                                            </td>-->
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        <script type="text/javascript">
                                            if (${deleteSuccess != null}) {
                                                alertDeleteSuccess();
                                                window.location.reload();
                                            }
                                            if (${updateSuccess != null}) {
                                                alertUpdateSuccess();
                                                window.location.reload();
                                            }
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

                            <!-- / Content -->

                            <!-- Footer -->

                            <!-- / Footer -->


                        </div>
                        <!-- Content wrapper -->
                    </div>
                </div>
                <!-- / Layout page -->
            </div>

            <!-- Overlay -->

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
