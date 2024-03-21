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
                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" data-bg-class="bg-menu-theme">
                    <div class="app-brand demo">
                        <a href="adminView/Dashboards.jsp" class="app-brand-link">
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
                <div class="layout-page" >

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