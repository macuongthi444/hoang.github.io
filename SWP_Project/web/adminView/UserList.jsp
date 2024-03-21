<%-- 
    Document   : UserList
    Created on : 20-01-2024, 16:39:59
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

        <title>User List</title>

        <meta name="description" content="" />

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
                    <div class="row g-4 mb-4" style="padding-top:35px;">
                        <div class="col-sm-6 col-xl-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-start justify-content-between">
                                        <div class="content-left">
                                            <span>Total Users</span>
                                            <div class="d-flex align-items-end mt-2">

                                                <h4 class="mb-0 me-2">${fn:length(a)}</h4>

                                            </div>
                                            <p class="mb-0"></p>
                                        </div>
                                        <div class="avatar">
                                            <span class="avatar-initial rounded bg-label-primary">
                                                <a href="/SWP_Project/UserList"> <i class="bx bx-user bx-sm"></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--                        <div class="col-sm-6 col-xl-3">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="d-flex align-items-start justify-content-between">
                                                                <div class="content-left">
                                                                    <span>User Ban</span>
                                                                    <div class="d-flex align-items-end mt-2">
                                                                        <h4 class="mb-0 me-2">${fn:length(aStatus)}</h4>
                        
                                                                    </div>
                                                                    <p class="mb-0"> </p>
                                                                </div>
                                                                <div class="avatar">
                                                                    <span class="avatar-initial rounded bg-label-danger">
                                                                        <a href="../SWP_Project/UserList?UserRole=&Status=Ban"><i class="bx bx-user-check bx-sm" style="color: red" ></i></a>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                        <!--  <div class="col-sm-6 col-xl-3" >
                              <div class="card">
                                  <div class="card-body">
                                      <div class="d-flex align-items-start justify-content-between">
                                          <div class="content-left">
                                              <span>User Inactive</span>
                                              <div class="d-flex align-items-end mt-2">
                                                  <h4 class="mb-0 me-2">${fn:length(a)}</h4>
                                                  
                                              </div>
                                              <p class="mb-0"></p>
                                          </div>
                                          <div class="avatar">
                                              <span class="avatar-initial rounded bg-label-success">
                                                  <i class="bx bx-group bx-sm"></i>
                                              </span>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-sm-6 col-xl-3">
                              <div class="card">
                                  <div class="card-body">
                                      <div class="d-flex align-items-start justify-content-between">
                                          <div class="content-left">
                                              <span>User Ban</span>
                                              <div class="d-flex align-items-end mt-2">
                                                  <h4 class="mb-0 me-2">${fn:length(a)}</h4>
                                                  
                                              </div>
                                              <p class="mb-0"></p>
                                          </div>
                                          <div class="avatar">
                                              <span class="avatar-initial rounded bg-label-warning">
                                                  <i class="bx bx-user-voice bx-sm"></i>
                                              </span>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>-->
                    </div>
                    <form action="UserList" method="get">                        
                        <div class="card-header border-bottom">
                            <h5 class="card-title">Search Filter</h5>
                            <div class="d-flex justify-content align-items-center row py-3 gap-3 gap-md-0">
                                <div class="col-md-4 user_role">
                                    <select name="UserRole" id="UserRole" class="form-select text-capitalize">

                                        <option value="">Select Role</option>
                                        <c:forEach items="${requestScope.r}" var="r">

                                            <option value="${r.roleName}">${r.roleName}</option>

                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-md-4 user_status">
                                    <select id="FilterTransaction" name="Status" class="form-select text-capitalize">

                                        <option value=""> Select Status </option>

                                        <c:forEach items="${requestScope.s}" var="s">

                                            <option value="${s.accountStatusDetail}" class="text-capitalize">${s.accountStatusDetail}</option>

                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-4"><button class="search-input">
                                        <span>Search</span>
                                    </button></div>
                            </div>

                        </div>


                    </form>
                    <!-- Content -->

                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer" style="margin: auto;">
                        <div class="row mx-2">
                            <div class="col-md-10">
                                <div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-end flex-md-row flex-column mb-3 mb-md-0">
                                    <form action="SearchName" method="get">
                                        <!--                                    <div id="DataTables_Table_0_filter" class="dataTables_filter">
                                                                                <label>
                                                                                    <input name="txt" class="form-control" placeholder="Search.." aria-controls="DataTables_Table_0">
                                                                                    <button  type="submit" ><i class="search-input-wrapper fa-search">search</i></button>
                                                                                    
                                                                                </label>
                                                                            </div>-->
                                    </form>
                                    <div class="dt-buttons"> 
                                        <button id="exportButton" class="dt-button buttons-collection dropdown-toggle btn btn-label-secondary mx-3"   >
                                            <span>Export</span>
                                        </button>

                                        <button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0" 
                                                type="button" <%--data-bs-toggle="offcanvas"--%> data-bs-target="#offcanvasAddUser"><span><i class="bx bx-plus me-0 me-sm-1"></i>
                                                <span class="d-none d-sm-inline-block"><a style="color: white;" href="/SWP_Project/AddNewUser"> Add New User </a></span></span></button>
                                        <!-- <button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasAddUser"><span><i class="bx bx-plus me-0 me-sm-1"></i><span class="d-none d-sm-inline-block">Add New User</span></span></button> -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <table id="dataTable" class="datatables-users table border-top dataTable no-footer dtr-column" style="display: contents;" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1380px;">
                            <thead>
                                <tr>
                                    <th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label=""></th>
                                    <th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 350px;" aria-label="User: activate to sort column ascending" aria-sort="descending">User</th>
                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 175px;" aria-label="Role: activate to sort column ascending">Role</th>
                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 117px;" aria-label="Plan: activate to sort column ascending">Password</th>
                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 114px;" aria-label="Status: activate to sort column ascending">Status</th>
                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 143px;" aria-label="Actions">Actions</th></tr>
                            </thead>


                            <tbody>

                                <c:forEach items="${requestScope.listpage}" var="a">
                                    <tr class="odd" >
                                        <td class="control dtr-hidden" tabindex="0" style="display: none;"></td>
                                        <td class="sorting_1"><div class="d-flex justify-content-start align-items-center user-name">
                                                <div class="avatar-wrapper"><div class="avatar avatar-sm me-3">
                                                        <img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column"><a href="../SWP_Project/UserDetail?id=${a.id}" class="text-body text-truncate">

                                                        <span class="fw-medium">${a.username}</span></a>
                                                    <small class="text-muted">${a.email}</small>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <span class="text-truncate d-flex align-items-center">
                                                <c:if test="${a.role.roleId==1}">
                                                    <span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 me-2">
                                                        <i class="bx bx-mobile-alt bx-xs"></i>
                                                    </span>
                                                </c:if>
                                                <c:if test="${a.role.roleId==3}">
                                                    <span class="badge badge-center rounded-pill bg-label-warning w-px-30 h-px-30 me-2">
                                                        <i class="bx bx-user bx-xs"></i>
                                                    </span>
                                                </c:if>
                                                <c:if test="${a.role.roleId==4}">
                                                    <span class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30 me-2">
                                                        <i class="bx bx-edit bx-xs"></i>
                                                    </span>
                                                </c:if>
                                                <c:if test="${a.role.roleId==5}">
                                                    <span class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2">
                                                        <i class="bx bx-pie-chart-alt bx-xs"></i>
                                                    </span>
                                                </c:if>



                                            </span>

                                            <span>
                                                ${a.role.roleName}</span></td>
                                        <td><span class="fw-medium " >${a.password}</span></td>

                                        <td >
                                            <c:if test="${a.accountStatus.accountStatusId==5}">
                                                <span class="badge bg-label-success">${a.accountStatus.accountStatusDetail}</span>
                                            </c:if>
                                            <c:if test="${a.accountStatus.accountStatusId==6}">
                                                <span class="badge bg-label-danger">${a.accountStatus.accountStatusDetail}</span>
                                            </c:if>
                                            <c:if test="${a.accountStatus.accountStatusId==7}">
                                                <span class="badge bg-label-secondary">${a.accountStatus.accountStatusDetail}</span>
                                            </c:if>
                                        </td>
                                        <td class="" style="">
                                            <div class="d-inline-block text-nowrap">

<!--                                                <a href=href="../SWP_Project/UserDetail?id=${a.id}" class="btn btn-primary me-3" data-bs-target="#editUser" data-bs-toggle="modal">
                                                    <i class="bx bx-edit"></i></a>-->

                                                <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                                    <i class="bx bx-dots-vertical-rounded me-2"></i></button>

                                                <div class="dropdown-menu dropdown-menu-end m-0">
                                                    <a href="../SWP_Project/UserDetail?id=${a.id}" class="bx bx-edit">View</a>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                        <div class="row mx-2">
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing ${fn:length(listpage)} of ${requestScope.size} entries</div></div>
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                    <ul class="pagination"><li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous">
                                            <c:set var="page" value="${requestScope}"/>

                                            <c:forEach begin="${1}" end="${requestScope.num}" var="i">

                                            <li class="paginate_button page-item ">
                                                <a href="UserList?UserRole=${role}&Status=${status}&page=${i}" aria-controls="DataTables_Table_0" role="link" data-dt-idx="1" tabindex="0" class="page-link">${i}</a>
                                            </li>

                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="offcanvas offcanvas-end " tabindex="-1" id="offcanvasAddUser" aria-labelledby="offcanvasAddUserLabel" aria-modal="true" role="dialog">
                            <div class="offcanvas-header">
                                <h5 id="offcanvasAddUserLabel" class="offcanvas-title">Add User</h5>
                                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                            </div>

                            <div class="offcanvas-body mx-0 flex-grow-0">
                                <form action="AddUser" method="post" class="add-new-user pt-0 fv-plugins-bootstrap5 fv-plugins-framework" id="addNewUserForm"  novalidate="novalidate">
                                    <div class="mb-3 fv-plugins-icon-container">
                                        <label class="form-label" for="add-user-fullname">User Name</label>
                                        <input type="text" class="form-control" id="add-user-fullname" placeholder="John Doe" name="userName" aria-label="John Doe">
                                        <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>                                     
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label" for="add-user-contact">Password</label>
                                        <input type="text" id="add-user-contact" class="form-control phone-mask" placeholder="" aria-label="" name="password">
                                    </div>



                                    <div class="mb-3">
                                        <label class="form-label" for="user-role">User Role</label>
                                        <select id="user-role" name="Role" class="form-select">
                                            <c:forEach items="${requestScope.r}" var="r">
                                                <option value="${r.roleId}">${r.roleName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Submit</button>
                                    <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="offcanvas">Cancel</button>
                                    <input type="hidden"></form>
                            </div>
                        </div>
                        <!--                        <div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true">
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






                <button type="submit"  class="btn btn-primary me-sm-3 me-1" value="Submit">Submit</button>

                <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="modal" aria-label="Close">Cancel</button>



            </form>
        </div>
    </div>
</div>
</div>-->
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


    </body>
</html>

