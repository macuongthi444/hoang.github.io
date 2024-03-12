<%-- 
    Document   : Cart
    Created on : 12-01-2024, 10:59:52
    Author     : hoang
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
        </style>
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
                    <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Group 6</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="/SWP_Project/home" class="nav-item nav-link">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="shop-detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="cart.html" class="dropdown-item active">Cart</a>
                                    <a href="chackout.html" class="dropdown-item">Chackout</a>
                                    <a href="OrderHistoryServlet" class="dropdown-item">Order History</a>
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


        <!-- Modal Search Start -->
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
        <!-- Modal Search End -->


        <!-- Single Page Header start -->
        <div class="container-fluid  py-4">
            <h1 class="text-center text-white display-6">Cart</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="/SWP_Project/home">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Cart</li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <!-- Cart Page Start -->
        <div class="container-fluid py-5">
            <form action="CartServlet" method="post" id="submitForm">
            <div class="container py-5">
                <div class="table-responsive">
                    <c:if test="${cartItemList.isEmpty()}" >
                        <h3 style="color: red;">No Items</h3>
                    </c:if>
                    <c:if test="${cartItemList.isEmpty() != true}" >
                    <table class="table">
                        <thead>
                          <tr>
                              <th ></th>
                            <th scope="col">Products</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Handle</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                            
                            
                            <c:forEach items="${cartItemList}" var="cartItem">
                            <c:set value="${cartItem.productOption.productOptionId}" var="productOptionId"/>
                            <tr>
                                <td style="text-align: center; align-items: center; ">
                                    <input onclick="selectOption(${cartItem.productOption.productOptionId})"
                                        id="selectedOption${productOptionId}"
                                        type="checkbox" name="select${productOptionId}" id="select${productOptionId}"/>
                                </td>
                            
                                <th scope="row">
                                    <label for="selectedOption${cartItem.productOption.productOptionId}">
                                    <div class="d-flex align-items-center" style="width: max-content;">
                                        <c:set value="${cartItem.productOption.images}" var="imageList"/>
                                        <img src="img/${imageList.isEmpty()?"":imageList.get(0).imageText}" class="img-fluid me-5" style="width: 80px; height: 80px;" alt="">
                                    </div>
                                    </label>
                                </th>
                                <td>
                                    <p class="mb-0 mt-4">${cartItem.productOption.product.productName}</p>
                                </td>
                                <td>
                                    <p id="productOptionPrice${cartItem.productOption.productOptionId}"
                                        class="mb-0 mt-4">${cartItem.productOption.price}</p>
                                </td>
                                <td>
                                    <div class="input-group quantity mt-4" style="width: 100px;">
                                        <div class="">
                                            <button 
                                                onclick="decreaseQuantity(${cartItem.productOption.productOptionId})" 
                                                class="btn btn-sm btn-minus rounded-circle bg-light border" 
                                                type="button"
                                                >
                                            <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                                <input  id="cartItem${cartItem.productOption.productOptionId}" 
                                                    <%--oninput="checkQuantity(this.id, this.value, ${cartItem.productOption.numberInStock})" --%>
                                                    oninput="checkInputQuantity(${cartItem.productOption.productOptionId}, this.value, ${cartItem.productOption.numberInStock}, 
                                                    ${cartItem.quantity})
                                                    "
                                                    onchange="checkChangeQuantity(${cartItem.productOption.productOptionId}, ${cartItem.quantity})"
                                            type="number" class="form-control form-control-sm text-center border-0" value="${cartItem.quantity}" min="1" >
                                        <div class="input-group-btn">
                                            <button onclick="increaseQuantity('${cartItem.productOption.productOptionId}', ${cartItem.productOption.numberInStock})" type="button"
                                                class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="mb-0 mt-4"
                                       id="totalPrice${cartItem.productOption.productOptionId}"> </p>
                                </td>
                                <%-- 
                                    Handle 
                                --%>
                                <td>
                                    <button type="button" onclick="removeCartItem(${productOptionId})"
                                        class="btn btn-md rounded-circle bg-light border mt-4" >
                                        <i class="fa fa-times text-danger"></i>
                                    </button>
                                </td>
                           
                            
                            </tr>
                            </c:forEach>
                            
                            <script type="text/javascript" >
                                function selectOption(id){
                                    var element = document.getElementById("selectedOption" + id);
                                    window.console.log(element.checked);
                                    if(element.checked === false){
//                                        window.console.log(true);
                                        element.checked = false;
                                        sessionStorage.removeItem(id);
                                    }
                                    else{
                                        sessionStorage.setItem(id, true);
                                        element.checked = true;
                                    }
                                }
                                
                                function loadSelectedOption(){
                                    for(var productOptionId of ${productOptionIdList}){
                                        if(sessionStorage.getItem(productOptionId)){
                                            document.getElementById("selectedOption" + productOptionId).checked = true;
                                        }
                                    }
                                }
                                
                                function updateCart(productOptionId, quantity){
                                    $.ajax({
                                        url: "/SWP_Project/UpdateCartServlet",
                                        type: 'POST',
                                        data: {
                                            "productOptionId": productOptionId,
                                            "quantity": quantity
                                        },
                                        success: function (data, textStatus, jqXHR) {
                                            
                                        },
                                        error: function (jqXHR, textStatus, errorThrown) {
                                            
                                        }
                                    });
                                }
                                
                                function checkChangeQuantity(id, oldQuantity){
                                    if(document.getElementById("cartItem" + id).value === ""){
//                                        document.getElementById("cartItem" + id).value = oldQuantity;
//                                        calculatePrice(id, oldQuantity);
//                                        updateCart(id, oldQuantity);
                                        location.reload();
                                    }
                                }
                                
                                function checkInputQuantity(id, quantity, maxQuantity, oldQuantity){
                                    var idd = "cartItem" + id;
                                    window.console.log(oldQuantity);
                                    if(quantity === "") {
                                        return;
                                    }
                                    if(!checkQuantity(quantity)){
//                                        document.getElementById(idd).value = oldQuantity;
//                                        calculatePrice(id, oldQuantity);
//                                        window.console.log(oldQuantity);
                                        location.reload(false);
                                        return;
                                    }
                                    if(!checkMaxQuantity(quantity, maxQuantity)){
//                                        document.getElementById(idd).value = oldQuantity;
//                                        calculatePrice(id, oldQuantity)
                                        location.reload(true);
                                        return;
                                    }
                                    document.getElementById(idd).value = quantity;
                                    calculatePrice(id, quantity);
                                    updateCart(id, quantity);

                                }
//                                function checkQuantity(id, quantity, maxQuantity){
//                                    window.console.log(quantity);
//                                    if(!checkQuantity(quantity)){
//                                        document.getElementById(id).value = 1;
//                                        return;
//                                    }
//                                    if(!checkMaxQuantity(quantity, maxQuantity)){
//                                        document.getElementById(id).value = maxQuantity;
//                                        return;
//                                    }
//                                    document.getElementById(id).value = quantity;
//                                }

                                function checkMaxQuantity(quantity, maxQuantity){
                                    console.log(maxQuantity);
                                    if(quantity > maxQuantity){
                                        alert("Only " + maxQuantity + " item(s) available. You can not select more than " + maxQuantity + " item(s)!");
                                        return false;
                                    }
                                    return true;
                                }

                                function checkQuantity(quantity){
                                    if(quantity <= 0){
//                                                document.getElementById(id).value = 1;
                                        alert("Quantity must greater than 0");
                                        return false;
                                    }
                                    return true;
                                }

                                function decreaseQuantity(id){
                                    var idd = "cartItem" + id;
                                    var quantity = Number(document.getElementById(idd).value) - 1;
//                                            window.console.log(quantity);
                                    if(checkQuantity(quantity)){
                                        window.console.log("true");
                                        document.getElementById(idd).value = quantity;
                                    }
                                    else{
                                        document.getElementById(idd).value = 1;
                                        quantity = 1;
                                    }
                                    calculatePrice(id, quantity);
                                    updateCart(id, quantity);
                                }

                                function calculatePrice(id, quantity){
                                    document.getElementById("totalPrice" + id).innerHTML = document.getElementById("productOptionPrice" + id).innerHTML * quantity;

                                }

                                function calculateTotalPrice(){
                                    for (var productOptionId of ${productOptionIdList}) {
                                        var productOptionPrice = Number(document.getElementById("productOptionPrice" + productOptionId).innerHTML) * document.getElementById("cartItem" + productOptionId).value;
                                        document.getElementById('totalPrice' + productOptionId).innerHTML = productOptionPrice;
                                    }
                                }

                                function increaseQuantity(id, maxItemQuantity){
                                    var idd = "cartItem" + id;
                                    var quantity = Number(document.getElementById(idd).value) + 1;
//                                    if(quantity > maxItemQuantity){
//                                        alert("Only " + maxItemQuantity + " item(s) available.You can not select more than " + maxItemQuantity + " item(s)!");
//                                    }
                                    if(!checkMaxQuantity(quantity, maxItemQuantity)){
                                        document.getElementById(idd).value = maxItemQuantity;
                                        quantity = maxItemQuantity;
                                    }
                                    else{
                                        document.getElementById(idd).value = quantity;
                                    }
                                    calculatePrice(id, quantity);
                                    updateCart(id, quantity);
                                }
                                
                                function checkSelectedOption(){
                                    for(var id of ${productOptionIdList}){
                                        if(document.getElementById("selectedOption" + id).checked){
                                            return true;
                                        }
                                    }
                                    return false;
                                }
                                
                                function submitForm(){
                                    window.console.log("${productOptionIdList}");
                                    if("${productOptionIdList}" === "[]"){
                                        alert("You don't have any product to checkout!");
                                    }
                                    else{
                                        if(!checkSelectedOption()){
                                            alert("You didn't choose anything to checkout!");
                                            return;
                                        }
                                        document.getElementById("submitForm").submit();
                                    }
                                }
                                
                                function removeCartItem(productOptionId){
                                    $.ajax({
                                       url: "/SWP_Project/RemoveCartItem",
                                       type: 'POST',
                                       data: {
                                           "productOptionId": productOptionId
                                       },
                                       success: function(data){
                                           if(data === "success"){
                                               sessionStorage.removeItem(productOptionId);
                                               window.location.reload();
                                           }
                                           
                                       }
                                    });
                                }
                                
//                                if(${requestScope.CartError != null}){
//                                    alert("Please choose at least one item to checkout!");
//                                }
                            </script>
                        </tbody>
                    </table>
                          </c:if>
                </div>
                <div class="mt-5">
<!--                    <input type="text" class="border-0 border-bottom rounded me-5 py-3 mb-4" placeholder="Coupon Code">
                    <button class="btn border-secondary rounded-pill px-4 py-3 text-primary" type="button">Apply Coupon</button>-->
                </div>
                <div class="row g-4 justify-content-end">
                    <div class="col-8"></div>
                    <div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
                        <!--<div class="bg-light rounded">-->
<!--                            <div class="p-4">
                                <h1 class="display-6 mb-4">Cart <span class="fw-normal">Total</span></h1>
                                <div class="d-flex justify-content-between mb-4">
                                    <h5 class="mb-0 me-4">Subtotal:</h5>
                                    <p class="mb-0">$96.00</p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h5 class="mb-0 me-4">Shipping</h5>
                                    <div class="">
                                        <p class="mb-0">Flat rate: $3.00</p>
                                    </div>
                                </div>
                                <p class="mb-0 text-end">Shipping to Ukraine.</p>
                            </div>-->
<!--                            <div class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                <h5 class="mb-0 ps-4 me-4">Total</h5>
                                <p class="mb-0 pe-4">$99.00</p>
                            </div>-->
                                <button onclick="submitForm()"
                                class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4" type="button">Checkout</button>
                        <!--</div>-->
                    </div>
                </div>
            </div>
            </form>
        </div>
        <!-- Cart Page End -->
        
        
        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
            <div class="container py-5">
                <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
                    <div class="row g-4">
                        <div class="col-lg-3">
                            <a href="/SWP_Project/home">
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
                        <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                        <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
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
    <!--<script src="lib/owlcarousel/owl.carousel.min.js"></script>-->

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script type="text/javascript">
        calculateTotalPrice();
        loadSelectedOption();
//        document.addEventListener("DOMContentLoaded", function(event) { 
//            var scrollpos = localStorage.getItem('scrollpos');
//            if (scrollpos) window.scrollTo(0, scrollpos);
//        });

//        window.onbeforeunload = function(e) {
//            localStorage.setItem('scrollpos', window.scrollY);
//        };
        
        function showNoItemSelectedError(){
            alert("Please choose at least one item to checkout!");
        }
    </script>
    </body>

</html>
