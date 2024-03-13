

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
                <jsp:include page="HeaderAdmin.jsp" />
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page" style="padding: 50px;">

                    <!-- Navbar -->
                    <jsp:include page="Narbar.jsp"/>
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

                                        <button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasAddUser"><span><i class="bx bx-plus me-0 me-sm-1"></i><span class="d-none d-sm-inline-block">Add New User</span></span></button>
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

