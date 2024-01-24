<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Coupon List</title>
    </head>
    <body>
        <h2>Coupon List</h2>
        <h5>${error}</h5>
        <table border="1">
            <thead>
                <tr>
                    <th>Coupon ID</th>
                    <th>Discount Rate</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Is Used</th>
                    <th>Ban Coupon<th>
                    <th>Update Coupon<th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="coupon" items="${couponList}">
                    <tr>
                        <td>${coupon.couponId}</td>
                        <td>${coupon.discountRate}</td>
                        <td>${coupon.startDate}</td>
                        <td>${coupon.endDate}</td>
                        <td>${coupon.isUsed}</td>
                        <td>
                            <c:if test="${coupon.isUsed}">
                                <form action="couponList" method="post">
                                    <button type="submit" name="cid" value="${coupon.couponId}">Ban</button>
                                </form>
                            </c:if>
                        </td>
                        <td>
                            <form action="updateCoupon" method="get">
                                <button type="submit" name="cid" value="${coupon.couponId}">Update</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>



    </body>
</html>
