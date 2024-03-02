<%-- 
    Document   : Coupon
    Created on : Jan 22, 2024, 11:57:13 AM
    Author     : vinhp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Coupon</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            input {
                width: 100%;
                padding: 8px;
                margin-bottom: 16px;
                box-sizing: border-box;
            }

            button {
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
            }

            button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <h5 style="color: red;">${error}</h5>
        <h5 style="color: red;">${notify}</h5>
        <h2>Add Coupon</h2>
        <form id="couponForm" action="addCoupon" method="post">
            <label for="discountRate">Discount Rate:</label>
            <input type="number" id="discountRate" name="discountRate" step="0.01" required>

            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required>

            <label for="isUsed">Is Used:</label>
            <input type="checkbox" id="isUsed" name="isUsed">

            <button type="submit">Add Coupon</button>
        </form>
    </body>
</html>

