<%-- 
    Document   : newjsp
    Created on : Jan 16, 2024, 9:44:00 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="DAO.ProductDAO, Model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%--<c:forEach items="<%=ProductDAO.INSTANCE.getProductOptionList()%>" var="product">--%>
            <!--<h1>ksjefhsekjfh</h1>-->
        <%--</c:forEach>--%>
        
        <h1>A example laptop</h1>
        Hardware memory: 
        <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="item">
            <input type="radio" value="${item.hardwareMemory}" id="hardware${item.hardwareMemoryId}" name="hardware"/>
            ${item.hardwareMemory} &nbsp;&nbsp;
            <!--<h1>skjefheskf</h1>-->
        </c:forEach>
            <br/>
        Ram:
        <c:forEach items="<%=ProductDAO.INSTANCE.getRamMemoryList()%>" var="item">
            ${item.ramMemory} &nbsp;&nbsp;
            <!--<h1>skjefheskf</h1>-->
        </c:forEach>
            <br/>
        Color: 
        <c:forEach items="<%=ProductDAO.INSTANCE.getColorList()%>" var="item">
            ${item.color} &nbsp;&nbsp;
            <!--<h1>skjefheskf</h1>-->
        </c:forEach>
            <%--
        <c:forEach items="<%=ProductDAO.INSTANCE.getHardwareMemoryList()%>" var="item">
            ${item.hardwareMemory} &nbsp;&nbsp;
            <!--<h1>skjefheskf</h1>-->
        </c:forEach>
            --%>
    </body>
</html>
