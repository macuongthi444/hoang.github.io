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
                width: 50%;
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
                            <img src="img/${detail.imageText}" class="img img-fluid w-100 rounded-top" alt="">
                        </div>
                        <div class="p-4 border border-secondary border-top-0 rounded-bottom">                                                       
                            <h2>Brand: ${detail.productName}&nbsp;&nbsp;&reg;</h2>
                           
                           
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
                <button type="button" class="btn btn-success">Buy</button>
            </div>
        </body>
    </html>
