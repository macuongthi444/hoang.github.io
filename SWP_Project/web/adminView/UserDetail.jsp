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
                 <jsp:include page="HeaderAdmin.jsp" />
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page" style="padding: 50px;">

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>
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

