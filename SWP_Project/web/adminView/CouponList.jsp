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

        <table border="1">
            <thead>
                <tr>
                    <th>Coupon ID</th>
                    <th>Discount Rate</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Is Used</th>
                    <th>ProductID<th>
                </tr>
            </thead>
            <tbody>
            <form action="couponList" method="post">
                <c:forEach var="coupon" items="${couponList}">
                    <tr>
                        <td>${coupon.couponId}</td>
                        <td>${coupon.discountRate}</td>
                        <td>${coupon.startDate}</td>
                        <td>${coupon.endDate}</td>
                        <td>${coupon.isUsed}</td>
                        <td>
                            <c:if test="${coupon.isUsed}">
                                <button type="submit" name="cid" value="${coupon.couponId}">Ban</button>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </form>

        </tbody>
    </table>



</body>
</html>
