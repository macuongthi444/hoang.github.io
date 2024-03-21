<%-- 
    Document   : Narbar
    Created on : 13-03-2024, 11:35:44
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </body>
</html>
