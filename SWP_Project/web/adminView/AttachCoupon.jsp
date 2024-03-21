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
                 <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" data-bg-class="bg-menu-theme">
            <div class="app-brand demo">
                <a href="/SWP_Project/AdminShowAllProducts" class="app-brand-link">
                    <span class="app-brand-logo demo">
                        <svg width="25" viewBox="0 0 25 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <defs>
                        <path d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z" id="path-1"></path>
                        <path d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z" id="path-3"></path>
                        <path d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z" id="path-4"></path>
                        <path d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z" id="path-5"></path>
                        </defs>
                        <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                        <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                        <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                        </mask>
                        <use fill="#696cff" xlink:href="#path-1"></use>
                        <g id="Path-3" mask="url(#mask-2)">
                        <use fill="#696cff" xlink:href="#path-3"></use>
                        <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                        </g>
                        <g id="Path-4" mask="url(#mask-2)">
                        <use fill="#696cff" xlink:href="#path-4"></use>
                        <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                        </g>
                        </g>
                        <g id="Triangle" transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                        <use fill="#696cff" xlink:href="#path-5"></use>
                        <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                        </g>
                        </g>
                        </g>
                        </svg>
                    </span>
                    <span class="app-brand-text demo menu-text fw-bold ms-2">Group 6</span>
                </a>

                <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
                    <i class="bx bx-chevron-left bx-sm align-middle"></i>
                </a>
            </div>

            <div class="menu-inner-shadow"></div>

            <ul class="menu-inner py-1 ps ps--active-y">
                <!-- Dashboards -->
                <li class="menu-item active open">
                    
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/dashboards-crm.html" target="_blank" class="menu-link">
                                <div data-i18n="CRM">CRM</div>
                                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
                            </a>
                        </li>

                            <li class="menu-item active open ">
                                <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                    <i class="menu-icon tf-icons bx bx-user"></i>
                                    <div class="text-truncate" data-i18n="Users">Users</div>
                                </a>
                                <ul class="menu-sub ">
                                    <li class="menu-item " >
                                        <a href="/SWP_Project/UserList" class="menu-link ">
                                            <div class="text-truncate" data-i18n="List">List</div>
                                        </a>
                                    </li>

                                    <li class="menu-item ">
                                        <a href="../SWP_Project/UserDetail?id=23" class="menu-link ">
                                            <div class="text-truncate" data-i18n="Account">Account</div>
                                        </a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="/SWP_Project/ChartControll" class="menu-link">
                                            <div class="text-truncate" data-i18n="Chart">Chart</div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        
                        
                            <li class="menu-item active open">
                                <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                    <i class="menu-icon tf-icons bx bx-file"></i>
                                    <div class="text-truncate" data-i18n="Users">Post</div>
                                </a>
                                <ul class="menu-sub">
                                    <li class="menu-item active open">
                                        <a href="/SWP_Project/PostList" class="menu-link ">
                                            <div class="text-truncate" data-i18n="List">List</div>
                                        </a>
                                    </li>

                                    <li class="menu-item active open ">
                                        <a href="../SWP_Project/PostDetail?postId=5" class="menu-link ">
                                            <div class="text-truncate" data-i18n="View">View</div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        
                       
                            <li class="menu-item " style="">
                                <a href="javascript:void(0);" class="menu-link menu-toggle">
                                    <i class="menu-icon tf-icons bx bx-cart-alt"></i>
                                    <div class="text-truncate" data-i18n="eCommerce">Product</div>
                                </a>
                                <ul class="menu-sub">
                                    <li class="menu-item ">
                                        <a href="../SWP_Project/AdminShowAllProducts" class="menu-link">
                                            <div class="text-truncate" data-i18n="Dashboard">Product List</div>
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/SWP_Project/AddProduct" class="menu-link">
                                            <div data-i18n="AddProduct">Add product</div>
                                        </a>
                                    </li>                                                 
                                </ul>
                            </li>
                        
                            <li class="menu-item ">
                                <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                    <i class="menu-icon tf-icons bx bx-food-menu"></i>
                                    <div class="text-truncate" data-i18n="Users">Coupon</div>
                                </a>
                                <ul class="menu-sub">
                                    <li class="menu-item">
                                        <a href="/SWP_Project/couponList" class="menu-link ">
                                            <div class="text-truncate" data-i18n="List">List</div>
                                        </a>
                                    </li>

                                    <li class="menu-item ">
                                        <a href="/SWP_Project/addCoupon" class="menu-link ">
                                            <div class="text-truncate" data-i18n="View">Add Coupon</div>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                        
                        
                            <li class="menu-item ">
                                <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                    <i class="menu-icon tf-icons bx bx-file"></i>
                                    <div class="text-truncate" data-i18n="Users">Order</div>
                                </a>
                                <ul class="menu-sub">
                                    <li class="menu-item">
                                        <a href="/SWP_Project/orderList" class="menu-link ">
                                            <div class="text-truncate" data-i18n="List">List</div>
                                        </a>
                                    </li> 
                                </ul>
                            </li>
                        
                       
                            <li class="menu-item ">
                                <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                    <i class="menu-icon tf-icons bx bx-mail-send"></i>
                                    <div class="text-truncate" data-i18n="Users">Contact</div>
                                </a>
                                <ul class="menu-sub">
                                    <li class="menu-item">
                                        <a href="/SWP_Project/ContactList" class="menu-link ">
                                            <div class="text-truncate" data-i18n="List">List</div>
                                        </a>
                                    </li>


                                </ul>
                            </li>
                        
                        <li class="menu-item ">
                            <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                <i class="menu-icon tf-icons bx bx-food-menu"></i>
                                <div class="text-truncate" data-i18n="Users">Delivery</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="/SWP_Project/DeliveryManList" class="menu-link ">
                                        <div class="text-truncate" data-i18n="List">List</div>
                                    </a>
                                </li>

                                

                            </ul>
                        </li>
                        <li class="menu-item ">
                            <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                <i class="menu-icon tf-icons bx bx-food-menu"></i>
                                <div class="text-truncate" data-i18n="Users">Static</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="/SWP_Project/couponList" class="menu-link ">
                                        <div class="text-truncate" data-i18n="List">List</div>
                                    </a>
                                </li>

                            </ul>
                        </li>

                    </ul>
                </li>

                <!-- Layouts -->

                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 972px; right: 4px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 641px;"></div></div></ul>
        </aside>

                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page">

                    <!-- Navbar -->
                     <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
                <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                    <i class="bx bx-menu bx-sm"></i>
                </a>
            </div>
            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                <!-- Search -->
                <div class="navbar-nav align-items-center">
                    <div class="nav-item navbar-search-wrapper mb-0">

                    </div>
                </div>
                <!-- /Search -->
                <ul class="navbar-nav flex-row align-items-center ms-auto">


                    <!-- Quick links  -->

                    <!-- Quick links -->


                    <!-- Style Switcher -->

                    <!-- / Style Switcher-->


                    <!-- Notification -->
                    <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                        <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                            <i class="bx bx-bell bx-sm"></i>
                            <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end py-0">
                            <li class="dropdown-menu-header border-bottom">
                                <div class="dropdown-header d-flex align-items-center py-3">
                                    <h5 class="text-body mb-0 me-auto">Notification</h5>
                                    <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Mark all as read" data-bs-original-title="Mark all as read"><i class="bx fs-4 bx-envelope-open"></i></a>
                                </div>
                            </li>
                            <li class="dropdown-notifications-list scrollable-container ps">
                                <ul class="list-group list-group-flush">


                                    <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar">
                                                    <img src="../../assets/img/avatars/2.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="mb-1">New Message ✉️</h6>
                                                <p class="mb-0">You have new message from Natalie</p>
                                                <small class="text-muted">1h ago</small>
                                            </div>
                                            <div class="flex-shrink-0 dropdown-notifications-actions">
                                                <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                            </div>
                                        </div>
                                    </li>






                                </ul>
                                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></li>
                            <li class="dropdown-menu-footer border-top p-3">
                                <button class="btn btn-primary text-uppercase w-100">view all notifications</button>
                            </li>
                        </ul>
                    </li>
                    <!--/ Notification -->
                    <!-- User -->
                    <li class="nav-item navbar-dropdown dropdown-user dropdown">
                        <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                            <div class="avatar avatar-online">
                                <img src="../../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li>
                                <a class="dropdown-item" href="/SWP_Project/userprofile?userid=${sessionScope.accl.id}">
                                    <div class="d-flex">
                                        <div class="flex-shrink-0 me-3">
                                            <div class="avatar avatar-online">
                                                <img src="../../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                            </div>
                                        </div>
                                        <div class="flex-grow-1">
                                            <span class="fw-medium d-block">${sessionScope.accl.username}</span>
                                            <small class="text-muted">${sessionScope.accl.role.roleName}</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <div class="dropdown-divider"></div>
                            </li>
                            <li>
                                <a class="dropdown-item" href="/SWP_Project/userprofile?userid=${sessionScope.accl.id}">
                                    <i class="bx bx-user me-2"></i>
                                    <span class="align-middle">My Profile</span>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="pages-account-settings-account.html">
                                    <i class="bx bx-cog me-2"></i>
                                    <span class="align-middle">Settings</span>
                                </a>
                            </li>

                            <li>
                                <div class="dropdown-divider"></div>
                            </li>

                            <li>
                                <div class="dropdown-divider"></div>
                            </li>
                            <li>
                                <a class="dropdown-item" href="Logout" target="_blank">
                                    <i class="bx bx-power-off me-2"></i>
                                    <span class="align-middle">Log Out</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!--/ User -->


                </ul>
            </div>


            <!-- Search Small Screens -->



        </nav>
                    <!-- / Navbar -->
                    <!-- / Navbar -->

                    <!-- Content wrapper -->
                    <div class="content-wrapper" >
                        <!-- Content -->
                        <div class="card" >
                            <div class="card-header border-bottom" style="background: blanchedalmond;">
                                <div class="d-flex justify-content-between align-items-center row py-3 gap-3 gap-md-0">
                                    <h4 class="py-3 mb-4">
                                        <span class="text-muted fw-light">Attach Coupon / List /</span> Search
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
                                                                <td class="action-width">
                                                                    <form action="attachCoupon" method="post">                                 
                                                                        <button type="submit" name="poid" value="${poEntry.productOptionId}">Attach</button>                                       
                                                                    </form>
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
