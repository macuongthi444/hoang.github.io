<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : search_product
    Created on : Jan 20, 2024, 9:53:06 PM
    Author     : This PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="listproduct" >
            Search : <input type="text" name="search" value="${sessionScope.search}"><br>
            Price From : <input type="number" name="priceFrom"> To:<input type="number" name="priceTo"><br>
            Category <select id="id" name="cateId">
                <c:forEach var="c" items="${clist}">
                    <option value="${c.categoryId}">${c.categoryName}</option><br>
                </c:forEach>
                <br>
            </select><br>
            Sort:<select id="id" name="sortType">
                <option value="order by po.price desc">Sort by price descending</option>
                <option value="order by po.price asc">Sort by price ascending</option>

            </select>
            <br>
            <button type="submit" value="search">Search</button>
        </form>
        <c:if test="${not empty plist}">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Category</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${plist}"> 
                    <tr>
                        <td>${p.productId}</td>
                        <td>${p.productName}</td>
                        <td>${p.productOption.getPrice()}</td>
                        <td>${p.category.getCategoryName()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
            </c:if>
    </body>
</html>
