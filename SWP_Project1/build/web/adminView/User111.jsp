<%-- 
    Document   : User111
    Created on : 21-01-2024, 11:31:51
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lấy giá trị ngày hiện tại trong JSP</title>
    </head>
    <body>
        
       <div class="card g-3 mt-5">
                                <div class="card-body row g-3">
                                    <div class="col-lg-8">
                                        <c:forEach items="${pById}" var="p">
                                            <div class="d-flex justify-content-between align-items-center flex-wrap mb-2 gap-1">
                                                <div class="me-1">
                                                    <h5 class="mb-1">Title</h5>

                                                    <span class=" text-uppercase fw-bold"> ${p.getPostDetail()}</span>
                                                </div>
                                            </div>

                                            <div class="card-body">
                                                <img src="${p.postImg}" alt="${p.postDescriptionId}"/>
                                                <hr class="my-4">
                                                <h5>Detail</h5>
                                                <div class="d-flex flex-wrap">
                                                    <div class="me-5">

                                                        <p class="text-nowrap "><i class="bx bx-file bx-sm me-2"></i>Post Type: ${p.postId.postTypeID.postTypeDetail} </p>
                                                        <p class="text-nowrap"><i class="bx bx-pencil bx-sm me-2"></i>Person write the post: ${p.postId.postByUserMarketing.username}</p>
                                                    </div>
                                                    <div>
                                                        <p class="text-nowrap "><i class="bx bxs-watch bx-sm me-2"></i>Start: ${p.postId.postStart}</p>
                                                        <p class="text-nowrap "><i class="bx bxs-watch bx-sm me-2"></i>End: ${p.postId.postEnd}</p>
                                                    </div>
                                                </div>
                                                <hr class="mb-4 mt-2">
                                                <h5>Description</h5>
                                                <p class="mb-4">
                                                    ${p.postDetail}
                                                </p>

                                                <hr class="my-4">


                                            </div>

                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

    </body>
</html>