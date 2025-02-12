<%-- 
   Document   : Cart
   Created on : 12-01-2024, 10:59:52
   Author     : hoang
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Fruitables - Vegetable Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <style >
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            /* Firefox */
            input[type=number] {
                -moz-appearance: textfield;
            }

            .search-form{
                margin: 15px 0 30px 30px;
            }

            .search-form label{
                font-size: 22px;
            }
        </style>
    </head>

    <body>
        <div class="layout-wrapper layout-content-navbar">
            <div class="layout-container">
                <jsp:include page="../adminView/HeaderAdmin.jsp.jsp" />
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page" style="padding: 50px;">

                    <!-- Navbar -->
                    <jsp:include page="../adminView/Narbar.jsp"/>



                    <div class="content-wrapper">
                        <div class="col app-email-view flex-grow-0 bg-body" id="app-email-view">
                            <div class="app-email-view-header p-3 py-md-3 py-2 rounded-0">


                                <hr class="app-email-view-hr mx-n3 mb-2">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex align-items-center">
                                        <i class="bx bx-trash-alt cursor-pointer me-3 fs-4" data-bs-toggle="sidebar" data-target="#app-email-view">
                                        </i>
                                        <i class="bx bx-envelope fs-4 cursor-pointer me-3">
                                        </i>
                                        <div class="dropdown">
                                            <button class="btn p-0" type="button" id="dropdownMenuFolderTwo" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="bx bx-folder fs-4 me-3">
                                                </i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuFolderTwo">
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="bx bx-error-circle me-1">
                                                    </i>
                                                    <span class="align-middle">Spam</span>
                                                </a>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="bx bx-edit me-1">
                                                    </i>
                                                    <span class="align-middle">Draft</span>
                                                </a>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="bx bx-trash-alt me-1">
                                                    </i>
                                                    <span class="align-middle">Trash</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="dropdown">
                                            <button class="btn p-0" type="button" id="dropdownLabelTwo" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="bx bx-label fs-4 me-3">
                                                </i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownLabelTwo">
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="badge badge-dot bg-success me-1">
                                                    </i>
                                                    <span class="align-middle">Workshop</span>
                                                </a>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="badge badge-dot bg-primary me-1">
                                                    </i>
                                                    <span class="align-middle">Company</span>
                                                </a>
                                                <a class="dropdown-item" href="javascript:void(0)">
                                                    <i class="badge badge-dot bg-warning me-1">
                                                    </i>
                                                    <span class="align-middle">Important</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center flex-wrap justify-content-end">
                                        <span class="d-sm-block d-none mx-3 text-muted">1-10 of 653</span>
                                        <i class="bx bx-chevron-left scaleX-n1-rtl cursor-pointer text-muted me-4 fs-4">
                                        </i>
                                        <i class="bx bx-chevron-right scaleX-n1-rtl cursor-pointer fs-4">
                                        </i>
                                    </div>
                                </div>
                            </div>
                            <hr class="m-0">
                            <!-- Email View : Content-->
                            <div class="app-email-view-content py-4 ps ps--active-y">
                                <p class="email-earlier-msgs text-center text-muted cursor-pointer mb-5">1 Earlier Message</p>
                                <!-- Email View : Previous mails-->
                                <div class="card email-card-prev mx-sm-4 mx-3 border">
                                    <div class="card-header d-flex justify-content-between align-items-center flex-wrap">
                                        <div class="d-flex align-items-center mb-sm-0 mb-3" style="font-size: 20px;">
                                            <div>
                                                <img src="img/${account.accountProfile.avatar}" alt="user-avatar" class="flex-shrink-0  me-2" style="height:80px; width:80px;">
                                                <h6 class="m-0"></h6>
                                            </div>
                                            <div class="flex-grow-1 ms-1 d-grid" style="font-size: 20px;">
                                                <small class="">${contact.phoneNumber}</small>
                                                <small class="">${contact.email}</small>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center" style="font-size: 20px; color: black;">
                                            <p class="mb-0 me-3 "><%--June 20th 2020, 08:30 AM--%>${contact.contactDate}</p>
                                        </div>
                                    </div>
                                    <div class="card-body" style="font-size: 22px;">
                                        <p>
                                            ${contact.content}
                                        </p>
                                        <hr>
                                        <p style="font-size: 18px;" class="mb-2">Attach Images</p>
                                        <div class="">
                                            <c:forEach items="${contact.imageList}" var="image">
                                                <img src="img/${image}" width="100px" height="100px" alt="alt"/>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <!-- Email View : Last mail-->

                                <!-- Email View : Reply mail-->
                                <form action="ContactDetail" id="ReplyContactForm" method="post">
                                    <div class="email-reply card mt-4 mx-sm-4 mx-3 border">
                                        <h6 class="card-header border-0" style="font-size: 18px;">Reply to ${contact.account.accountProfile==null?"this user":contact.account.accountProfile.fullName}</h6>
                                        <div class="card-body pt-0 px-3">
                                            <div class="d-flex justify-content-start">
                                                <div class="email-reply-toolbar border-0 w-100 ps-0 ql-toolbar ql-snow">

                                                </div>
                                            </div>
                                            <div class="email-reply-editor ql-container ql-snow">
                                                <div class="ql-tooltip ql-hidden">
                                                    <a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank">
                                                    </a>
                                                    <textarea id="replyContent" name="replyContent" style="font-size: 20px; width: 100%;" rows="13" cols="150"></textarea>
                                                    <a class="ql-action">
                                                    </a>
                                                    <a class="ql-remove">
                                                    </a>
                                                </div>
                                            </div>
                                            <input type="hidden" value="${contact.contactId}" name="contactId"/>
                                            <div class="d-flex justify-content-end align-items-center">
                                                <div class="cursor-pointer me-3">
                                                    <i class="bx bx-paperclip">
                                                    </i>
                                                    <span class="align-middle">Attachments:&nbsp;&nbsp;&nbsp;<input type="file" name="images" multiple="on"/></span>
                                                </div>
                                                <button class="btn btn-primary" onclick="submitReplyContent()">
                                                    <i class="bx bx-paper-plane me-1">
                                                    </i>
                                                    <span class="align-middle">Send</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div></div></div></div>
        <script type="text/javascript">
            function submitReplyContent() {
                if (${replyContact!=null}) {
                    alert("${replyContact}");
                }

                var replyContent = document.getElementById("replyContent").value.trim();
                if (replyContent === "") {
                    alert("please write reply content to reply");
                    return;
                }
                document.getElementById("ReplyContactForm").submit();
                //                $.ajax({
                //                   url: "/SWP_Project/ReplyContact",
                //                   type: 'POST',
                //                   data: {
                //                       ""
                //                       "replyContent" : replyContent.value.trim()
                //                   },
                //                   success: function(data){
                //                       
                //                   }
                //                });
            }
        </script>
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

</body>

</html>
