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

        <title>Post List</title>

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
        <!-- Page -->
        <link rel="stylesheet" href="/SWP_Project/assets/vendor/css/pages/page-auth.css" />

        <!-- Helpers -->
        <script src="/SWP_Project/assets/vendor/js/helpers.js"></script>
        <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
        <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
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
    </head>
    <body><div hidden="" id="sprite-plyr"><!--?xml version="1.0" encoding="UTF-8"?--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><symbol id="plyr-airplay" viewBox="0 0 18 18"><path d="M16 1H2a1 1 0 00-1 1v10a1 1 0 001 1h3v-2H3V3h12v8h-2v2h3a1 1 0 001-1V2a1 1 0 00-1-1z"></path><path d="M4 17h10l-5-6z"></path></symbol><symbol id="plyr-captions-off" viewBox="0 0 18 18"><path d="M1 1c-.6 0-1 .4-1 1v11c0 .6.4 1 1 1h4.6l2.7 2.7c.2.2.4.3.7.3.3 0 .5-.1.7-.3l2.7-2.7H17c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1H1zm4.52 10.15c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41C8.47 4.96 7.46 3.76 5.5 3.76c-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69zm7.57 0c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41c-.28-1.15-1.29-2.35-3.25-2.35-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69z" fill-rule="evenodd" fill-opacity=".5"></path></symbol><symbol id="plyr-captions-on" viewBox="0 0 18 18"><path d="M1 1c-.6 0-1 .4-1 1v11c0 .6.4 1 1 1h4.6l2.7 2.7c.2.2.4.3.7.3.3 0 .5-.1.7-.3l2.7-2.7H17c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1H1zm4.52 10.15c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41C8.47 4.96 7.46 3.76 5.5 3.76c-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69zm7.57 0c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41c-.28-1.15-1.29-2.35-3.25-2.35-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69z" fill-rule="evenodd"></path></symbol><symbol id="plyr-download" viewBox="0 0 18 18"><path d="M9 13c.3 0 .5-.1.7-.3L15.4 7 14 5.6l-4 4V1H8v8.6l-4-4L2.6 7l5.7 5.7c.2.2.4.3.7.3zm-7 2h14v2H2z"></path></symbol><symbol id="plyr-enter-fullscreen" viewBox="0 0 18 18"><path d="M10 3h3.6l-4 4L11 8.4l4-4V8h2V1h-7zM7 9.6l-4 4V10H1v7h7v-2H4.4l4-4z"></path></symbol><symbol id="plyr-exit-fullscreen" viewBox="0 0 18 18"><path d="M1 12h3.6l-4 4L2 17.4l4-4V17h2v-7H1zM16 .6l-4 4V1h-2v7h7V6h-3.6l4-4z"></path></symbol><symbol id="plyr-fast-forward" viewBox="0 0 18 18"><path d="M7.875 7.171L0 1v16l7.875-6.171V17L18 9 7.875 1z"></path></symbol><symbol id="plyr-logo-vimeo" viewBox="0 0 18 18"><path d="M17 5.3c-.1 1.6-1.2 3.7-3.3 6.4-2.2 2.8-4 4.2-5.5 4.2-.9 0-1.7-.9-2.4-2.6C5 10.9 4.4 6 3 6c-.1 0-.5.3-1.2.8l-.8-1c.8-.7 3.5-3.4 4.7-3.5 1.2-.1 2 .7 2.3 2.5.3 2 .8 6.1 1.8 6.1.9 0 2.5-3.4 2.6-4 .1-.9-.3-1.9-2.3-1.1.8-2.6 2.3-3.8 4.5-3.8 1.7.1 2.5 1.2 2.4 3.3z"></path></symbol><symbol id="plyr-logo-youtube" viewBox="0 0 18 18"><path d="M16.8 5.8c-.2-1.3-.8-2.2-2.2-2.4C12.4 3 9 3 9 3s-3.4 0-5.6.4C2 3.6 1.3 4.5 1.2 5.8 1 7.1 1 9 1 9s0 1.9.2 3.2c.2 1.3.8 2.2 2.2 2.4C5.6 15 9 15 9 15s3.4 0 5.6-.4c1.4-.3 2-1.1 2.2-2.4.2-1.3.2-3.2.2-3.2s0-1.9-.2-3.2zM7 12V6l5 3-5 3z"></path></symbol><symbol id="plyr-muted" viewBox="0 0 18 18"><path d="M12.4 12.5l2.1-2.1 2.1 2.1 1.4-1.4L15.9 9 18 6.9l-1.4-1.4-2.1 2.1-2.1-2.1L11 6.9 13.1 9 11 11.1zM3.786 6.008H.714C.286 6.008 0 6.31 0 6.76v4.512c0 .452.286.752.714.752h3.072l4.071 3.858c.5.3 1.143 0 1.143-.602V2.752c0-.601-.643-.977-1.143-.601L3.786 6.008z"></path></symbol><symbol id="plyr-pause" viewBox="0 0 18 18"><path d="M6 1H3c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h3c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1zm6 0c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h3c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1h-3z"></path></symbol><symbol id="plyr-pip" viewBox="0 0 18 18"><path d="M13.293 3.293L7.022 9.564l1.414 1.414 6.271-6.271L17 7V1h-6z"></path><path d="M13 15H3V5h5V3H2a1 1 0 00-1 1v12a1 1 0 001 1h12a1 1 0 001-1v-6h-2v5z"></path></symbol><symbol id="plyr-play" viewBox="0 0 18 18"><path d="M15.562 8.1L3.87.225c-.818-.562-1.87 0-1.87.9v15.75c0 .9 1.052 1.462 1.87.9L15.563 9.9c.584-.45.584-1.35 0-1.8z"></path></symbol><symbol id="plyr-restart" viewBox="0 0 18 18"><path d="M9.7 1.2l.7 6.4 2.1-2.1c1.9 1.9 1.9 5.1 0 7-.9 1-2.2 1.5-3.5 1.5-1.3 0-2.6-.5-3.5-1.5-1.9-1.9-1.9-5.1 0-7 .6-.6 1.4-1.1 2.3-1.3l-.6-1.9C6 2.6 4.9 3.2 4 4.1 1.3 6.8 1.3 11.2 4 14c1.3 1.3 3.1 2 4.9 2 1.9 0 3.6-.7 4.9-2 2.7-2.7 2.7-7.1 0-9.9L16 1.9l-6.3-.7z"></path></symbol><symbol id="plyr-rewind" viewBox="0 0 18 18"><path d="M10.125 1L0 9l10.125 8v-6.171L18 17V1l-7.875 6.171z"></path></symbol><symbol id="plyr-settings" viewBox="0 0 18 18"><path d="M16.135 7.784a2 2 0 01-1.23-2.969c.322-.536.225-.998-.094-1.316l-.31-.31c-.318-.318-.78-.415-1.316-.094a2 2 0 01-2.969-1.23C10.065 1.258 9.669 1 9.219 1h-.438c-.45 0-.845.258-.997.865a2 2 0 01-2.969 1.23c-.536-.322-.999-.225-1.317.093l-.31.31c-.318.318-.415.781-.093 1.317a2 2 0 01-1.23 2.969C1.26 7.935 1 8.33 1 8.781v.438c0 .45.258.845.865.997a2 2 0 011.23 2.969c-.322.536-.225.998.094 1.316l.31.31c.319.319.782.415 1.316.094a2 2 0 012.969 1.23c.151.607.547.865.997.865h.438c.45 0 .845-.258.997-.865a2 2 0 012.969-1.23c.535.321.997.225 1.316-.094l.31-.31c.318-.318.415-.781.094-1.316a2 2 0 011.23-2.969c.607-.151.865-.547.865-.997v-.438c0-.451-.26-.846-.865-.997zM9 12a3 3 0 110-6 3 3 0 010 6z"></path></symbol><symbol id="plyr-volume" viewBox="0 0 18 18"><path d="M15.6 3.3c-.4-.4-1-.4-1.4 0-.4.4-.4 1 0 1.4C15.4 5.9 16 7.4 16 9c0 1.6-.6 3.1-1.8 4.3-.4.4-.4 1 0 1.4.2.2.5.3.7.3.3 0 .5-.1.7-.3C17.1 13.2 18 11.2 18 9s-.9-4.2-2.4-5.7z"></path><path d="M11.282 5.282a.909.909 0 000 1.316c.735.735.995 1.458.995 2.402 0 .936-.425 1.917-.995 2.487a.909.909 0 000 1.316c.145.145.636.262 1.018.156a.725.725 0 00.298-.156C13.773 11.733 14.13 10.16 14.13 9c0-.17-.002-.34-.011-.51-.053-.992-.319-2.005-1.522-3.208a.909.909 0 00-1.316 0zm-7.496.726H.714C.286 6.008 0 6.31 0 6.76v4.512c0 .452.286.752.714.752h3.072l4.071 3.858c.5.3 1.143 0 1.143-.602V2.752c0-.601-.643-.977-1.143-.601L3.786 6.008z"></path></symbol></svg></div>


        <!-- ?PROD Only: Google Tag Manager (noscript) (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DDHKGP" height="0" width="0" style="display: none; visibility: hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar  ">
            <div class="layout-container">

                <!-- Menu -->

                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" data-bg-class="bg-menu-theme">

                    <div class="menu-inner-shadow"></div>

                    <ul class="menu-inner py-1 ps ps--active-y">
                        <!-- Dashboards -->
                        <jsp:include page="Header.jsp" />

                        <!-- Layouts -->

                        <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 972px; right: 4px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 641px;"></div></div></ul>
                </aside>
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

                            <!-- /Search -->
                            <ul class="navbar-nav flex-row align-items-center ms-auto">
                                <!-- Language -->
                                <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <i class="bx bx-globe bx-sm"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item active" href="javascript:void(0);" data-language="en" data-text-direction="ltr">
                                                <span class="align-middle">English</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-language="fr" data-text-direction="ltr">
                                                <span class="align-middle">French</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-language="ar" data-text-direction="rtl">
                                                <span class="align-middle">Arabic</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-language="de" data-text-direction="ltr">
                                                <span class="align-middle">German</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!-- /Language -->

                                <!-- Quick links  -->
                                <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                        <i class="bx bx-grid-alt bx-sm"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end py-0">
                                        <div class="dropdown-menu-header border-bottom">
                                            <div class="dropdown-header d-flex align-items-center py-3">
                                                <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                                                <a href="javascript:void(0)" class="dropdown-shortcuts-add text-body" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add shortcuts" data-bs-original-title="Add shortcuts"><i class="bx bx-sm bx-plus-circle"></i></a>
                                            </div>
                                        </div>
                                        <div class="dropdown-shortcuts-list scrollable-container ps">
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-calendar fs-4"></i>
                                                    </span>
                                                    <a href="app-calendar.html" class="stretched-link">Calendar</a>
                                                    <small class="text-muted mb-0">Appointments</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-food-menu fs-4"></i>
                                                    </span>
                                                    <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                                                    <small class="text-muted mb-0">Manage Accounts</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-user fs-4"></i>
                                                    </span>
                                                    <a href="app-user-list.html" class="stretched-link">User App</a>
                                                    <small class="text-muted mb-0">Manage Users</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-check-shield fs-4"></i>
                                                    </span>
                                                    <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                                                    <small class="text-muted mb-0">Permission</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-pie-chart-alt-2 fs-4"></i>
                                                    </span>
                                                    <a href="index.html" class="stretched-link">Dashboard</a>
                                                    <small class="text-muted mb-0">User Profile</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-cog fs-4"></i>
                                                    </span>
                                                    <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>
                                                    <small class="text-muted mb-0">Account Settings</small>
                                                </div>
                                            </div>
                                            <div class="row row-bordered overflow-visible g-0">
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-help-circle fs-4"></i>
                                                    </span>
                                                    <a href="pages-faq.html" class="stretched-link">FAQs</a>
                                                    <small class="text-muted mb-0">FAQs &amp; Articles</small>
                                                </div>
                                                <div class="dropdown-shortcuts-item col">
                                                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                                                        <i class="bx bx-window-open fs-4"></i>
                                                    </span>
                                                    <a href="modal-examples.html" class="stretched-link">Modals</a>
                                                    <small class="text-muted mb-0">Useful Popups</small>
                                                </div>
                                            </div>
                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
                                    </div>
                                </li>
                                <!-- Quick links -->


                                <!-- Style Switcher -->
                                <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <i class="bx bx-sm bx-sun"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                                                <span class="align-middle"><i class="bx bx-sun me-2"></i>Light</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                                                <span class="align-middle"><i class="bx bx-moon me-2"></i>Dark</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);" data-theme="system">
                                                <span class="align-middle"><i class="bx bx-desktop me-2"></i>System</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
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



                                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0 me-3">
                                                            <div class="avatar">
                                                                <span class="avatar-initial rounded-circle bg-label-success"><i class="bx bx-cart"></i></span>
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <h6 class="mb-1">Whoo! You have new order 🛒 </h6>
                                                            <p class="mb-0">ACME Inc. made new order $1,154</p>
                                                            <small class="text-muted">1 day ago</small>
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
                                            <a class="dropdown-item" href="pages-account-settings-account.html">
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
                                            <a class="dropdown-item" href="pages-profile-user.html">
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
                                            <a class="dropdown-item" href="pages-account-settings-billing.html">
                                                <span class="d-flex align-items-center align-middle">
                                                    <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                                                    <span class="flex-grow-1 align-middle">Billing</span>
                                                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-faq.html">
                                                <i class="bx bx-help-circle me-2"></i>
                                                <span class="align-middle">FAQ</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="pages-pricing.html">
                                                <i class="bx bx-dollar me-2"></i>
                                                <span class="align-middle">Pricing</span>
                                            </a>
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
                        <div class="navbar-search-wrapper search-input-wrapper d-none">
                            <span class="twitter-typeahead" style="position: relative; display: inline-block;">
                                <input type="text" class="form-control search-input container-xxl border-0 tt-input" placeholder="Search..." aria-label="Search..." autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top;">
                                <pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-size: 15px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre><div class="tt-menu navbar-search-suggestion ps" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;"><div class="tt-dataset tt-dataset-pages"></div><div class="tt-dataset tt-dataset-files"></div><div class="tt-dataset tt-dataset-members"></div><div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div></span>
                            <i class="bx bx-x bx-sm search-toggler cursor-pointer"></i>
                        </div>


                    </nav>


                    <!-- / Navbar -->



                    <!-- Content wrapper -->
                    <div class="content-wrapper">

                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y" data-select2-id="9">



                            <h4 class="py-3 mb-4"><span class="text-muted fw-light">Contact/</span> Contact List</h4>

                            <div class="app-academy" data-select2-id="8">
                                <div class="card p-0 mb-4">
                                    <!--                                    <div class="card-body d-flex flex-column flex-md-row justify-content-between p-0 pt-4">
                                                                            
                                                                            <div class="app-academy-md-50 card-body d-flex align-items-md-center flex-column text-md-center">
                                                                                <div class="d-flex align-items-center justify-content-between app-academy-md-80">
                                                                                    <input type="search" placeholder="Find your course" class="form-control me-2">
                                                                                    <button type="submit" class="btn btn-primary btn-icon"><i class="bx bx-search"></i></button>
                                                                                </div>
                                                                            </div>
                                                                            
                                                                        </div>-->
                                </div>

                                <div class="card mb-4" data-select2-id="7">
                                    <div class="card-header d-flex flex-wrap justify-content-between gap-3" data-select2-id="6">
                                        <div class="card-title mb-0 me-1">
                                            <h5 class="mb-1">Contact</h5>
                                            <p class="text-muted mb-0">Total ${fn:length(contactList)} contact </p>
                                        </div>
                                        <%--
                                        <form action="PostList" method="get">
                                            <div class="d-flex justify-content-md-end align-items-center gap-3 flex-wrap" data-select2-id="5">
                                                <div class="position-relative" data-select2-id="4">
                                                    <select name="type" id="select2_course_select"  class="select2 form-select select2-hidden-accessible" data-placeholder="All Courses" data-select2-id="select2_course_select" tabindex="-1" aria-hidden="true">
                                                        <option value="" data-select2-id="2">All Post</option>                                           
                                                        <c:forEach items="${requestScope.postType}" var="postType">                                               
                                                            <option value="${postType.postTypeDetail}" data-select2-id="11">${postType.postTypeDetail}</option>
                                                        </c:forEach>
                                                    </select>

                                                </div>
                                                <button type="submit" class="btn btn-primary btn-icon"><i class="bx bx-search"></i></button>
                                                    akjshfegskjehfkjsehf
                                            </div>
                                        </form>
                                        --%>    
                                        
                                        <%--
                                        <div class="offcanvas-header">
                                            <a href="adminView/AddPost.jsp"><button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasAddUser">
                                                <span>
                                                    <i class="bx bx-plus me-0 me-sm-1"></i>
                                                    <span class="d-none d-sm-inline-block">Add Post</span></span></button></a>


                                        </div>
                                        --%>
                                    </div>
                                    <div class="card-body">
                                        <div class="row gy-4 mb-4">
                                            <c:forEach items="${requestScope.contactList}" var="contact">
                                                <div class="col-sm-6 col-lg-12">

                                                    <div class="card p-2 h-100 shadow-none border">
                                                        <div class="rounded-2 text-center mb-3">
                                                            <%--
                                                            <a href="../SWP_Project/PostDetail?postId=${contact.contactId}">
                                                                <img class="img-fluid" style="width: 50%" src="img/${contact.imageList.get(0)}" alt=""></a>
                                                            --%>
                                                        </div>
                                                        <div class="card-body p-3 pt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                                <span class="badge bg-label-primary"><%--${p.postTypeID.postTypeDetail}--%></span>
                                                                
                                                            </div>
                                                            <a href="../SWP_Project/PostDetail?postId=" class="h5"></a>
                                                            
                                                            <table style="font-size: 21px;">
                                                                <tr>
                                                                    <td>Contact date: </td>
                                                                    <td>${contact.contactDate}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>User Id:</td>
                                                                    <td>${contact.account.id}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>User name:</td>
                                                                    <td>${contact.account.accountProfile==null?"User":contact.account.accountProfile.fullName}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>User email: </td>
                                                                    <td>${contact.email}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>User phone number: </td>
                                                                    <td>${contact.phoneNumber}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Content: </td>
                                                                    <td style="border: solid 1px black;">${contact.content}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Images: </td> 
                                                                    <td>
                                                                        <c:forEach items="${contact.imageList}" var="image">
                                                                            <img src="img/${image}" width="100px" height="100px" alt="alt" style="border: solid 1px rgba(0, 0, 0, 0.4)"/>
                                                                        </c:forEach>
                                                                    </td>
                                                                </tr>
                                                                <c:set value="${contact.isResponded==true}" var="isResponded"/>
                                                                <c:if test="${isResponded}">
                                                                    <tr>
                                                                        <td>Status: </td>
                                                                        <td>responded</td>
                                                                    </tr>
                                                                    <c:if test="${contact.replyContact != null}">
                                                                        <tr>
                                                                            <td>Reply Date:</td>
                                                                            <td>${contact.replyContact.replyDate}</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                Reply content:
                                                                            </td>
                                                                            <td>
                                                                                ${contact.replyContact.replyContent} <br/>
                                                                                <c:forEach items="${contact.replyContact.imageList}" var="image">
                                                                                    <img src="img/${image}" width="100px" height="100px" alt="alt"/>
                                                                                </c:forEach>
                                                                            </td>
                                                                        </tr>
                                                                    </c:if>
                                                                </c:if>
                                                                <c:if test="${!isResponded}">
                                                                    <tr>
                                                                        <td>Status:</td>
                                                                        <td>Not responded</td>
                                                                    </tr>
                                                                </c:if>
                                                            </table>
                                                            <%--<p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>Contact date: ${contact.contactDate}</p>--%>
                                                            <p class="d-flex align-items-center"></p>
                                                            <div class="d-flex flex-column flex-md-row gap-2 text-nowrap pe-xl-3 pe-xxl-0">
                                                                <h5></h5>
                                                                <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="/SWP_Project/ContactDetail?contactId=${contact.contactId}">
                                                                    <span class="me-2">View detail</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </c:forEach>
                                            <script type="text/javascript">
                                                <c:if test="${contactIdNotFound!=null}">
                                                    alert("${contactIdNotFound}");
                                                     window.location.href = "/SWP_Project/ContactList";
                                                </c:if>
                                                <c:if test="${replySuccess!=null}">
                                                    alert("${replySuccess}");
                                                     window.location.href = "/SWP_Project/ContactList";
                                                </c:if>
                                                    
                                            </script>



                                        </div>
<!--                                        <nav aria-label="Page navigation" class="d-flex align-items-center justify-content-center">
                                            <ul class="pagination">
                                                <li class="page-item prev">
                                                    <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevron-left"></i></a>
                                                </li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="javascript:void(0);">1</a>
                                                </li>

                                                <li class="page-item next">
                                                    <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevron-right"></i></a>
                                                </li>
                                            </ul>
                                        </nav>-->
                                    </div>
                                </div>




                            </div>

                        </div>
                        <!-- / Content -->




                        <!-- Footer -->

                        <!-- / Footer -->


                        <div class="content-backdrop fade"></div>
                    </div>
                    <!-- Content wrapper -->
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
        <script type="text/javascript" id="">console.log("TS:GTM Worked!");</script>      

        <script src="/SWP_Project/assets/js/app-user-list.js"></script>
    </body>
</html>
