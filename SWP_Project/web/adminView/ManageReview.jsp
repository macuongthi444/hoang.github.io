<%-- 
    Document   : Manage review
    Created on : 12-03-2024, 23:31:21
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

        <title>Manage Review</title>

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
        <script src="/SWP_Project/assets/vendor/js/helpers.js">
        </script>
        <script src="/SWP_Project/assets/js/config.js">
        </script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js">
        </script>
        <script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js">
        </script>
        <script>
            $(document).ready(function () {
                $("#exportButton").click(function () {
                    $('#dataTable').DataTable().buttons().excelHtml5();
                });
            });
        </script> 
        <script src="js/main.js">
        </script>
    </head>
    <body>

        <div class="layout-wrapper layout-content-navbar">
            <div class="layout-container">
                <jsp:include page="HeaderAdmin.jsp" />
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page" style="padding: 50px;">

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>
                    <!-- / Navbar -->
                    <div class="content-wrapper">

                        <!-- Content -->

                        <div class="container-xxl flex-grow-1 container-p-y">



                            <h4 class="py-3 mb-4">
                                <span class="text-muted fw-light">eCommerce / </span>Manage reviews
                            </h4>

                            <div class="row mb-4 g-4">
                                <div class="col-md-6">
                                    <div class="card h-100">
                                        <div class="card-body row widget-separator">
                                            <div class="col-sm-5 border-shift border-end">
                                                <h2 class="text-primary">4.89<i class="bx bxs-star mb-2 ms-1">
                                                    </i>
                                                </h2>
                                                <p class="fw-medium mb-1">Total 187 reviews</p>
                                                <p class="text-muted">All reviews are from genuine customers</p>
                                                <span class="badge bg-label-primary p-2 mb-3 mb-sm-0">+5 This week</span>
                                                <hr class="d-sm-none">
                                            </div>

                                            <div class="col-sm-7 gy-1 text-nowrap d-flex flex-column justify-content-between ps-4 gap-2 pe-3">
                                                <div class="d-flex align-items-center gap-3">
                                                    <small>5 Star</small>
                                                    <div class="progress w-100" style="height:10px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="61.50" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <small class="w-px-20 text-end">124</small>
                                                </div>
                                                <div class="d-flex align-items-center gap-3">
                                                    <small>4 Star</small>
                                                    <div class="progress w-100" style="height:10px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="24" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <small class="w-px-20 text-end">40</small>
                                                </div>
                                                <div class="d-flex align-items-center gap-3">
                                                    <small>3 Star</small>
                                                    <div class="progress w-100" style="height:10px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 15%" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <small class="w-px-20 text-end">12</small>
                                                </div>
                                                <div class="d-flex align-items-center gap-3">
                                                    <small>2 Star</small>
                                                    <div class="progress w-100" style="height:10px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 10%" aria-valuenow="7" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <small class="w-px-20 text-end">7</small>
                                                </div>
                                                <div class="d-flex align-items-center gap-3">
                                                    <small>1 Star</small>
                                                    <div class="progress w-100" style="height:10px;">
                                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 5%" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                    <small class="w-px-20 text-end">2</small>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- review List Table -->
                            <div class="card">
                                <div class="card-datatable table-responsive">
                                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                                        <div class="card-header d-flex align-items-md-center pb-md-2 flex-wrap">
                                            <div class="me-5 ms-n2">
                                                <div id="DataTables_Table_0_filter" class="dataTables_filter">
                                                    <label>
                                                        <input type="search" class="form-control" placeholder="Search Review" aria-controls="DataTables_Table_0">
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-end align-items-md-center justify-content-md-end pt-0 gap-3 flex-wrap">
                                                <div class="dataTables_length mt-0 mt-md-3" id="DataTables_Table_0_length">
                                                    <label>
                                                        <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-select">
                                                            <option value="10">10</option>
                                                            <option value="25">25</option>
                                                            <option value="50">50</option>
                                                            <option value="100">100</option>
                                                        </select>
                                                    </label>
                                                </div>
                                                <div class="review_filter">
                                                    <select id="Review" class="form-select">
                                                        <option value=""> All </option>
                                                        <option value="Pending" class="text-capitalize">Pending</option>
                                                        <option value="Published" class="text-capitalize">Published</option>
                                                    </select>
                                                </div>
                                                <div class="mx-0 me-md-n3 mt-sm-0">
                                                    <div class="dt-buttons btn-group flex-wrap">
                                                        <div class="btn-group">
                                                            <button class="btn buttons-collection dropdown-toggle btn-label-secondary me-3" tabindex="0" aria-controls="DataTables_Table_0" type="button" aria-haspopup="dialog" aria-expanded="false">
                                                                <span>
                                                                    <i class="bx bx-export me-1">
                                                                    </i>Export</span>
                                                            </button>
                                                        </div> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <table class="datatables-review table dataTable no-footer dtr-column collapsed" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1180px;">
                                            <thead>
                                                <tr>
                                                    <th class="control sorting_disabled" rowspan="1" colspan="1" style="width: 0px;" aria-label="">
                                                    </th>

                                                    <th class="sorting sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 238px;" aria-label="Product: activate to sort column descending" aria-sort="ascending">Product</th>
                                                    <th class="text-nowrap sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 206px;" aria-label="Reviewer: activate to sort column ascending">Reviewer</th>

                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 384px;" aria-label="Review: activate to sort column ascending">Review</th>
                                                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 384px;" aria-label="Review: activate to sort column ascending">Review</th>

                                                    <th class="sorting dtr-hidden" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 89px; display: none;" aria-label="Date: activate to sort column ascending">Date</th>
                                                    <th class="text-nowrap sorting dtr-hidden" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 78px; display: none;" aria-label="Status: activate to sort column ascending">Status</th>
                                                    <th class="sorting_disabled dtr-hidden" rowspan="1" colspan="1" style="width: 61px; display: none;" aria-label="Actions">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="odd">
                                                    <td class="control" tabindex="0" style="">
                                                    </td>

                                                    <td class="sorting_1">
                                                        <div class="d-flex justify-content-start align-items-center customer-name">
                                                            <div class="avatar-wrapper">
                                                                <div class="avatar me-2 rounded-2 bg-label-secondary">
                                                                    <img src="../../assets/img/ecommerce-images/product-9.png" alt="Product-9" class="rounded-2">
                                                                </div>
                                                            </div>
                                                            <div class="d-flex flex-column">
                                                                <span class="fw-medium text-nowrap">Air Jordan</span>
                                                                <small class="text-muted">Air Jordan is a line of basketball shoes produced by Nike</small>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex justify-content-start align-items-center customer-name">
                                                            <div class="avatar-wrapper">
                                                                <div class="avatar me-2">
                                                                    <img src="../../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle">
                                                                </div>
                                                            </div>
                                                            <div class="d-flex flex-column">
                                                                <a href="app-ecommerce-customer-details-overview.html">
                                                                    <span class="fw-medium">Gisela Leppard</span>
                                                                </a>
                                                                <small class="text-muted text-nowrap">gleppard8@yandex.ru</small>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <div class="read-only-ratings ps-0 mb-2 jq-ry-container" readonly="readonly" style="width: 112px;">


                                                            </div>
                                                        </div>
                                                        <p class="fw-medium mb-1 text-truncate text-capitalize">ut mauris</p>
                                                        <small class="text-break pe-3">Fusce consequat. Nulla nisl. Nunc nisl.</small>
                                                        </div>
                                                    </td>
                                                    <td class="dtr-hidden" style="display: none;">
                                                        <span class="text-nowrap">Apr 20, 2020</span>
                                                    </td>
                                                    <td class="dtr-hidden" style="display: none;">
                                                        <span class="badge bg-label-success" text-capitalized="">Published</span>
                                                    </td>
                                                    <td class="dtr-hidden" style="display: none;">
                                                        <div class="text-xxl-center">
                                                            <div class="dropdown">
                                                                <a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown">
                                                                    <i class="bx bx-dots-vertical-rounded">
                                                                    </i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-end">
                                                                    <a href="javascript:;" class="dropdown-item">Download</a>
                                                                    <a href="javascript:;" class="dropdown-item">Edit</a>
                                                                    <a href="javascript:;" class="dropdown-item">Duplicate</a>
                                                                    <div class="dropdown-divider">
                                                                    </div>
                                                                    <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>


                                            </tbody>
                                        </table>
                                        <div class="row mx-2">
                                            <div class="col-sm-12 col-md-6">
                                                <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to 10 of 100 entries</div>
                                            </div>
                                            <div class="col-sm-12 col-md-6">
                                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                                    <ul class="pagination">
                                                        <li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous">
                                                            <a aria-controls="DataTables_Table_0" aria-disabled="true" role="link" data-dt-idx="previous" tabindex="-1" class="page-link">Previous</a>
                                                        </li>
                                                        <li class="paginate_button page-item active">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" aria-current="page" data-dt-idx="0" tabindex="0" class="page-link">1</a>
                                                        </li>
                                                        <li class="paginate_button page-item ">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a>
                                                        </li>
                                                        <li class="paginate_button page-item ">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="2" tabindex="0" class="page-link">3</a>
                                                        </li>
                                                        <li class="paginate_button page-item ">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="3" tabindex="0" class="page-link">4</a>
                                                        </li>
                                                        <li class="paginate_button page-item ">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="4" tabindex="0" class="page-link">5</a>
                                                        </li>
                                                        <li class="paginate_button page-item disabled" id="DataTables_Table_0_ellipsis">
                                                            <a aria-controls="DataTables_Table_0" aria-disabled="true" role="link" data-dt-idx="ellipsis" tabindex="-1" class="page-link">…</a>
                                                        </li>
                                                        <li class="paginate_button page-item ">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="9" tabindex="0" class="page-link">10</a>
                                                        </li>
                                                        <li class="paginate_button page-item next" id="DataTables_Table_0_next">
                                                            <a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="next" tabindex="0" class="page-link">Next</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="width: 1%;">
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <!-- / Content -->




                        <!-- Footer -->
                        <footer class="content-footer footer bg-footer-theme">
                            <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                                <div class="mb-2 mb-md-0">
                                    © <script>
                                        document.write(new Date().getFullYear())

                                    </script>2024, made with ❤️ by <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                                </div>
                                <div class="d-none d-lg-inline-block">

                                    <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                                    <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                                    <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>


                                    <a href="https://themeselection.com/support/" target="_blank" class="footer-link d-none d-sm-inline-block">Support</a>

                                </div>
                            </div>
                        </footer>
                        <!-- / Footer -->


                        <div class="content-backdrop fade">
                        </div>
                    </div>

                    <!-- Content -->



                </div>
            </div>
            <div class="layout-overlay layout-menu-toggle">
            </div>
        </div>
        <!-- Core JS -->

        <!-- build:js assets/vendor/js/core.js -->
        <script src="/SWP_Project/assets/vendor/libs/jquery/jquery.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/popper/popper.js">
        </script>
        <script src="/SWP_Project/assets/vendor/js/bootstrap.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/hammer/hammer.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/i18n/i18n.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/typeahead-js/typeahead.js">
        </script>
        <script src="/SWP_Project/assets/vendor/js/menu.js">
        </script>
        <!-- endbuild -->
        <!-- Vendors JS -->
        <script src="/SWP_Project/assets/vendor/libs/moment/moment.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/select2/select2.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/cleavejs/cleave.js">
        </script>
        <script src="/SWP_Project/assets/vendor/libs/cleavejs/cleave-phone.js">
        </script>
        <script src="/SWP_Project/assets/js/main.js">
        </script>
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
        <script src="/SWP_Project/assets/js/app-user-list.js">
        </script>

        <script src="assets/vendor/libs/apex-charts/apexcharts.js">
        </script>


        <script src="assets/js/dashboards-analytics.js">
        </script>


        <script async defer src="https://buttons.github.io/buttons.js">
        </script>


    </body>
</html>
