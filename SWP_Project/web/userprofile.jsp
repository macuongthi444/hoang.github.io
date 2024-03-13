

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html
    lang="en"
    class="light-style layout-menu-fixed layout-compact"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="../assets/"
    data-template="vertical-menu-template-free">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title>Account settings - Account | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

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
         <script>
                                            function encodeFullName() {
                                                var fullNameInput = document.getElementById('firstName');
                                                var encodedFullName = encodeURIComponent(fullNameInput.value);
                                                fullNameInput.value = encodedFullName;
                                            }

                                            function decodeFullName() {
                                                var fullNameInput = document.getElementById('firstName');
                                                var decodedFullName = decodeURIComponent(fullNameInput.value);
                                                fullNameInput.value = decodedFullName;
                                            }
                                        </script>
    </head>

    <body>
        <!-- Layout wrapper -->
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
                            <span class="app-brand-text demo menu-text fw-bold ms-2">Sneat</span>
                        </a>

                        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
                            <i class="bx bx-chevron-left bx-sm align-middle"></i>
                        </a>
                    </div>

                    <div class="menu-inner-shadow"></div>

                    <ul class="menu-inner py-1 ps ps--active-y">
                        <!-- Dashboards -->
                        <li class="menu-item active open">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                                <div data-i18n="Dashboards">Dashboards</div>
                                <div class="badge bg-danger rounded-pill ms-auto">10</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/dashboards-crm.html" target="_blank" class="menu-link">
                                        <div data-i18n="CRM">CRM</div>
                                        <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
                                    </a>
                                </li>
                                <li class="menu-item active">
                                    <a href="index.html" class="menu-link">
                                        <div data-i18n="Analytics">Analytics</div>
                                    </a>
                                </li>


                                
                                    <%--<c:if test="${accl.role.roleId==1}"></c:if>--%>
                                <li class="menu-item active open ">
                                    <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                        <i class="menu-icon tf-icons bx bx-user"></i>
                                        <div class="text-truncate" data-i18n="Users">Users</div>
                                    </a>
                                    <ul class="menu-sub active open">
                                        <li class="menu-item active open" >
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

                                <%--<c:if test="${accl.role.roleId==4}"></c:if>--%>
                                <li class="menu-item ">
                                    <a href="javascript:void(0);" class=" menu-toggle menu-link">
                                        <i class="menu-icon tf-icons bx bx-file"></i>
                                        <div class="text-truncate" data-i18n="Users">Post</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="/SWP_Project/PostList" class="menu-link ">
                                                <div class="text-truncate" data-i18n="List">List</div>
                                            </a>
                                        </li>

                                        <li class="menu-item ">
                                            <a href="../SWP_Project/PostDetail?postId=5" class="menu-link ">
                                                <div class="text-truncate" data-i18n="View">View</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item" style="">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <i class="menu-icon tf-icons bx bx-cart-alt"></i>
                                        <div class="text-truncate" data-i18n="eCommerce">Product</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="../SWP_Project/AdminShowAllProducts" class="menu-link">
                                                <div class="text-truncate" data-i18n="Dashboard">Product List</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="/SWP_Project/AddProduct" class="menu-link">
                                                <div data-i18n="AddProduct">Add product</div>
                                            </a>
                                        </li>               
                                        <!--                                        <li class="menu-item">
                                                                                    <a href="app-ecommerce-manage-reviews.html" class="menu-link">
                                                                                        <div class="text-truncate" data-i18n="Manage Reviews">Manage Reviews</div>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="menu-item">
                                                                                    <a href="app-ecommerce-referral.html" class="menu-link">
                                                                                        <div class="text-truncate" data-i18n="Referrals">Referrals</div>
                                                                                    </a>
                                                                                </li>-->

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
                                        <li class="menu-item ">
                                            <a href="/SWP_Project/attachCoupon" class="menu-link ">
                                                <div class="text-truncate" data-i18n="View">Attach Coupon</div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                            </ul>
                        </li>

                        <!-- Layouts -->

                        <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 972px; right: 4px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 641px;"></div></div></ul>
                </aside>



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

                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y">
                            <h4 class="py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> Account</h4>

                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="nav nav-pills flex-column flex-md-row mb-3">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-user me-1"></i> Account</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="pages-account-settings-notifications.html"
                                               ><i class="bx bx-bell me-1"></i> Notifications</a
                                            >
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="pages-account-settings-connections.html"
                                               ><i class="bx bx-link-alt me-1"></i> Connections</a
                                            >
                                        </li>
                                    </ul>
                                    <div class="card mb-4">
                                        <h5 class="card-header">Profile Details</h5>
                                        <!-- Account -->
                                        <div class="card-body">
                                            <div class="d-flex align-items-start align-items-sm-center gap-4">
                                                <img class="d-flex mr-3 z-depth-1" src="https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg"
                                                    alt="user-avatar"
                                                    class="d-block rounded"
                                                    height="100"
                                                    width="100"
                                                    id="uploadedAvatar" />
                                                <!--                                                <div class="button-wrapper">
                                                                                                    <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                                                                                        <span class="d-none d-sm-block">Upload new photo</span>
                                                                                                        <i class="bx bx-upload d-block d-sm-none"></i>
                                                                                                        <input
                                                                                                            type="file"
                                                                                                            id="upload"
                                                                                                            class="account-file-input"
                                                                                                            hidden
                                                                                                            accept="image/png, image/jpeg" />
                                                                                                    </label>
                                                                                                    <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                                                                                        <i class="bx bx-reset d-block d-sm-none"></i>
                                                                                                        <span class="d-none d-sm-block">Reset</span>
                                                                                                    </button>
                                                
                                                                                                    <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                                                                                                </div>-->
                                            </div>
                                        </div>
                                        <hr class="my-0" />
                                       

                                        ${error}
                                        <div class="card-body">
                                            <form action="edituser">
                                                <div class="row">

                                                    <div class="mb-3 col-md-6">

                                                        <label for="firstName" class="form-label">Full Name</label>
                                                        <input
                                                            class="form-control"
                                                            type="text"
                                                            id="firstName"
                                                            name="firstName"
                                                            value="${acc.fullName}"
                                                            
                                                            > </i>
                                                    </div>
                                                    <div class="mb-3 col-md-6">
                                                        <label for="lastName" class="form-label">Birth Date</label>
                                                        <input class="form-control" type="date" name="birth" id="date" value="${acc.birthDate}" />
                                                    </div>
                                                    <div class="mb-3 col-md-6">
                                                        <label for="email" class="form-label">E-mail</label>
                                                        <input
                                                            class="form-control"
                                                            type="text"
                                                            id="email"
                                                            name="email"
                                                            value="${acc.getAccount().email}"
                                                            placeholder="john.doe@example.com" readonly=""/>
                                                    </div>
                                                    <div class="mb-3 col-md-6">
                                                        <label  class="form-label">Gender</label><br>
                                                        <label for="organizationMale">Male</label>
                                                        <input 
                                                            type="radio"
                                                            class="radio"
                                                            id="organizationMale"
                                                            name="gender"
                                                            value="Male"
                                                            <c:if test="${acc.gender == true}">
                                                                checked="checked"
                                                            </c:if>
                                                            />

                                                        <label for="organizationFemale">Female</label>
                                                        <input 
                                                            type="radio"
                                                            class="radio"
                                                            id="organizationFemale"
                                                            name="gender"
                                                            value="Female"
                                                            <c:if test="${acc.gender == false}">
                                                                checked="checked"
                                                            </c:if>
                                                            />





                                                    </div>
                                                    <div class="mt-2">
                                                        <button type="submit" class="btn btn-primary me-2" name="userid" value="${sessionScope.acc.id}">Save changes</button>
                                                        <button type="reset" class="btn btn-outline-secondary"><a href="home">Cancle</a></button>
                                                    </div>

                                                </div>
                                            </form>
                                            <!-- /Account -->
                                        </div>

                                    </div>
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
            <!-- / Layout wrapper -->

            <div class="buy-now">
                <a
                    href="https://themeselection.com/item/sneat-bootstrap-html-admin-template/"
                    target="_blank"
                    class="btn btn-danger btn-buy-now"
                    >Upgrade to Pro</a
                >
            </div>

            <!-- Core JS -->
            <!-- build:js assets/vendor/js/core.js -->

            <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/popper/popper.js"></script>
            <script src="/SWP_Project/assets/vendor/js/bootstrap.js"></script>
            <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
            <script src="/SWP_Project/assets/vendor/js/menu.js"></script>

            <!-- endbuild -->

            <!-- Vendors JS -->

            <!-- Main JS -->
            <script src="/SWP_Project/assets/js/main.js"></script>

            <!-- Page JS -->
            <script src="/SWP_Project/assets/js/pages-account-settings-account.js"></script>

            <!-- Place this tag in your head or just before your close body tag. -->
            <script async defer src="https://buttons.github.io/buttons.js"></script>
    </body>




