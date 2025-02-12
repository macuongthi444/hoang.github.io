<%-- 
    Document   : UserDetail
    Created on : 21-01-2024, 11:16:50
    Author     : hoang
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html
    lang="en"
    class="light-style layout-wide customizer-hide"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="/SWP_Project/assets/"
    data-template="vertical-menu-template-free">

    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title>User View</title>

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
        <link rel="stylesheet" href="/SWP_Project/assets/fonts/boxocons.css" />
        <!-- Vendors CSS -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

        <!-- Page CSS -->
        <!-- Page -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/pages/page-auth.css" />

        <!-- Helpers -->
        <script src="/SWP_Project/assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
        <script src="/SWP_Project/assets/js/config.js"></script>
        <script>
            function updateAndRedirect() {
                // Lưu lại đường dẫn hiện tại
                var currentURL = window.location.href;

                // Thực hiện cập nhật (ở đây là ví dụ)
                // Sau khi cập nhật thành công, chuyển hướng trở lại đường dẫn cũ
                // Thay thế dòng sau này bằng logic thực tế của bạn
                // Ví dụ: 
                // ajaxRequestToUpdateUser();
                // window.location.href = currentURL; // Chuyển hướng trở lại đường dẫn cũ
                alert("Update thành công! Đang chuyển hướng trở lại trang trước...");
                window.location.href = currentURL; // Chuyển hướng trở lại đường dẫn cũ
            }
        </script>
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
                <div class="layout-page" style="padding: 50px;">

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
                    <!-- Content -->

                    <div> 
                        <div class="container-xxl flex-grow-1 container-p-y">


                            <h4 class="py-3 mb-4">
                                <span class="text-muted fw-light">User / View /</span> Account
                            </h4>
                            <div class="row">
                                <!-- User Sidebar -->
                                <div class="col-xl-4 col-lg-5 col-md-5 order-1 order-md-0">
                                    <!-- User Card -->


                                    <div class="card mb-4">

                                        <div class="card-body">
                                            <div class="user-avatar-section">
                                                <div class=" d-flex align-items-center flex-column">
                                                    <img class="img-fluid rounded my-4" src="../../assets/img/avatars/10.png" height="110" width="110" alt="User avatar">
                                                    <div class="user-info text-center">
                                                        <h4 class="mb-2">${ap.fullName}</h4>

                                                        <span class="badge bg-label-secondary">${ap.account.role.roleName}</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-around flex-wrap my-4 py-3">
                                                <div class="d-flex align-items-start me-4 mt-3 gap-3">
                                                    <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-check bx-sm"></i></span>
                                                    <div>
                                                        <h5 class="mb-0"></h5>
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-start mt-3 gap-3">
                                                    <span class="badge bg-label-primary p-2 rounded"><i class="bx bx-customize bx-sm"></i></span>
                                                    <div>
                                                        <h5 class="mb-0"></h5>
                                                        <span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <h5 class="pb-2 border-bottom mb-4">Details</h5>
                                            <div class="info-container">
                                                <ul class="list-unstyled">

                                                    <li class="mb-3">
                                                        <span class="fw-medium me-2">Username:</span>
                                                        <span>${ap.account.username}</span>
                                                    </li>
                                                    <li class="mb-3">
                                                        <span class="fw-medium me-2">Email:</span>
                                                        <span>${ap.account.email}</span>
                                                    </li>
                                                    <li class="mb-3">
                                                        <span class="fw-medium me-2">Status:</span>
                                                        <c:if test="${ap.account.accountStatus.accountStatusId==5}">
                                                            <span class="badge bg-label-success">${ap.account.accountStatus.accountStatusDetail}</span>
                                                        </c:if>
                                                        <c:if test="${ap.account.accountStatus.accountStatusId==6}">
                                                            <span class="badge bg-label-danger">${ap.account.accountStatus.accountStatusDetail}</span>
                                                        </c:if>
                                                        <c:if test="${ap.account.accountStatus.accountStatusId==7}">
                                                            <span class="badge bg-label-secondary">${ap.account.accountStatus.accountStatusDetail}</span>
                                                        </c:if>




                                                    </li>
                                                    <li class="mb-3">
                                                        <span class="fw-medium me-2">Role:</span>
                                                        <span>${ap.account.role.roleName}</span>
                                                    </li>
                                                    <li class="mb-3">
                                                        <span class="fw-medium me-2">Birth Date:</span>
                                                        <span>${ap.birthDate}</span>
                                                    </li>
                                                    <li class="mb-3">
                                                        <span class="fw-medium me-2">Gender:</span>

                                                        <c:if test="${ap.gender==true}">
                                                            <span>Female</span>
                                                        </c:if>
                                                        <c:if test="${ap.gender==false}">
                                                            <span>Male</span>
                                                        </c:if>

                                                    </li>
                                                </ul>

                                                <div class="d-flex justify-content-center pt-3">
                                                    <a href="javascript:;" class="btn btn-primary me-3" data-bs-target="#editUser"  data-bs-toggle="modal" >Edit</a>

                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <!-- /User Card -->

                                </div>
                                <!--/ User Sidebar -->


                                <!-- User Content -->
                                <div class="col-xl-8 col-lg-7 col-md-7 order-0 order-md-1">
                                    <!-- User Pills -->
                                    <!--                                    <ul class="nav nav-pills flex-column flex-md-row mb-3">
                                                                            <li class="nav-item"><a class="nav-link active" href="javascript:void(0);"><i class="bx bx-user me-1"></i>Account</a></li>
                                                                            <li class="nav-item"><a class="nav-link" href="app-user-view-security.html"><i class="bx bx-lock-alt me-1"></i>Security</a></li>
                                                                            <li class="nav-item"><a class="nav-link" href="app-user-view-billing.html"><i class="bx bx-detail me-1"></i>Billing &amp; Plans</a></li>
                                                                            <li class="nav-item"><a class="nav-link" href="app-user-view-notifications.html"><i class="bx bx-bell me-1"></i>Notifications</a></li>
                                                                            <li class="nav-item"><a class="nav-link" href="app-user-view-connections.html"><i class="bx bx-link-alt me-1"></i>Connections</a></li>
                                                                        </ul>-->
                                    <!--/ User Pills -->

                                    <!-- Project table -->
                                    <!--                                    <div class="card mb-4">
                                                                            <h5 class="card-header">User's Projects List</h5>
                                                                            <div class="table-responsive mb-3">
                                                                                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer"><div class="d-flex justify-content-between align-items-center flex-column flex-sm-row mx-4 row"><div class="col-sm-4 col-12 d-flex align-items-center justify-content-sm-start justify-content-center"><div class="dataTables_length" id="DataTables_Table_0_length"><label>Show <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-select"><option value="7">7</option><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="75">75</option><option value="100">100</option></select></label></div></div><div class="col-sm-8 col-12 d-flex align-items-center justify-content-sm-end justify-content-center"><div id="DataTables_Table_0_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control" placeholder="Search Project" aria-controls="DataTables_Table_0"></label></div></div></div><table class="table datatable-project border-top dataTable no-footer dtr-column" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 867px;">
                                                                                        <thead>
                                                                                            <tr><th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label=""></th><th class="sorting_disabled dt-checkboxes-cell dt-checkboxes-select-all" rowspan="1" colspan="1" style="width: 18px;" data-col="1" aria-label=""><input type="checkbox" class="form-check-input"></th><th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 302px;" aria-label="Project: activate to sort column ascending" aria-sort="descending">Project</th><th class="text-nowrap sorting_disabled" rowspan="1" colspan="1" style="width: 127px;" aria-label="Total Task">Total Task</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 118px;" aria-label="Progress: activate to sort column ascending">Progress</th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 90px;" aria-label="Hours">Hours</th></tr>
                                                                                        </thead><tbody><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/vue-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Vue Admin template</span><small class="text-muted">Vuejs Project</small></div></div></td><td>214/627</td><td><div class="d-flex flex-column"><small class="mb-1">78%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-success" style="width: 78%" aria-valuenow="78%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>88:19h</td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/event-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Online Webinar</span><small class="text-muted">Official Event</small></div></div></td><td>12/20</td><td><div class="d-flex flex-column"><small class="mb-1">69%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-info" style="width: 69%" aria-valuenow="69%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>12:12h</td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/html-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Hoffman Website</span><small class="text-muted">HTML Project</small></div></div></td><td>56/183</td><td><div class="d-flex flex-column"><small class="mb-1">43%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-warning" style="width: 43%" aria-valuenow="43%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>76h</td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/sketch-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Foodista mobile app</span><small class="text-muted">iPhone Project</small></div></div></td><td>12/86</td><td><div class="d-flex flex-column"><small class="mb-1">49%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-warning" style="width: 49%" aria-valuenow="49%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>45h</td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/xd-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Falcon Logo Design</span><small class="text-muted">UI/UX Project</small></div></div></td><td>9/50</td><td><div class="d-flex flex-column"><small class="mb-1">15%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-danger" style="width: 15%" aria-valuenow="15%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>89h</td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/react-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Dojo React Project</span><small class="text-muted">React Project</small></div></div></td><td>234/378</td><td><div class="d-flex flex-column"><small class="mb-1">73%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-info" style="width: 73%" aria-valuenow="73%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>67:10h</td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="  dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/icons/brands/vue-label.png" alt="Project Image" class="rounded-circle"></div></div><div class="d-flex flex-column"><span class="text-truncate fw-medium">Dashboard Design</span><small class="text-muted">Vuejs Project</small></div></div></td><td>100/190</td><td><div class="d-flex flex-column"><small class="mb-1">90%</small><div class="progress w-100 me-3" style="height: 6px;"><div class="progress-bar bg-success" style="width: 90%" aria-valuenow="90%" aria-valuemin="0" aria-valuemax="100"></div></div></div></td><td>129:45h</td></tr></tbody>
                                                                                    </table><div class="d-flex justify-content-between mx-4 row"><div class="col-sm-12 col-md-6"><div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to 7 of 11 entries</div></div><div class="col-sm-12 col-md-6"><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a aria-controls="DataTables_Table_0" aria-disabled="true" role="link" data-dt-idx="previous" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0" role="link" aria-current="page" data-dt-idx="0" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="next" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                                                                            </div>
                                                                        </div>-->
                                    <!-- /Project table -->

                                    <!-- Activity Timeline -->
                                    <!--                                    <div class="card mb-4">
                                                                            <h5 class="card-header">User Activity Timeline</h5>
                                                                            <div class="card-body">
                                                                                <ul class="timeline">
                                                                                    <li class="timeline-item timeline-item-transparent">
                                                                                        <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-primary"></span></span>
                                                                                        <div class="timeline-event">
                                                                                            <div class="timeline-header mb-1">
                                                                                                <h6 class="mb-0">12 Invoices have been paid</h6>
                                                                                                <small class="text-muted">12 min ago</small>
                                                                                            </div>
                                                                                            <p class="mb-2">Invoices have been paid to the company</p>
                                                                                            <div class="d-flex">
                                                                                                <a href="javascript:void(0)" class="me-3">
                                                                                                    <img src="../../assets/img/icons/misc/pdf.png" alt="PDF image" width="15" class="me-2">
                                                                                                    <span class="fw-medium text-body">invoices.pdf</span>
                                                                                                </a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </li>
                                                                                    <li class="timeline-item timeline-item-transparent">
                                                                                        <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-warning"></span></span>
                                                                                        <div class="timeline-event">
                                                                                            <div class="timeline-header mb-1">
                                                                                                <h6 class="mb-0">Client Meeting</h6>
                                                                                                <small class="text-muted">45 min ago</small>
                                                                                            </div>
                                                                                            <p class="mb-2">Project meeting with john @10:15am</p>
                                                                                            <div class="d-flex flex-wrap">
                                                                                                <div class="avatar me-3">
                                                                                                    <img src="../../assets/img/avatars/3.png" alt="Avatar" class="rounded-circle">
                                                                                                </div>
                                                                                                <div>
                                                                                                    <h6 class="mb-0">Lester McCarthy (Client)</h6>
                                                                                                    <span class="text-muted">CEO of ThemeSelection</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </li>
                                                                                    <li class="timeline-item timeline-item-transparent">
                                                                                        <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-info"></span></span>
                                                                                        <div class="timeline-event">
                                                                                            <div class="timeline-header mb-1">
                                                                                                <h6 class="mb-0">Create a new project for client</h6>
                                                                                                <small class="text-muted">2 Day Ago</small>
                                                                                            </div>
                                                                                            <p class="mb-2">5 team members in a project</p>
                                                                                            <div class="d-flex align-items-center avatar-group">
                                                                                                <div class="avatar pull-up" data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" aria-label="Vinnie Mostowy" data-bs-original-title="Vinnie Mostowy">
                                                                                                    <img src="../../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
                                                                                                </div>
                                                                                                <div class="avatar pull-up" data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" aria-label="Marrie Patty" data-bs-original-title="Marrie Patty">
                                                                                                    <img src="../../assets/img/avatars/12.png" alt="Avatar" class="rounded-circle">
                                                                                                </div>
                                                                                                <div class="avatar pull-up" data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" aria-label="Jimmy Jackson" data-bs-original-title="Jimmy Jackson">
                                                                                                    <img src="../../assets/img/avatars/9.png" alt="Avatar" class="rounded-circle">
                                                                                                </div>
                                                                                                <div class="avatar pull-up" data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" aria-label="Kristine Gill" data-bs-original-title="Kristine Gill">
                                                                                                    <img src="../../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle">
                                                                                                </div>
                                                                                                <div class="avatar pull-up" data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" aria-label="Nelson Wilson" data-bs-original-title="Nelson Wilson">
                                                                                                    <img src="../../assets/img/avatars/14.png" alt="Avatar" class="rounded-circle">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </li>
                                                                                    <li class="timeline-item timeline-item-transparent">
                                                                                        <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-success"></span></span>
                                                                                        <div class="timeline-event">
                                                                                            <div class="timeline-header mb-1">
                                                                                                <h6 class="mb-0">Design Review</h6>
                                                                                                <small class="text-muted">5 days Ago</small>
                                                                                            </div>
                                                                                            <p class="mb-0">Weekly review of freshly prepared design for our new app.</p>
                                                                                        </div>
                                                                                    </li>
                                                                                    <li class="timeline-end-indicator">
                                                                                        <i class="bx bx-check-circle"></i>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>-->
                                    <!-- /Activity Timeline -->

                                    <!-- Invoice table -->
                                    <!--                                    <div class="card mb-4">
                                                                            <div class="table-responsive mb-3">
                                                                                <div id="DataTables_Table_1_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer"><div class="row mx-4"><div class="col-sm-6 col-12 d-flex align-items-center justify-content-center justify-content-sm-start mb-3 mb-md-0"><div class="dataTables_length" id="DataTables_Table_1_length"><label><select name="DataTables_Table_1_length" aria-controls="DataTables_Table_1" class="form-select"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select></label></div></div><div class="col-sm-6 col-12 d-flex align-items-center justify-content-center justify-content-sm-end"><div class="dt-buttons"><button class="dt-button buttons-collection dropdown-toggle btn btn-label-secondary float-sm-end mb-3 mb-sm-0" tabindex="0" aria-controls="DataTables_Table_1" type="button" aria-haspopup="dialog" aria-expanded="false"><span><i class="bx bx-upload me-2"></i>Export</span><span class="dt-down-arrow">▼</span></button> </div></div></div><table class="table datatable-invoice border-top dataTable no-footer dtr-column" id="DataTables_Table_1" aria-describedby="DataTables_Table_1_info" style="width: 868px;">
                                                                                        <thead>
                                                                                            <tr><th class="control sorting dtr-hidden" tabindex="0" aria-controls="DataTables_Table_1" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label=": activate to sort column ascending"></th><th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_1" rowspan="1" colspan="1" style="width: 105px;" aria-label="ID: activate to sort column ascending" aria-sort="descending">ID</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_1" rowspan="1" colspan="1" style="width: 76px;" aria-label=": activate to sort column ascending"><i class="bx bx-trending-up"></i></th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_1" rowspan="1" colspan="1" style="width: 108px;" aria-label="Total: activate to sort column ascending">Total</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_1" rowspan="1" colspan="1" style="width: 188px;" aria-label="Issued Date: activate to sort column ascending">Issued Date</th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 167px;" aria-label="Actions">Actions</th></tr>
                                                                                        </thead><tbody><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5089</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 05/09/2020</span>" data-bs-original-title="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 05/09/2020</span>"><span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 "><i class="bx bx-mail-send bx-xs"></i></span></span></td><td>$3077</td><td>05/02/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5041</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 11/19/2020</span>" data-bs-original-title="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 11/19/2020</span>"><span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 "><i class="bx bx-mail-send bx-xs"></i></span></span></td><td>$2230</td><td>02/01/2021</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5027</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/25/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/25/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td>$2787</td><td>09/28/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5024</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> -$202<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/02/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> -$202<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/02/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td>$5285</td><td>06/30/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5020</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 12/15/2020</span>" data-bs-original-title="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 12/15/2020</span>"><span class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30"><i class="bx bx-down-arrow-circle bx-xs"></i></span></span></td><td>$5219</td><td>07/17/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4995</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 06/09/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 06/09/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td>$3313</td><td>08/21/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4993</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 10/22/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 10/22/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td>$4836</td><td>07/10/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4989</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Past Due<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/01/2020</span>" data-bs-original-title="<span>Past Due<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/01/2020</span>"><span class="badge badge-center rounded-pill bg-label-danger w-px-30 h-px-30"><i class="bx bx-info-circle bx-xs"></i></span></span></td><td>$5293</td><td>07/30/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4989</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/23/2020</span>" data-bs-original-title="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/23/2020</span>"><span class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30"><i class="bx bx-down-arrow-circle bx-xs"></i></span></span></td><td>$3623</td><td>12/01/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4965</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> $666<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 03/18/2021</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> $666<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 03/18/2021</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td>$3789</td><td>09/27/2020</td><td><div class="d-flex align-items-center"><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-paper-plane mx-1"></i></a><a href="app-invoice-preview.html" class="text-body" data-bs-toggle="tooltip" aria-label="Preview" data-bs-original-title="Preview"><i class="bx bx-show-alt mx-1"></i></a><a href="javascript:;" class="text-body" data-bs-toggle="tooltip" aria-label="Download" data-bs-original-title="Download"><i class="bx bx-download mx-1"></i></a></div></td></tr></tbody>
                                                                                    </table><div class="row mx-4"><div class="col-md-12 col-lg-6 text-center text-lg-start pb-md-2 pb-lg-0"><div class="dataTables_info" id="DataTables_Table_1_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div></div><div class="col-md-12 col-lg-6 d-flex justify-content-center justify-content-lg-end"><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_1_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="DataTables_Table_1_previous"><a aria-controls="DataTables_Table_1" aria-disabled="true" role="link" data-dt-idx="previous" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_1" role="link" aria-current="page" data-dt-idx="0" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_1" role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_1" role="link" data-dt-idx="2" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_1" role="link" data-dt-idx="3" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_1" role="link" data-dt-idx="4" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item next" id="DataTables_Table_1_next"><a href="#" aria-controls="DataTables_Table_1" role="link" data-dt-idx="next" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                                                                            </div>
                                                                        </div>-->
                                    <!-- /Invoice table -->
                                </div>
                                <!--/ User Content -->
                            </div>

                            <!-- Modal -->
                            <!-- Edit User Modal -->

                            <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true">
                                <div class="modal-dialog modal-lg modal-simple modal-edit-user">
                                    <div class="modal-content p-3 p-md-5">
                                        <div class="modal-body">
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            <div class="text-center mb-4">
                                                <h3>Edit User Information</h3>
                                                <p>Updating user details will receive a privacy audit.</p>
                                            </div>
                                            <form action="UpdateUserDetail" method="post" id="editUserForm" class="row g-3 fv-plugins-bootstrap5 fv-plugins-framework"  novalidate="novalidate">
                                                <input type="hidden" name="id" value="${ap.account.id}">
                                                <div class="col-12 col-md-6">
                                                    <label class="form-label" for="roleName">Role: ${ap.account.role.roleName}</label>
                                                    <select id="modalEditUserStatus" name="roleName" class="form-select" aria-label="Default select example">
                                                        <c:forEach items="${requestScope.r}" var="r">

                                                            <option value="${r.roleId}">${r.roleName}</option>

                                                        </c:forEach>                                                         
                                                    </select>
                                                </div>
                                                <div class="col-12 col-md-6">
                                                    <label class="form-label" for="modalEditUserStatus">Status: ${ap.account.accountStatus.accountStatusDetail}</label>
                                                    <select id="modalEditUserStatus" name="accountStatusDetail" class="form-select" aria-label="Default select example">
                                                        <c:forEach items="${requestScope.s}" var="s">

                                                            <option value="${s.accountStatusId}">${s.accountStatusDetail}</option>

                                                        </c:forEach>
                                                    </select>
                                                </div>






                                                <button type="submit"  class="btn btn-primary me-sm-3 me-1"  onclick="updateAndRedirect()" value="Submit">Submit</button>

                                                <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="modal" aria-label="Close">Cancel</button>



                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ Edit User Modal -->

                            <!-- Add New Credit Card Modal -->
                            <!--                            <div class="modal fade" id="upgradePlanModal" tabindex="-1" aria-hidden="true">
                                                            <div class="modal-dialog modal-dialog-centered modal-simple modal-upgrade-plan">
                                                                <div class="modal-content p-3 p-md-5">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                        <div class="text-center mb-4">
                                                                            <h3>Upgrade Plan</h3>
                                                                            <p>Choose the best plan for user.</p>
                                                                        </div>
                                                                        <form id="upgradePlanForm" class="row g-3" onsubmit="return false">
                                                                            <div class="col-sm-9">
                                                                                <label class="form-label" for="choosePlan">Choose Plan</label>
                                                                                <select id="choosePlan" name="choosePlan" class="form-select" aria-label="Choose Plan">
                                                                                    <option selected="">Choose Plan</option>
                                                                                    <option value="standard">Standard - $99/month</option>
                                                                                    <option value="exclusive">Exclusive - $249/month</option>
                                                                                    <option value="Enterprise">Enterprise - $499/month</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-sm-3 d-flex align-items-end">
                                                                                <button type="submit" class="btn btn-primary">Upgrade</button>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <hr class="mx-md-n5 mx-n3">
                                                                    <div class="modal-body">
                                                                        <h6 class="mb-0">User current plan is standard plan</h6>
                                                                        <div class="d-flex justify-content-between align-items-center flex-wrap">
                                                                            <div class="d-flex justify-content-center me-2 mt-3">
                                                                                <sup class="h5 pricing-currency pt-1 mt-3 mb-0 me-1 text-primary">$</sup>
                                                                                <h1 class="display-3 mb-0 text-primary">99</h1>
                                                                                <sub class="h5 pricing-duration mt-auto mb-2">/month</sub>
                                                                            </div>
                                                                            <button class="btn btn-label-danger cancel-subscription mt-3">Cancel Subscription</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>-->
                            <!--/ Add New Credit Card Modal -->

                            <!-- /Modal -->
                        </div>
                    </div>
                </div>
                <div class="layout-overlay layout-menu-toggle"></div>
            </div>
            <!-- Core JS -->
            <!-- build:js assets/vendor/js/core.js -->
            <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/popper/popper.js"></script>
            <script src="/SWP_Project/assets/vendor/js/bootstrap.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/hammer/hammer.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/i18n/i18n.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/typeahead-js/typeahead.js"></script>
            <script src="/SWP_Project/assets/vendor/js/menu.js"></script>
            <script type="text/javascript" id="">console.log("TS:GTM Worked!");</script>
            <script type="text/javascript" id="">(function (b, c, d) {
                    var a = b.createElement("script");
                    a.type = "text/javascript";
                    a.src = "https://a.omappapi.com/app/js/api.min.js";
                    a.async = !0;
                    a.dataset.user = c;
                    a.dataset.account = d;
                    b.getElementsByTagName("head")[0].appendChild(a)
                })(document, 252882, 269977);</script>
            <script src="/SWP_Project/assets/vendor/libs/moment/moment.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/cleavejs/cleave.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/cleavejs/cleave-phone.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/select2/select2.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
            <script src="/SWP_Project/assets/js/main.js"></script>
            <script src="/SWP_Project/assets/js/modal-edit-user.js"></script>
            <script src="/SWP_Project/assets/js/app-user-view.js"></script>
            <script src="/SWP_Project/assets/js/app-user-view-account.js"></script>

    </body>
</html>

