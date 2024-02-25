<%-- 
    Document   : checkoutSuccess
    Created on : Feb 15, 2024, 8:04:39 PM
    Author     : zenzen1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--        <script type="text/javascript" >
            alert();
        </script>-->
        
        <% 
            String html = "";
            String[] productOptionIds = request.getParameterValues("productOptionSelected");
            html += "<script tyle=\"text/javascript\">";
            for (String productOptionId : productOptionIds) {
                html += "sessionStorage.removeItem(" + productOptionId + ");";
            }
            html += "alert('Order success');";
            String homeUrl = "/SWP_Project/Home.jsp";
            html += "window.location.replace(\"" + homeUrl + "\");";
            html += " </script>\n";
            out.print(html);
        %>
    </body>
</html>
