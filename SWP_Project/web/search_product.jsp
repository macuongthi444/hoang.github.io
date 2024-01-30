<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : search_product
    Created on : Jan 20, 2024, 9:53:06 PM
    Author     : This PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style>
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
        </style>
    </head>
    <body>
        <form action="listproduct" >
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
                                <input type="text"   name="search" value="${sessionScope.search}"  ><br>
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

</html>
