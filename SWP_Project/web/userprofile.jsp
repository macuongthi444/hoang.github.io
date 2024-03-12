

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




                <!-- Layout container -->
                <div class="layout-page">
                    <!-- Navbar -->

                    <nav
                        class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                        id="layout-navbar">
                        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                                <i class="bx bx-menu bx-sm"></i>
                            </a>
                        </div>

                        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                            <!-- Search -->

                            <!-- /Search -->

                            <ul class="navbar-nav flex-row align-items-center ms-auto">
                                <!-- Place this tag where you want the button to render. -->
                                <li class="nav-item lh-1 me-3">
                                    <a
                                        class="github-button"
                                        href="https://github.com/themeselection/sneat-html-admin-template-free"
                                        data-icon="octicon-star"
                                        data-size="large"
                                        data-show-count="true"
                                        aria-label="Star themeselection/sneat-html-admin-template-free on GitHub"
                                        >Star</a
                                    >
                                </li>

                                <!-- User -->
                                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar avatar-online">
                                                            <img src="../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <span class="fw-medium d-block">John Doe</span>
                                                        <small class="text-muted">Admin</small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <i class="bx bx-user me-2"></i>
                                                <span class="align-middle">My Profile</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <i class="bx bx-cog me-2"></i>
                                                <span class="align-middle">Settings</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <span class="d-flex align-items-center align-middle">
                                                    <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                                                    <span class="flex-grow-1 align-middle ms-1">Billing</span>
                                                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0);">
                                                <i class="bx bx-power-off me-2"></i>
                                                <span class="align-middle">Log Out</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ User -->
                            </ul>
                        </div>
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




