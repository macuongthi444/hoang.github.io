<%-- 
    Document   : EditReview
    Created on : Feb 26, 2024, 12:23:04 AM
    Author     : This PC
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.21.0/ckeditor.js" integrity="sha512-ff67djVavIxfsnP13CZtuHqf7VyX62ZAObYle+JlObWZvS4/VQkNVaFBOO6eyx2cum8WtiZ0pqyxLCQKC7bjcg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Review</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editreview?productID=${reviewdetail.productID}">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Review</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Review ID:</label>
                                    <input value="${reviewdetail.id}" name="reviewid" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Product ID:</label>
                                    <input value="${reviewdetail.productID}" name="productID" type="text" class="form-control" readonly required>
                                </div>
                                 <div class="modal-body">					
                                <div class="form-group">
                                    <label>Product Name: </label>
                                    <input value="${reviewdetail.productName}" name="productName" type="text" class="form-control" readonly required>
                                </div>
                              <div class="form-group">
                                    <label>User Name:</label>
                                    <input value="${acc.username}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                 <div class="form-group">
                                    <label>Avatar:</label>
                                     <img src="img/${reviewdetail.avatar}" >
                                </div>
                                <div class="form-group">
                                    <label>Content:</label>
                                    <textarea name ="content" class="form-control" required id="textdes">${reviewdetail.contentReview}</textarea>
                                </div>

                                

                            </div>
                            <div class="modal-footer">
                                 <a href="detail?productId=${reviewdetail.productID}">Back</a>
                                <input type="submit" class="btn btn-success" value="Edit">
                               
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>

        <script>
            CKEDITOR.replace('textdes');
        </script>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>