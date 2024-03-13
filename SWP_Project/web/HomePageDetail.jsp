<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Laptop ${detail.productName}</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet>

              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="./css/style.css" rel="stylesheet">
        <!--            <link rel="stylesheet" href="./css/style_1.css" />-->
        <script src="js/main_1.js" defer></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
            .filter {
                background-color: #f7f7f7;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 20px;
                text-align: center;
                display: flex;
                justify-content: center;
                max-width: 600px; /* Điều chỉnh độ rộng của phần filter tùy theo ý muốn */
                margin: 0 auto; /* Để căn giữa phần filter */
            }

            .filter form {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .filter label {
                font-weight: bold;
            }

            .filter select {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #fff;
            }

            .filter input[type="submit"] {
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                cursor: pointer;
            }

            .filter input[type="submit"]:hover {
                background-color: #0056b3;
            }

            .rating-box {
                position: relative;
                background: #fff;
                padding: 25px 50px 35px;
                border-radius: 25px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.05);
            }
            .rating-box header {
                font-size: 22px;
                color: #dadada;
                font-weight: 500;
                margin-bottom: 20px;
                text-align: center;
            }
            .rating-box .stars {
                display: flex;
                align-items: center;
                gap: 25px;
            }
            .stars i {
                color: black;
                font-size: 20px;
                cursor: pointer;
                transition: color 0.2s ease;
            }
            .stars i.active {
                color: #ff9c1a;
            }

        </style>
        <!--        <script> $(document).ready(function () {
                        $(".fa-star").click(function () {
                            var rating = $(this).text(); // Lấy giá trị của số sao
                            console.log("Rating: " + rating);
                            // Gửi giá trị của số sao đến một servlet thông qua Ajax hoặc cập nhật trang JSP với giá trị đã được chọn
                            $.post("ratestar", {rating: rating});
                        });
                    });
                </script>-->
    </head>

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar start -->
        <div class="container-fluid fixed-top">
            <div class="container topbar bg-primary d-none d-lg-block">
                <div class="d-flex justify-content-between">
                    <div class="top-info ps-2">
                        <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">123 Street, New York</a></small>
                        <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">Email@Example.com</a></small>
                    </div>
                    <div class="top-link pe-2">
                        <a href="#" class="text-white"><small class="text-white mx-2">Privacy Policy</small>/</a>
                        <a href="#" class="text-white"><small class="text-white mx-2">Terms of Use</small>/</a>
                        <a href="#" class="text-white"><small class="text-white ms-2">Sales and Refunds</small></a>
                    </div>
                </div>
            </div>
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="home" class="navbar-brand"><h1 class="text-primary display-6">Laptop</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="index.html" class="nav-item nav-link">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="shop-detail.html" class="nav-item nav-link active">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                    <a href="chackout.html" class="dropdown-item">Chackout</a>
                                    <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                    <a href="404.html" class="dropdown-item">404 Page</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="d-flex m-3 me-0">
                            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>
                            <a href="#" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->


        <!--         Modal Search Start 
                <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-fullscreen">
                        <div class="modal-content rounded-0">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body d-flex align-items-center">
                                <div class="input-group w-75 mx-auto d-flex">
                                    <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 Modal Search End -->


        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">Shop Detail</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Shop Detail</li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <!-- Single Product Start -->
        <div class="container-fluid py-5 mt-5">
            <div class="container py-5">
                <div class="row g-4 mb-5">
                    <div class="col-lg-8 col-xl-9">
                        <div class="row g-4">
                            <div class="col-lg-6">
                                <div class="border rounded">
                                    <a href="#">
                                        <img src="img/${detail.imageText}" class="img-fluid rounded" alt="Image">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <h4 class="fw-bold mb-3">Brand:&nbsp;&nbsp;${detail.productName}&reg;</h4>

                                <h5 class="fw-bold mb-3" id="price">Please choose the option</h5>
                                <div class="d-flex mb-4">
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star text-secondary"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="input-group quantity mb-5" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-minus rounded-circle bg-light border" >
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm text-center border-0" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                                <a href="#" class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                            </div>
                            <div class="col-lg-12">
                                <nav>
                                    <div class="nav nav-tabs mb-3">
                                        <button class="nav-link active border-white border-bottom-0" type="button" role="tab"
                                                id="nav-about-tab" data-bs-toggle="tab" data-bs-target="#nav-about"
                                                aria-controls="nav-about" aria-selected="true">Description</button>
                                        <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                                id="nav-mission-tab" data-bs-toggle="tab" data-bs-target="#nav-mission"
                                                aria-controls="nav-mission" aria-selected="false">Reviews</button>
                                    </div>
                                </nav>
                                <div class="tab-content mb-5">
                                    <div class="tab-pane active" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                                        <p>${detail.productDetail} </p>

                                        <div class="px-2">
                                            <div class="row g-4">
                                                <div class="col-6">
                                                    <c:forEach var="option" items="${option}">
                                                        <table border="1">
                                                            <label>
                                                                <input type="radio" onclick="chooseOption('${option.productOptionId}')" name="selectedOption" value="${option.productOptionId}">
                                                            </label>
                                                            <div class="row bg-light align-items-center text-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Hardware Memory</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">${option.getHardware().hardwareMemory}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Ram Memory</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">${option.getRam().ramMemory}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Resolution</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">${option.getResolution().resolution}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Color</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">${option.getColor().color}</p>
                                                                </div>
                                                            </div>
                                                            <div class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Screen Size</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">${option.getSize().screenSize}</p>
                                                                </div>
                                                            </div> </table> </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="nav-mission" role="tabpanel" aria-labelledby="nav-mission-tab">
                                            <div class="d-flex">
                                                <img src="img/avatar.jpg" class="img-fluid rounded-circle p-3" style="width: 100px; height: 100px;" alt="">
                                                <div class="">
                                                    <div  id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                                        <h5><span>${countAllReview}</span> review for <span>${detail.productName}</span></h5>

                                                    <!--                                                    <h5 class="mt-4">Add a review</h5>-->
                                                    <p></p>
                                                    <div>
                                                        <!-- Your review -->

                                                        <div class="rating-box">
                                                            <h5>Rating</h5>

                                                            <div class="stars">
                                                                <i class="fa-solid fa-star">1 </i>
                                                                <i class="fa-solid fa-star">2</i>
                                                                <i class="fa-solid fa-star">3</i>
                                                                <i class="fa-solid fa-star">4</i>
                                                                <i class="fa-solid fa-star">5</i>
                                                            </div>
                                                        </div>
                                                        <div class="md-form md-outline">
                                                            <textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
                                                            <label for="form76"></label>
                                                        </div>
                                                        <div class="text-right pb-2">
                                                            <button type="button" class="btn btn-primary" onclick="addReview(${detail.productID})">Add a review</button>
                                                        </div>
                                                    </div>
                                                    <!-- FILTER -->
                                                    <div class="filter">
                                                        <form action="detail" method="get">

                                                            <label for="sort">Filter</label>
                                                            <select name="sort" id="sort">

                                                                <option value="new">Newest</option>
                                                                <option value="old">Oldest</option>
                                                            </select>

                                                            <input  name="productId"  value="${detail.productID}" type="hidden"> 
                                                            <input type="submit" value="Filter">
                                                        </form>
                                                    </div>
                                                    <c:forEach items="${listAllReview}" var="r">
                                                        <c:forEach items="${listAllAcount}" var="a">
                                                            <c:if test="${r.accountID == a.id }">
                                                                <div class="media mt-3 mb-4">
                                                                    <img class="d-flex mr-3 z-depth-1" src="img/avatar.jpg"
                                                                         width="62" alt="Generic placeholder image">
                                                                    <h5>${a.username}</h5>

                                                                    <div class="media-body">

                                                                        <div class="d-flex justify-content-between">


                                                                            <p class="mb-2" style="font-size: 14px;">${r.dateReview}</p>



                                                                            <div>
                                                                                <p class="mb-0" style="margin-left: 70px">${r.contentReview }</p>
                                                                            </div>
                                                                            <div class="nav-item dropdown">
                                                                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="margin-left: 600px" >&equiv;</a>
                                                                                <div class="dropdown-menu m-0">     

                                                                                    <c:choose>

                                                                                        <c:when test="${acc.id == r.accountID}">
                                                                                            <a href="load?id=${r.id}" class="dropdown-item" class="dropdown-item bx bx-edit">Edit your review</a> </br>
                                                                                            <a href="#" onclick="confirmDelete('${r.id}', '${r.productID}')"title="Delete" class="dropdown-item bx bx-edit">Delete the review</a> 
                                                                                        </c:when>
                                                                                        <c:otherwise>
                                                                                            <a href="loadotherprofile?id=${a.id}&productId=${detail.productID}" class="dropdown-item bx bx-edit">View profile</a>
                                                                                        </c:otherwise>
                                                                                    </c:choose>
                                                                                </c:if>
                                                                            </c:forEach>
                                                                        </div>
                                                                    </div>




                                                                </div>


                                                            </div>
                                                        </div>
                                                        <hr>    

                                                    </c:forEach>
                                                </div>
                                                <!--                                                <p class="mb-2" style="font-size: 14px;">April 12, 2024</p>-->
                                                <!--                                                <div class="d-flex justify-content-between">
                                                                                                    <h5>Jason Smith</h5>
                                                                                                    <div class="d-flex mb-3">
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star"></i>
                                                                                                    </div>
                                                                                                </div>-->
                                                <!--                                                <p>The generated Lorem Ipsum is therefore always free from repetition injected humour, or non-characteristic 
                                                                                                    words etc. Susp endisse ultricies nisi vel quam suscipit </p>-->
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <img src="img/avatar.jpg" class="img-fluid rounded-circle p-3" style="width: 100px; height: 100px;" alt="">
                                            <div class="">
                                                <p class="mb-2" style="font-size: 14px;"></p>
                                                <!--                                                <div class="d-flex justify-content-between">
                                                                                                    <h5>Sam Peters</h5>
                                                                                                    <div class="d-flex mb-3">
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star text-secondary"></i>
                                                                                                        <i class="fa fa-star"></i>
                                                                                                        <i class="fa fa-star"></i>
                                                                                                    </div>
                                                                                                </div>-->
                                                <!--                                                <p class="text-dark">The generated Lorem Ipsum is therefore always free from repetition injected humour, or non-characteristic 
                                                                                                    words etc. Susp endisse ultricies nisi vel quam suscipit </p>-->
                                            </div>
                                        </div>
                                    </div>
                                    <!--                                    <div class="tab-pane" id="nav-vision" role="tabpanel">
                                                                            <p class="text-dark">Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam
                                                                                amet diam et eos labore. 3</p>
                                                                            <p class="mb-0">Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore.
                                                                                Clita erat ipsum et lorem et sit</p>
                                                                        </div>-->
                                </div>
                            </div>
                            <form action="#">
                                <h4 class="mb-5 fw-bold">Leave a Reply</h4>
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="border-bottom rounded">
                                            <input type="text" class="form-control border-0 me-4" placeholder="Your Name *">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="border-bottom rounded">
                                            <input type="email" class="form-control border-0" placeholder="Your Email *">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="border-bottom rounded my-4">
                                            <textarea name="" id="" class="form-control border-0" cols="30" rows="8" placeholder="Your Review *" spellcheck="false"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="d-flex justify-content-between py-3 mb-5">
                                            <div class="d-flex align-items-center">
                                                <p class="mb-0 me-3">Please rate:</p>
                                                <div class="d-flex align-items-center" style="font-size: 12px;">
                                                    <i class="fa fa-star text-muted"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                            <a href="#" class="btn border border-secondary text-primary rounded-pill px-4 py-3"> Post Comment</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-3">
                        <div class="row g-4 fruite">
                            <div class="col-lg-12">
                                <div class="input-group w-100 mx-auto d-flex mb-4">
                                    <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                                </div>
                                <div class="mb-4">
                                    <h4>Brand</h4>
                                    <ul class="list-unstyled fruite-categorie">
                                        <c:forEach var="brandList" items="${brandList}">
                                            <li>
                                                <div class="d-flex justify-content-between fruite-name">
                                                    <a href="#"><i class="fas fa-apple-alt me-2"></i>${brandList.brandName}</a>
                                                    <span>(3)</span>
                                                </div>
                                            </li>


                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <!--                                <h4 class="mb-4">Featured products</h4>
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="rounded" style="width: 100px; height: 100px;">
                                                                        <img src="img/featur-1.jpg" class="img-fluid rounded" alt="Image">
                                                                    </div>
                                                                    <div>
                                                                        <h6 class="mb-2">Big Banana</h6>
                                                                        <div class="d-flex mb-2">
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star"></i>
                                                                        </div>
                                                                        <div class="d-flex mb-2">
                                                                            <h5 class="fw-bold me-2">2.99 $</h5>
                                                                            <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="rounded" style="width: 100px; height: 100px;">
                                                                        <img src="img/featur-2.jpg" class="img-fluid rounded" alt="">
                                                                    </div>
                                                                    <div>
                                                                        <h6 class="mb-2">Big Banana</h6>
                                                                        <div class="d-flex mb-2">
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star"></i>
                                                                        </div>
                                                                        <div class="d-flex mb-2">
                                                                            <h5 class="fw-bold me-2">2.99 $</h5>
                                                                            <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="rounded" style="width: 100px; height: 100px;">
                                                                        <img src="img/featur-3.jpg" class="img-fluid rounded" alt="">
                                                                    </div>
                                                                    <div>
                                                                        <h6 class="mb-2">Big Banana</h6>
                                                                        <div class="d-flex mb-2">
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star"></i>
                                                                        </div>
                                                                        <div class="d-flex mb-2">
                                                                            <h5 class="fw-bold me-2">2.99 $</h5>
                                                                            <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                                        <img src="img/vegetable-item-4.jpg" class="img-fluid rounded" alt="">
                                                                    </div>
                                                                    <div>
                                                                        <h6 class="mb-2">Big Banana</h6>
                                                                        <div class="d-flex mb-2">
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star"></i>
                                                                        </div>
                                                                        <div class="d-flex mb-2">
                                                                            <h5 class="fw-bold me-2">2.99 $</h5>
                                                                            <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                                        <img src="img/vegetable-item-5.jpg" class="img-fluid rounded" alt="">
                                                                    </div>
                                                                    <div>
                                                                        <h6 class="mb-2">Big Banana</h6>
                                                                        <div class="d-flex mb-2">
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star"></i>
                                                                        </div>
                                                                        <div class="d-flex mb-2">
                                                                            <h5 class="fw-bold me-2">2.99 $</h5>
                                                                            <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex align-items-center justify-content-start">
                                                                    <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                                        <img src="img/vegetable-item-6.jpg" class="img-fluid rounded" alt="">
                                                                    </div>
                                                                    <div>
                                                                        <h6 class="mb-2">Big Banana</h6>
                                                                        <div class="d-flex mb-2">
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star text-secondary"></i>
                                                                            <i class="fa fa-star"></i>
                                                                        </div>
                                                                        <div class="d-flex mb-2">
                                                                            <h5 class="fw-bold me-2">2.99 $</h5>
                                                                            <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex justify-content-center my-4">
                                                                    <a href="#" class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100">Vew More</a>
                                                                </div>
                                                            </div>-->
                                <div class="col-lg-12">
                                    <div class="position-relative">
                                        <img src="img/${detail.imageText}" class="img-fluid w-100 rounded" alt="">
                                        <div class="position-absolute" style="top: 50%; right: 10px; transform: translateY(-50%);">
                                            <h3 class="text-secondary fw-bold"> Laptop <br> Gaming</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h1 class="fw-bold mb-0">Related products</h1>

                    <div class="vesitable">
                        <div class="owl-carousel vegetable-carousel justify-content-center">
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-6.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Parsely</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$4.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-1.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Parsely</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$4.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-3.png" class="img-fluid w-100 rounded-top bg-light" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Banana</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-4.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Bell Papper</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-5.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Potatoes</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-6.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Parsely</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-5.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Potatoes</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="img/vegetable-item-6.jpg" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Vegetable</div>
                                <div class="p-4 pb-0 rounded-bottom">
                                    <h4>Parsely</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                        <a href="#" class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Product End -->


            <!-- Footer Start -->
            <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
                <div class="container py-5">
                    <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
                        <div class="row g-4">
                            <div class="col-lg-3">
                                <a href="#">
                                    <h1 class="text-primary mb-0">Fruitables</h1>
                                    <p class="text-secondary mb-0">Fresh products</p>
                                </a>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative mx-auto">
                                    <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email">
                                    <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0;">Subscribe Now</button>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="d-flex justify-content-end pt-3">
                                    <a class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-youtube"></i></a>
                                    <a class="btn btn-outline-secondary btn-md-square rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-5">
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-item">
                                <h4 class="text-light mb-3">Why People Like us!</h4>
                                <p class="mb-4">typesetting, remaining essentially unchanged. It was 
                                    popularised in the 1960s with the like Aldus PageMaker including of Lorem Ipsum.</p>
                                <a href="" class="btn border-secondary py-2 px-4 rounded-pill text-primary">Read More</a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="d-flex flex-column text-start footer-item">
                                <h4 class="text-light mb-3">Shop Info</h4>
                                <a class="btn-link" href="">About Us</a>
                                <a class="btn-link" href="">Contact Us</a>
                                <a class="btn-link" href="">Privacy Policy</a>
                                <a class="btn-link" href="">Terms & Condition</a>
                                <a class="btn-link" href="">Return Policy</a>
                                <a class="btn-link" href="">FAQs & Help</a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="d-flex flex-column text-start footer-item">
                                <h4 class="text-light mb-3">Account</h4>
                                <a class="btn-link" href="">My Account</a>
                                <a class="btn-link" href="">Shop details</a>
                                <a class="btn-link" href="">Shopping Cart</a>
                                <a class="btn-link" href="">Wishlist</a>
                                <a class="btn-link" href="">Order History</a>
                                <a class="btn-link" href="">International Orders</a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="footer-item">
                                <h4 class="text-light mb-3">Contact</h4>
                                <p>Address: 1429 Netus Rd, NY 48247</p>
                                <p>Email: Example@gmail.com</p>
                                <p>Phone: +0123 4567 8910</p>
                                <p>Payment Accepted</p>
                                <img src="img/payment.png" class="img-fluid" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->

            <!-- Copyright Start -->
            <div class="container-fluid copyright bg-dark py-4">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All right reserved.</span>
                        </div>
                        <div class="col-md-6 my-auto text-center text-md-end text-white">
                            <!--/*** This template is free as long as you keep the below author?s credit link/attribution link/backlink. ***/-->
                            <!--/*** If you'd like to use the template without the below author?s credit link/attribution link/backlink, ***/-->
                            <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                            Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Copyright End -->



            <!-- Back to Top -->
            <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   


            <!-- JavaScript Libraries -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/lightbox/js/lightbox.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script>


                                                                                                function addReview(pID) {
                                                                                                    var cntReview = document.getElementById("form76").value;
                                                                                                    var stars = document.querySelectorAll(".stars .fa-star");
                                                                                                    var rating = 0;
                                                                                                    if (${sessionScope.acc==null}) {
                                                                                                        window.location.href = 'login.jsp';
                                                                                                        return;
                                                                                                    }
                                                                                                    stars.forEach(function (star, index) {
                                                                                                        star.addEventListener("click", function () {
                                                                                                            rating = index + 1; // Thiết lập rating bằng chỉ số của sao được nhấp vào
                                                                                                            console.log("Rating: " + rating); // In ra giá trị của số sao
                                                                                                            // Tiếp tục với việc gửi rating và dữ liệu khác đến servlet hoặc xử lý dữ liệu khác theo nhu cầu của bạn

                                                                                                            // Gửi AJAX request sau khi cập nhật rating
                                                                                                            $.ajax({
                                                                                                                url: "/SWP_Project/addReview",
                                                                                                                type: "get",
                                                                                                                data: {
                                                                                                                    productID: pID,
                                                                                                                    contentReview: cntReview,
                                                                                                                    rating: rating
                                                                                                                },
                                                                                                                success: function (data) {
                                                                                                                    var row = document.getElementById("reviews");
                                                                                                                                                        
                                                                                                                    row.innerHTML += data;
                                                                                                                },
                                                                                                                error: function (xhr) {
                                                                                                                    // Xử lý lỗi nếu có
                                                                                                                }
                                                                                                            });
                                                                                                        });
                                                                                                    });
                                                                                                }

                                                                                                function confirmDelete(id, productID) {
                                                                                                    if (confirm("Bạn có muốn xóa đánh giá này không?")) {


                                                                                                        window.location.href = "deletereview?id=" + id + "&productID=" + productID;
                                                                                                    } else {

                                                                                                    }
                                                                                                }
            </script>
            <script>
                function getStar() {
                    document.addEventListener("DOMContentLoaded", function () {
                        const stars = document.querySelectorAll(".stars .fa-star");

                        stars.forEach((star, index) => {
                            star.addEventListener("click", function () {
                                const rating = index + 1; // Lấy giá trị của sao dựa trên chỉ số của nó
                                console.log("Rating:", rating);
                                // Bạn có thể thực hiện các thao tác khác với giá trị đánh giá ở đây
                            });
                        });
                    });

                }
            </script>
            <script>
                function chooseOption(id) {
                    $.ajax({
                        url: "/SWP_Project/UpdatePrice",
                        type: 'GET',
                        data: {
                            "productOptionId": id
                        },
                        success: function (data, textStatus, jqXHR) {
                            document.getElementById('price').innerHTML = data;
                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                        }


                    });
                }
            </script>
    </body>

</html>