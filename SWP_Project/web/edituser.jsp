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
<<<<<<< HEAD
        <style> body {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
                font-size: 30px;
            }</style>
=======
        <title>JSP Page</title>
>>>>>>> a74c4a13193ce1fa35eadb6c257daf8fad0e4b20
    </head>
    <body>
        <form action="edituser">
            <div class="modal-body">					
                <div class="form-group">
<<<<<<< HEAD
                    
                </div>
                <div class="form-group">
                    <label>Name</label>
                    <input value="${accdetail.username}" name="name" type="text" class="form-control" readonly="">
=======
                    <label>ID</label>
                    <input value="${accdetail.id}" name="id" type="text" class="form-control" readonly required>
                </div>
                <div class="form-group">
                    <label>Name</label>
                    <input value="${accdetail.username}" name="name" type="text" class="form-control" >
>>>>>>> a74c4a13193ce1fa35eadb6c257daf8fad0e4b20
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
<<<<<<< HEAD
                                </div>
        </form>  
                <div class="form-group"> <label><a href="userprofile.jsp">Back</a></label>
                    
                </div>
=======
                            </div>
        </form>                     
>>>>>>> a74c4a13193ce1fa35eadb6c257daf8fad0e4b20
    </body>
</html>
