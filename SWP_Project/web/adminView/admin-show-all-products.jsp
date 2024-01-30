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
        
        
        <link rel="stylesheet" href="css/style.css" />
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

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink">
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"></path>
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
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
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

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboards -->
            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Dashboards">Dashboards</div>
                <div class="badge bg-danger rounded-pill ms-auto">10</div>
              </a>
              <ul class="menu-sub">
<!--                <li class="menu-item">
                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/dashboards-crm.html"
                    target="_blank"
                    class="menu-link">
                    <div data-i18n="CRM">CRM</div>
                    <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
                  </a>
                </li>-->
                <li class="menu-item active">
                  <a href="index.html" class="menu-link">
                    <div data-i18n="Analytics">Analytics</div>
                  </a>
                </li>
                <li class="menu-item active">
                    <a href="/SWP_Project/AdminShowAllProducts" class="menu-link">
                        <div data-li8n="ShowAllProducts">Show all products</div>
                    </a>
                </li>
                <li class="menu-item active">
                  <a href="/SWP_Project/AddProduct" class="menu-link">
                    <div data-i18n="AddProduct">Add product</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Layouts -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-layout"></i>
                <div data-i18n="Layouts">Layouts</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="layouts-without-menu.html" class="menu-link">
                    <div data-i18n="Without menu">Without menu</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-without-navbar.html" class="menu-link">
                    <div data-i18n="Without navbar">Without navbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-container.html" class="menu-link">
                    <div data-i18n="Container">Container</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-fluid.html" class="menu-link">
                    <div data-i18n="Fluid">Fluid</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="layouts-blank.html" class="menu-link">
                    <div data-i18n="Blank">Blank</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Front Pages -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-store"></i>
                <div data-i18n="Front Pages">Front Pages</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/front-pages/landing-page.html"
                    class="menu-link"
                    target="_blank">
                    <div data-i18n="Landing">Landing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/front-pages/pricing-page.html"
                    class="menu-link"
                    target="_blank">
                    <div data-i18n="Pricing">Pricing</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/front-pages/payment-page.html"
                    class="menu-link"
                    target="_blank">
                    <div data-i18n="Payment">Payment</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/front-pages/checkout-page.html"
                    class="menu-link"
                    target="_blank">
                    <div data-i18n="Checkout">Checkout</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a
                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/front-pages/help-center-landing.html"
                    class="menu-link"
                    target="_blank">
                    <div data-i18n="Help Center">Help Center</div>
                  </a>
                </li>
              </ul>
            </li>

            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">Apps &amp; Pages</span>
            </li>
            <!-- Apps -->
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/app-email.html"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-envelope"></i>
                <div data-i18n="Email">Email</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
            </li>
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/app-chat.html"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-chat"></i>
                <div data-i18n="Chat">Chat</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
            </li>
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/app-calendar.html"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-calendar"></i>
                <div data-i18n="Calendar">Calendar</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
            </li>
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/app-kanban.html"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-grid"></i>
                <div data-i18n="Kanban">Kanban</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
            </li>
            <!-- Pages -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">Account Settings</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="pages-account-settings-account.html" class="menu-link">
                    <div data-i18n="Account">Account</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="pages-account-settings-notifications.html" class="menu-link">
                    <div data-i18n="Notifications">Notifications</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="pages-account-settings-connections.html" class="menu-link">
                    <div data-i18n="Connections">Connections</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">Authentications</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="auth-login-basic.html" class="menu-link" target="_blank">
                    <div data-i18n="Basic">Login</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="auth-register-basic.html" class="menu-link" target="_blank">
                    <div data-i18n="Basic">Register</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="auth-forgot-password-basic.html" class="menu-link" target="_blank">
                    <div data-i18n="Basic">Forgot Password</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                <div data-i18n="Misc">Misc</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="pages-misc-error.html" class="menu-link">
                    <div data-i18n="Error">Error</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="pages-misc-under-maintenance.html" class="menu-link">
                    <div data-i18n="Under Maintenance">Under Maintenance</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Components -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Components</span></li>
            <!-- Cards -->
            <li class="menu-item">
              <a href="cards-basic.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">Cards</div>
              </a>
            </li>
            <!-- User interface -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-box"></i>
                <div data-i18n="User interface">User interface</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="ui-accordion.html" class="menu-link">
                    <div data-i18n="Accordion">Accordion</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-alerts.html" class="menu-link">
                    <div data-i18n="Alerts">Alerts</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-badges.html" class="menu-link">
                    <div data-i18n="Badges">Badges</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-buttons.html" class="menu-link">
                    <div data-i18n="Buttons">Buttons</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-carousel.html" class="menu-link">
                    <div data-i18n="Carousel">Carousel</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-collapse.html" class="menu-link">
                    <div data-i18n="Collapse">Collapse</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-dropdowns.html" class="menu-link">
                    <div data-i18n="Dropdowns">Dropdowns</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-footer.html" class="menu-link">
                    <div data-i18n="Footer">Footer</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-list-groups.html" class="menu-link">
                    <div data-i18n="List Groups">List groups</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-modals.html" class="menu-link">
                    <div data-i18n="Modals">Modals</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-navbar.html" class="menu-link">
                    <div data-i18n="Navbar">Navbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-offcanvas.html" class="menu-link">
                    <div data-i18n="Offcanvas">Offcanvas</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-pagination-breadcrumbs.html" class="menu-link">
                    <div data-i18n="Pagination &amp; Breadcrumbs">Pagination &amp; Breadcrumbs</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-progress.html" class="menu-link">
                    <div data-i18n="Progress">Progress</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-spinners.html" class="menu-link">
                    <div data-i18n="Spinners">Spinners</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-tabs-pills.html" class="menu-link">
                    <div data-i18n="Tabs &amp; Pills">Tabs &amp; Pills</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-toasts.html" class="menu-link">
                    <div data-i18n="Toasts">Toasts</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-tooltips-popovers.html" class="menu-link">
                    <div data-i18n="Tooltips & Popovers">Tooltips &amp; popovers</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="ui-typography.html" class="menu-link">
                    <div data-i18n="Typography">Typography</div>
                  </a>
                </li>
              </ul>
            </li>

            <!-- Extended components -->
            <li class="menu-item">
              <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-copy"></i>
                <div data-i18n="Extended UI">Extended UI</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="extended-ui-perfect-scrollbar.html" class="menu-link">
                    <div data-i18n="Perfect Scrollbar">Perfect scrollbar</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="extended-ui-text-divider.html" class="menu-link">
                    <div data-i18n="Text Divider">Text Divider</div>
                  </a>
                </li>
              </ul>
            </li>

            <li class="menu-item">
              <a href="icons-boxicons.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-crown"></i>
                <div data-i18n="Boxicons">Boxicons</div>
              </a>
            </li>

            <!-- Forms & Tables -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Forms &amp; Tables</span></li>
            <!-- Forms -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Elements">Form Elements</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="forms-basic-inputs.html" class="menu-link">
                    <div data-i18n="Basic Inputs">Basic Inputs</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="forms-input-groups.html" class="menu-link">
                    <div data-i18n="Input groups">Input groups</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Layouts">Form Layouts</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="form-layouts-vertical.html" class="menu-link">
                    <div data-i18n="Vertical Form">Vertical Form</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="form-layouts-horizontal.html" class="menu-link">
                    <div data-i18n="Horizontal Form">Horizontal Form</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Form Validation -->
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/form-validation.html"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-list-check"></i>
                <div data-i18n="Form Validation">Form Validation</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
            </li>
            <!-- Tables -->
            <li class="menu-item">
              <a href="tables-basic.html" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="Tables">Tables</div>
              </a>
            </li>
            <!-- Data Tables -->
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/html/vertical-menu-template/tables-datatables-basic.html"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-grid"></i>
                <div data-i18n="Datatables">Datatables</div>
                <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div>
              </a>
            </li>
            <!-- Misc -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Misc</span></li>
            <li class="menu-item">
              <a
                href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-support"></i>
                <div data-i18n="Support">Support</div>
              </a>
            </li>
            <li class="menu-item">
              <a
                href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                target="_blank"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-file"></i>
                <div data-i18n="Documentation">Documentation</div>
              </a>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                  <div class="col-md-12">
                      <form action="AdminShowAllProducts" method="post">
                      <table class="search-table">
                          <tr>
                              <th>
                                Search by: 
                              </th>
                              <th>
                                  <input type="checkbox" id="nameSearch" name="search" value="productName" 
                                         ${sessionScope.searchMap.containsKey("productName")?"checked":""} />
                                  Name
                              </th>
                              <th>
                                  <input type="checkbox" name="search" value="categoryId"
                                         ${sessionScope.searchMap.containsKey("categoryId")?"checked":""}/>
                                  Category
                              </th>
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
                              <th>
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
                              <td></td>
                              <td>
                                <input name="productName" placeholder="Name" style="width: 100px; padding-top: 0px; padding-bottom: 0px;"
                                       value="${sessionScope.searchMap.containsKey("productName")?sessionScope.searchMap.get("productName").get(0):""}"/>
                              </td>
                              <td>
                                <select name="categoryId">
                                    <c:forEach items="<%=CategoryDAO.INSTANCE.getCategoryList()%>" var="category">
                                        <option value="${category.categoryId}" 
                                                ${sessionScope.searchMap.containsKey("categoryId")?(sessionScope.searchMap.get("categoryId").get(0).equals(category.categoryId.toString())?"selected":""):""}
                                                >${category.categoryName}</option>
                                    </c:forEach>
                                </select>
                              </td>
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
                              <td >
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
                  </form>
                  </div>
                <div class="col-md-12 mb-4 order-0">
                  <div class="card">
                      
                      <table class="product-table" >
                          <tr>
                              <th style="width: 7%;">Name</th>
                              <th class="category-width">Category</th>
                              <th class="product-detail-width">Detail</th>
                              <th>
                                  <table style="width: 100%;">
                                      <tr>
                                            <th class="brand-width">Brand</th>
                                            <th class="hardware-width">Hardware</th>
                                            <th class="ram-width">Ram</th>
                                            <th class="color-width">Color</th>
                                            <th class="screen-size-width">Screen size</th>
                                            <th class="resolution-width">Resolution</th>
                                            <th class="graphic-card-width">Graphic card</th>
                                            <th class="price-width">Price</th>
                                            <th class="number-in-stock-width">Number in stock</th>
                                            <th class="quantity-sold-width">Quantity sold</th>
                                            <th class="image-width">Image</th>
                                            <th class="action-width"></th>
                                      </tr>
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
                            <tr>
                                <td style="width: 7%;">${ProductDAO.INSTANCE.getProductById(productEntry).productName} <br/>
                                    <a style="color: green; font-size: 13px; text-decoration: underline;" href="/SWP_Project/AddProductOption?productId=${productEntry}">Add other option</a>
                                </td>
                                <td class="category-width">${ProductDAO.INSTANCE.getProductById(productEntry).category.categoryName}</td>
                                <td class="product-detail-width">${ProductDAO.INSTANCE.getProductById(productEntry).productDetail}</td>
                                <%--<td>${product.coupon==null?"no coupon":coupon}</td> --%>
                                <td style="">
                                    <table  style="width: 100%; height: 90px;">
                                        <%--<c:forEach items="${ProductDAO.INSTANCE.getProductOptionByProductId(productEntry.productId)}" var="poEntry">--%>
                                        <c:forEach items="${productMap.get(productEntry)}" var="poEntry">
                                            <tr>
                                                <td class="brand-width">
                                                    ${ProductDAO.INSTANCE.getBrandById(poEntry.brandId).brandName}
                                                </td>
                                                <td class="hardware-width">
                                                    ${ProductDAO.INSTANCE.getHardwareMemoryById(poEntry.hardwareMemoryId).hardwareMemory}
                                                </td>
                                                <td class="ram-width">
                                                    ${ProductDAO.INSTANCE.getRamMemoryById(poEntry.ramMemoryId).ramMemory}
                                                </td>
                                                <td class="color-width">
                                                    ${ProductDAO.INSTANCE.getColorById(poEntry.colorId).color}
                                                </td>
                                                <td  class="screen-size-width">
                                                    ${ProductDAO.INSTANCE.getScreenSizeById(poEntry.screenSizeId).screenSize}
                                                </td>
                                                <td class="resolution-width">
                                                    ${ProductDAO.INSTANCE.getResolutionById(poEntry.resolutionId).resolution}
                                                </td>        
                                                <td class="graphic-card-width">
                                                    ${ProductDAO.INSTANCE.getGraphicCardById(poEntry.graphicCardId).graphicCard}
                                                </td>
                                                <td class="price-width">
                                                    ${poEntry.price}
                                                </td>
                                                <td class="number-in-stock-width">
                                                    ${poEntry.numberInStock}
                                                </td>
                                                <td class="quantity-sold-width">
                                                    ${poEntry.quantitySold}
                                                </td>
                                                <td class="image-width">
                                                    <c:if test="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId()).size() == 0}">
                                                        No image
                                                    </c:if>
                                                    <c:forEach items="${ProductDAO.INSTANCE.getImageListByProductOptionId(poEntry.getProductOptionId())}" var="image">
                                                        <img src="img/${image.imageText}" width="50px" height="50px" alt="alt"/> 
                                                    </c:forEach>
                                                </td>
                                                
                                                <td class="action-width">
                                                    <a style="color:blue;" href="/SWP_Project/UpdateProduct?productOptionId=${poEntry.productOptionId}">Update</a>
                                                    <%--<a style="color: red;" href="/SWP_Project/DeleteProduct?productOptionId=${poEntry.key.productOptionId}">Delete</a>--%>
                                                    <a style="color: red;" onclick="confirmDeleteProductOption(${poEntry.productOptionId})" href="#">Delete</a>
                                                    &nbsp;
                                                    <%--<a href="/SWP_Project/AddProductOption?productId=${poEntry.key.productOptionId}" style="color: green;">Add option</a>
                                                    --%>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </td>
                            </tr>
                        </c:forEach>
                        
                        <script type="text/javascript">
                            if(${deleteSuccess != null}){
                                alertDeleteSuccess();
                            }
                            if(${updateSuccess != null}){
                                alertUpdateSuccess();
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

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>
