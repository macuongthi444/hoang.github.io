<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ProductDetail
    Created on : Jan 22, 2024, 11:49:43 PM
    Author     : This PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .img {
                width: 80%;
                box-shadow: #0083d4;
            }
            .buy {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-top: 10px;
            }
            .th{
                width: 100%;
                text-justify: auto;
            }


            /* Sử dụng color để đặt màu chữ */

            /* Hoặc sử dụng background-color để đặt màu nền */



        </style>
    </head>

    <body>
        <div class="row g-4">
            <form action="home">

                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="rounded position-relative fruite-item">
                        <div>
                            <img src="img/${detail.imageText}" class="img img-fluid w-100 rounded-top" alt="" >
                        </div>
                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">                                                       
                            <h2>Brand: ${detail.productName}&nbsp;&nbsp;&reg;</h2>
                            <h3>Description: ${detail.productDetail}</h3>
                            <h3>Option :</h3>
                            <table border="1">
                                <thead>
                                    <tr>
                                        <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                        <th>Hardware Memory&nbsp;&nbsp;&nbsp;</th>
                                        <th>Ram Memory&nbsp;&nbsp;&nbsp;</th>
                                        <th>Resolution&nbsp;&nbsp;&nbsp;</th>
                                        <th>Color&nbsp;&nbsp;&nbsp;</th>
                                        <th>Screen Size&nbsp;&nbsp;&nbsp;</th>
                                        <th>Description&nbsp;&nbsp;&nbsp;</th>
                                        <th>Price&nbsp;&nbsp;&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="option" items="${option}">
                                        <tr>

                                            <td>
                                                <label>
                                                    <input type="radio" name="selectedOption" value="${option.productOptionId}">
                                                </label>
                                            </td>
                                            <td>${option.getHardware().hardwareMemory}</td>
                                            <td>${option.getRam().ramMemory}</td>
                                            <td>${option.getResolution().resolution}</td>
                                            <td>${option.getColor().color}</td>
                                            <td>${option.getSize().screenSize}</td>
                                            <td>${detail.productDetail}</td>
                                            <td>${option.price}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>




                        </div>
                    </div>
                </div>

            </form>
        </div>

        <div class="buy">
            <button type="button" class="btn btn-success" >Buy</button>
        </div>
        <div  id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
            <h5><span>${countAllReview}</span> review for <span>${detail.productName}</span></h5>

            <h5 class="mt-4">Add a review</h5>
            <p></p>
            <div>
                <!-- Your review -->
                <div class="md-form md-outline">
                    <textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
                    <label for="form76">Your review</label>
                </div>
                <div class="text-right pb-2">
                    <button type="button" class="btn btn-primary" onclick="addReview(${detail.productID})">Add a review</button>
                </div>
            </div>
            <c:forEach items="${listAllReview}" var="r">

                <div class="media mt-3 mb-4">
                    <img class="d-flex mr-3 z-depth-1" src="https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg"
                         width="62" alt="Generic placeholder image">
                    <div class="media-body">
                        <div class="d-flex justify-content-between">
                            <p class="mt-1 mb-2">
                                <c:forEach items="${listAllAcount}" var="a">
                                    <c:if test="${r.accountID == a.id }">
                                        <strong>${a.username} </strong>
                                        <span>– </span><span>${r.dateReview}</span>
                                         <c:if test="${acc.id == r.accountID}">
                                        <a href="load?id=${r.id}">Edit your review</a> </c:if>
                                    </c:if>
                                </c:forEach>
                                
                            </p>

                        </div>
                        <p class="mb-0">${r.contentReview }</p>

                    </div>
                </div>
                <hr>    

            </c:forEach>
        </div>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>


             function addReview(pID) {
                 var cntReview = document.getElementById("form76").value;
                 $.ajax({
                     url: "/SWP_Project/addReview",
                     type: "get",
                     data: {
                         productID: pID,
                         contentReview: cntReview
                     },
                     success: function (data) {
                         var row = document.getElementById("reviews");
                         row.innerHTML += data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
    </script>
</html>
