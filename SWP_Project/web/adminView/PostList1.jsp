<%-- 
    Document   : PostList
    Created on : 13-02-2024, 09:45:29
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
                    <div class="content-wrapper">

                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y" data-select2-id="9">



                            <h4 class="py-3 mb-4"><span class="text-muted fw-light">Post/</span> Post List</h4>

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
                                            <h5 class="mb-1">Post</h5>
                                            <p class="text-muted mb-0">Total ${fn:length(post)} post </p>
                                        </div>
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

                                            </div>
                                        </form>
                                        
                                            <div class="offcanvas-header">
                                                <a href="/SWP_Project/AddPost"><button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasAddUser">
                                                        <span>
                                                            <i class="bx bx-plus me-0 me-sm-1"></i>
                                                            <span class="d-none d-sm-inline-block">Add Post</span></span></button></a>


                                            </div>
                                       
                                    </div>
                                    <div class="card-body">
                                        <div class="row gy-4 mb-4">
                                            <c:forEach items="${requestScope.pByt}" var="p">
                                                <div class="col-sm-6 col-lg-4">

                                                    <div class="card p-2 h-100 shadow-none border">
                                                        <div class="rounded-2 text-center mb-3">

                                                            <a href="../SWP_Project/PostDetail?postId=${p.postId}">
                                                                <img class="img-fluid" style="width: 50%" src="${p.postImg}" alt="Img${p.postId}"></a>
                                                        </div>
                                                        <div class="card-body p-3 pt-2">
                                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                                <span class="badge bg-label-primary">${p.postTypeID.postTypeDetail}</span>

                                                            </div>
                                                            <a href="../SWP_Project/PostDetail?postId=${p.postId}" class="h5">${p.postTitle}</a>

                                                            <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>Start: ${p.postStart}</p>
                                                            <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>End: ${p.postEnd}</p>

                                                            <div class="d-flex flex-column flex-md-row gap-2 text-nowrap pe-xl-3 pe-xxl-0">
                                                                <h5>${p.postByUserMarketing.username}</h5>
                                                                <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="../SWP_Project/PostDetail?postId=${p.postId}">
                                                                    <span class="me-2">Continue</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </c:forEach>




                                        </div>
                                        <nav aria-label="Page navigation" class="d-flex align-items-center justify-content-center">
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
                                        </nav>
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
