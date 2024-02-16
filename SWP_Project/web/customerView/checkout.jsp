<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="DAO.CartItemDAO, DAO.PaymentDAO, java.util.ArrayList, Model.PaymentMethod, java.util.stream.Collectors" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        <style>
            .paymentInfo > table > tbody > tr > td{
                border: 0px;
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
<!--            <div class="container topbar bg-primary d-none d-lg-block">
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
            </div>-->
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Fruitables</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="index.html" class="nav-item nav-link">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="shop-detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                    <a href="chackout.html" class="dropdown-item active">Chackout</a>
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
        <div id="single-page-header" class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">Checkout</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Checkout</li>
            </ol>
        </div>
        <script type="text/javascript">
            document.getElementById("single-page-header").setAttribute("style", "margin-top: 100px !important");
        </script>
        <!-- Single Page Header End -->


        <!-- Checkout Page Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <h1 class="mb-4">Billing details</h1>
                <button style="text-decoration: underline blue 1px;" onclick="showInsertCommunications()" class="btn">add communications</button>
                <form id="checkoutForm" action="CheckoutServlet" method="post">
                    <div class="row g-5">
                        <div class="col-md-12 col-lg-6 col-xl-7">
                            <div style="display: none;" id="insertAddress">
                             <div class="form-item">
                                 <label for="txtAddress" class="form-label my-3">Address<sup>*</sup></label>
                                <input id="txtAddress" type="text" class="form-control" placeholder="House Number Street Name" required="">
                            </div>
                            <div class="form-item">
                                <label for="txtPhoneNumber" class="form-label my-3">Mobile<sup>*</sup></label>
                                <input id="txtPhoneNumber" type="tel" class="form-control" required="">
                            </div>
<!--                            <div class="form-item">
                                <label class="form-label my-3">Email Address<sup>*</sup></label>
                                <input type="email" class="form-control">
                            </div>-->
                            <div>
                                <button class="btn" type="button" style="border: 1px solid #000; margin-top: 30px;" onclick="submitAddCommunications()">Add communications</button>
                            </div>
                            </div>
                        <c:if test="${communicationsList.isEmpty()}">
                            <h4 style="margin-top: 50px; color: red;">
                                NO ADDRESS FOUND
                            </h4>
                        </c:if>
                        <c:if test="${!communicationsList.isEmpty()}">
                            <div style="margin-top: 35px;">
                                <h4 style="margin-bottom: 30px;">CHOOSE YOUR ADDRESS</h4>
                            <c:forEach items="${communicationsList}" var="communications">
                                <input class="communications"
                                    name="communications" type="radio" id="communications${communications.communicationId}" value="${communications.communicationId}" />
                                <label for="communications${communications.communicationId}">
                                    Address: ${communications.address} <br/>
                                    Phone number: ${communications.phoneNumber}
                                </label>
                                <br/> <br/>
                            </c:forEach>
                            </div>
<!--                            <div class="row">
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">First Name<sup>*</sup></label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Last Name<sup>*</sup></label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                            </div>-->
<!--                            <div class="form-item">
                                <label class="form-label my-3">Address <sup>*</sup></label>
                                <input type="text" class="form-control" placeholder="House Number Street Name">
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3">Mobile<sup>*</sup></label>
                                <input type="tel" class="form-control">
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3">Email Address<sup>*</sup></label>
                                <input type="email" class="form-control">
                            </div>-->
                        </c:if>
                            <div>
                                <h4 style="margin: 45px 0 6px 0px;">CHOOSE PAYMENT METHOD</h4>
                                <c:forEach items="${PaymentDAO.INSTANCE.getPaymentMethodList()}" var="paymentMethod">
                                    <div class="row g-4 text-center align-items-center justify-content-center border-bottom py-3">
                                        <div class="col-12">
                                           <div class="form-check text-start my-3">
                                               <input onclick="showPaymentInput()"
                                                   type="radio" class="form-check-input bg-primary border-0 paymentMethod" id="paymentMethod${paymentMethod.paymentMethodId}" 
                                                      name="paymentMethodId" value="${paymentMethod.paymentMethodId}" />
                                               <label class="form-check-label" for="paymentMethod${paymentMethod.paymentMethodId}">${paymentMethod.paymentMethod}</label>
                                           </div>
                                           <p class="text-start text-dark"></p>
                                       </div>   
                                       <c:set value="${paymentMethod.paymentMethodId}" var="paymentMethodId"/>
                                       <c:if test="${paymentMethodId == 2}">
                                           <div id="paymentInfo${paymentMethodId}"style="margin: 2px 0 30px 0; display: none;" class="paymentInfo">
                                            <table border="0px" style="text-align: left;">
                                                <tr>
                                                    <td>
                                                        <label for="creaditCard" class="form-label my-3">Card Number<sup>*</sup></label>
                                                    </td>
                                                    <td>
                                                        <input id="txtAddress" type="text" class="form-control" placeholder="0000 0000 0000 0000" required="">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Expiration Date<sup>*</sup></td>
                                                    <td><input type="month" /></td>
                                                </tr>
                                            </table>
                                           </div>
                                       </c:if>
                                    </div>
                                </c:forEach>
                            </div>

                            <input type="checkbox" name="rememberOption"/>
                            <label for="rememberOption">Remember selections</label>
                        </div>
                            
                        <div class="col-md-12 col-lg-6 col-xl-5">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Products</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${selectedItemList}" var="cartItem">
                                        <c:set value="${cartItem.productOption}" var="productOption"/>
                                        <input name="productOptionSelected" value="${cartItem.productOption.productOptionId}" type="hidden"/>
                                        <input name="quantity${productOption.productOptionId}" value="${cartItem.quantity}" type="hidden"/>
                                        <input name="price${productOption.productOptionId}" value="${productOption.price}" type="hidden"/>
                                         <tr>
                                            <th scope="row">
                                                <div class="d-flex align-items-center mt-2">
                                                    <img src="img/${ProductDAO.getImagesByProductOptionId(cartItem.productOption.productOptionId).get(0).imageText}" class="img-fluid rounded-circle" style="width: 90px; height: 90px;" alt="">
                                                </div>
                                            </th>
                                            <td class="py-5">${ProductDAO.getProductById(cartItem.productOption.productId).productName}</td>
                                            <td id="productPrice${cartItem.productOption.productOptionId}" class="py-5">${cartItem.productOption.price}</td>
                                            <td id="quantity${cartItem.productOption.productOptionId}" class="py-5">${cartItem.quantity}</td>
                                            <td id="totalPrice${cartItem.productOption.productOptionId}" class="py-5"></td>
                                        </tr>
                                        </c:forEach>
                                        <tr>
                                            <th scope="row">
                                            </th>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <p class="mb-0 text-dark py-3">Total</p>
                                            </td>
                                            <td>
                                                <div class="py-3 border-bottom border-top">
                                                    <p id="totalPrice" class="mb-0 text-dark"></p>
                                                </div>
                                            </td>
                                        </tr>
                                    <script type="text/javascript">
                                        var totalPrice = 0;
                                        for(var id of ${productOptionIdList}){
                                            var productPrice = document.getElementById("productPrice" + id).innerHTML;
                                            var quantity = document.getElementById("quantity" + id).innerHTML;
                                            var totalProductPrice = productPrice * quantity
                                            document.getElementById("totalPrice" + id).innerHTML = totalProductPrice;
                                            totalPrice += totalProductPrice;
                                        }
                                        document.getElementById("totalPrice").innerHTML = totalPrice;
                                        
                                        <%! 
                                            ArrayList<Integer> paymentMethodIdList = PaymentDAO.INSTANCE.getPaymentMethodList().stream()
                                            .map(PaymentMethod::getPaymentMethodId)
                                            .collect(Collectors.toCollection(ArrayList::new));
                                        %>
                                        function showPaymentInput(){
                                            for(var id of <%=paymentMethodIdList%>){
                                                var element = document.getElementById("paymentInfo" + id);
                                                if(element === null) continue;
                                                if(document.getElementById("paymentMethod" + id).checked){
                                                    document.getElementById("paymentInfo" + id).style.display = "block";
                                                }
                                                else{
                                                    document.getElementById("paymentInfo" + id).style.display = "none";
                                                }
                                            }
                                        }
                                    </script>
                                    
<!--                                        <tr>
                                            <th scope="row">
                                            </th>
                                            <td class="py-5">
                                                <p class="mb-0 text-dark py-4">Shipping</p>
                                            </td>
                                            <td colspan="3" class="py-5">
                                                <div class="form-check text-start">
                                                    <input type="checkbox" class="form-check-input bg-primary border-0" id="Shipping-1" name="Shipping-1" value="Shipping">
                                                    <label class="form-check-label" for="Shipping-1">Free Shipping</label>
                                                </div>
                                                <div class="form-check text-start">
                                                    <input type="checkbox" class="form-check-input bg-primary border-0" id="Shipping-2" name="Shipping-1" value="Shipping">
                                                    <label class="form-check-label" for="Shipping-2">Flat rate: $15.00</label>
                                                </div>
                                                <div class="form-check text-start">
                                                    <input type="checkbox" class="form-check-input bg-primary border-0" id="Shipping-3" name="Shipping-1" value="Shipping">
                                                    <label class="form-check-label" for="Shipping-3">Local Pickup: $8.00</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                            </th>
                                            <td class="py-5">
                                                <p class="mb-0 text-dark text-uppercase py-3">TOTAL</p>
                                            </td>
                                            <td class="py-5"></td>
                                            <td class="py-5"></td>
                                            <td class="py-5">
                                                <div class="py-3 border-bottom border-top">
                                                    <p class="mb-0 text-dark">$135.00</p>
                                                </div>
                                            </td>
                                        </tr>-->
                                    </tbody>
                                </table>
                            </div>
<!--                            <div class="row g-4 text-center align-items-center justify-content-center border-bottom py-3">
                                <div class="col-12">
                                    <div class="form-check text-start my-3">
                                        <input type="checkbox" class="form-check-input bg-primary border-0" id="Transfer-1" name="Transfer" value="Transfer">
                                        <label class="form-check-label" for="Transfer-1">Direct Bank Transfer</label>
                                    </div>
                                    <p class="text-start text-dark">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.</p>
                                </div>
                            </div>-->

                            <%--
                            <c:forEach items="${PaymentDAO.INSTANCE.getPaymentMethodList()}" var="paymentMethod">
                                <div class="row g-4 text-center align-items-center justify-content-center border-bottom py-3">
                                    <div class="col-12">
                                       <div class="form-check text-start my-3">
                                           <input type="radio" class="form-check-input bg-primary border-0" id="paymentMethod${paymentMethod.paymentMethodId}" 
                                                  name="paymentMethodId" value="${paymentMethod.paymentMethodId}">
                                           <label class="form-check-label" for="paymentMethod${paymentMethod.paymentMethodId}">${paymentMethod.paymentMethod}</label>
                                       </div>
                                       <p class="text-start text-dark"></p>
                                   </div>   
                                </div>
                            </c:forEach>
                            --%>
                            
                            <div class="row g-4 text-center align-items-center justify-content-center pt-4">
                                <button type="button" onclick="submitCheckout()" class="btn border-secondary py-3 px-4 text-uppercase w-100 text-primary">Place Order</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Checkout Page End -->
        <script type="text/javascript">
            function submitCheckout(){
                
                window.console.log("account Id: " + "${account.id}");
                if("${CartItemDAO.INSTANCE.getCommunicationsListByAccountId(account.id)}" === "[]"){
                    alert("You don't have any communications. Please create one!");
                }
                else{
                    if(!checkCommunications()){
                        alert("Please choose one communications method!");
                        return;
                    }
                    if(!checkPaymentMethod()){
                        alert("Please choose one payment method!");
                        return;
                    }
                    if(!confirm("Are you sure to checkout?")){
                        return;
                    }
                    
                    // process checkout
//                    $.ajax({
//                       url: "/SWP_Project/CheckoutServlet",
//                       type: 'POST',
//                       success: function(data){
//                           window.location.reload(false);
//                       }
//                    });
                    window.location.reload();
                    document.getElementById("checkoutForm").submit();
                }
            }
            
            function submitAddCommunications(){
                var address = document.getElementById("txtAddress").value.trim();
                var phoneNumber = document.getElementById("txtPhoneNumber").value.trim();
                if(address === "" || phoneNumber === "") return;
                if(document.getElementById("insertAddress").style.display !== "none"){
                    insertCommunications(address, phoneNumber);
                }
                location.reload(false); 
            }
            
            
            function insertCommunications(address, phoneNumber){
                $.ajax({
                    url: "/SWP_Project/InsertCommunicationsServlet",
                    type: 'POST',
                    data: {
                        "address": address,
                        "phoneNumber": phoneNumber
                    },
                    success: function (data, textStatus, jqXHR) {
//                        window.console.log(data);
                        if(data === "insertAddress"){
                            document.getElementById("insertAddress").style.display = "block";
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    }
                });
            }
            
            function showInsertCommunications(){
                var element = document.getElementById("insertAddress");
                var display = element.style.display;
                window.console.log(element.style.display);
                if(display === "none" ){
                    element.style.display = "block";
                }
            }
            
            function choosePaymentMethod(){
                
            }
            
            function checkCommunications(){
                var communications = document.getElementsByClassName("communications");
                for(var item of communications){
                    if(item.checked){
                        return true;
                    }
                }
                return false;
            }
            
            function checkPaymentMethod(){
                var paymentMethods = document.getElementsByClassName("paymentMethod");
                for(var item of paymentMethods){
                    if(item.checked){
                        return true;
                    }
                }
                return false;
            }
        </script>

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
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>

