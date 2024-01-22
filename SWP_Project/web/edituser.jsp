<%-- 
    Document   : edituser
    Created on : Jan 19, 2024, 10:21:45 PM
    Author     : This PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="edituser">
            <div class="modal-body">					
                <div class="form-group">
                    <label>ID</label>
                    <input value="${accdetail.id}" name="id" type="text" class="form-control" readonly required>
                </div>
                <div class="form-group">
                    <label>Name</label>
                    <input value="${accdetail.username}" name="name" type="text" class="form-control" >
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input value="${accdetail.password}" name="pass" type="text" class="form-control" >
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input value="${accdetail.email}" name="email" type="text" class="form-control" >
                </div>
            </div>
          <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
        </form>                     
    </body>
</html>
