<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : search_product
    Created on : Jan 20, 2024, 9:53:06 PM
    Author     : This PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Group 6</title>
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
        <link rel="stylesheet" href="scss/bootstrap/scss/_navbar.scss" type="text/css"/>
        <link rel="stylesheet" href="scss/bootstrap/scss/_navbar.scss" type="text/css">
<!--        <style>
            body {

            }

            form {
                width: 50%; /* Adjust the width as needed */
                padding: 20px; /* Add padding for better appearance */
            }
            product{
                display: flex;
            }
            .img{
                width: 50%;
                height: 100px;
            }
        </style>-->
    </head>
    <body>
       
        <form action="listproduct" method="post" >
            <table border="1">
                <thead>
                    <tr>
                        <th>Search  </th>
                        <th>Price From :</th>
                        <th>Hardware Memory: </th>
                        <th>Ram :</th>
                        <th>Color</th>
                        <th>Screen Size </th>
                        <th>Resolution </th>
                        <th>Graphic Card</th>                       
                        <th> Sort: </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label for="inputdefault">
                                <input type="text"   name="search"   ><br>
                            </label> </td>
                        <td> <label for="inputdefault">
                                <input type="number" name="priceFrom"> To:<input type="number" name="priceTo"><br>
                            </label> </td>
                        <td><select id="id" name="hardwareMemoryId">
                                <option value="all">All</option>
                                <c:forEach var="h" items="${hardwarelist}">
                                    <option value="${h.hardwareMemory}">${h.hardwareMemory}</option>
                                </c:forEach>
                            </select></td>
                        <td><select name="ramId">
                                <option value="all">All</option>
                                <c:forEach var="ramlist" items="${ramlist}">
                                    <option value="${ramlist.ramMemory}">${ramlist.ramMemory}</option>
                                </c:forEach>
                            </select></td>
                        <td><select  name="colorId">
                                <option value="all">All</option>
                                <c:forEach var="colorlist" items="${colorlist}">
                                    <option value="${colorlist.color}">${colorlist.color}</option>
                                </c:forEach>
                            </select><br></td>
                        <td><select  name="screenId">
                                <option value="all">All</option>
                                <c:forEach var="screenlist" items="${screenlist}">
                                    <option value="${screenlist.screenSize}">${screenlist.screenSize}</option>
                                </c:forEach>
                            </select><br></td>
                        <td><select " name="resoId">
                                <option value="all">All</option>
                                <c:forEach var="resolist" items="${resolist}">
                                    <option value="${resolist.resolution}">${resolist.resolution}</option>
                                </c:forEach>
                            </select><br></td>
                        <td><select  name="cardId">
                                <option value="all">All</option>
                                <c:forEach var="cardlist" items="${cardlist}">
                                    <option value="${cardlist.graphicCard}">${cardlist.graphicCard}</option>
                                </c:forEach>
                            </select><br></td>
                        
                        <td><select id="id" name="sortType">
                    <option value="order by po.price desc">Sort by price descending</option>
                    <option value="order by po.price asc">Sort by price ascending</option>

                </select></td>

                </tbody>
            </table>

           
            <button type="submit    " class="btn btn-success">Search</button>

        </form>

        <div class="product"">
           <c:if test="${not empty plist}">
                <table border="1">
                    <thead>
                        <tr>

                            <th>Name</th>
                            <th>Price</th>
                            <th>Detail</th>
                            <th>Image</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${requestScope.plist}"> 
                            <tr>

                                <td>${p.productName}</td>
                                <td>${p.price}</td>
                                <td>${p.productDetail}</td>
                                <td style="width: 20%"><img src="img/${p.imageText}" style="width: 80%" alt="alt"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </body>

