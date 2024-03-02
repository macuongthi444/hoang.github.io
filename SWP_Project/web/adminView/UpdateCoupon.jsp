<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Update Coupon</title>
    </head>
    <body>
        <h5 style="color: red">${error}</h5>
        <h2>Update Coupon</h2>
        <form action="updateCoupon" method="post">
            <label for="couponId">Coupon ID:</label>
            <span>${coupon.couponId}</span>
            <input type="hidden" name="cid" value="${coupon.couponId}">
            <br>            
            <label for="discountRate">Discount Rate:</label>
            <input type="text" id="discountRate" name="discountRate" value="${coupon.discountRate}" step="0.01">
            <br>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" value="${coupon.startDate}">
            <br>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" value="${coupon.endDate}">
            <br>

            <label for="isUsed">Is Used:</label>
            <input type="checkbox" id="isUsed" name="isUsed" ${coupon.isUsed ? 'checked' : ''}>
            <br>

            <input type="submit" value="Update">
        </form>
    </body>
</html>
