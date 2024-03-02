<%-- 
    Document   : menu
    Created on : Jan 18, 2024, 10:39:37 PM
    Author     : This PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Fruitables</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="Home.jsp" class="nav-item nav-link active">Home</a>
                            <a href="HomePageShop.jsp" class="nav-item nav-link">Shop</a>
                            <a href="HomePageDetail.jsp" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="HomePageShop.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="Cart.jsp" class="dropdown-item">Cart</a>
                                    <a href="CheckOut.jsp" class="dropdown-item">Chackout</a>
                                    <a href="Testimonial.jsp" class="dropdown-item">Testimonial</a>
                                    <a href="404.html" class="dropdown-item">404 Page</a>
                                </div>
                            </div>
                            <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="d-flex m-3 me-0">
                            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                            <a href="Cart.jsp" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>
                            <a href="login.jsp" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                            <div style="display: flex;">
                                <c:if test="${sessionScope.name!=null}">
                                    <a style="color: black; margin-left:  150px;text-decoration: inherit;border-style: groove; "href="logout">Thoát</a>
                                    <h3>Wellcome ${sessionScope.name.lastName}</h3>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </body>
</html>
