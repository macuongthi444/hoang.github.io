<%-- 
    Document   : userprofile
    Created on : Jan 19, 2024, 8:27:48 AM
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
        <div class="profile-userpic">
            <img src="http://keenthemes.com/preview/metronic/theme/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
        </div>
        <h1>User Profile</h1>

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                    <div class="well well-sm">
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                            </div>
                            <div class="col-sm-6 col-md-8">

                                <h1><small><cite title="San Francisco, USA">User Profile <i class="glyphicon glyphicon-map-marker">
                                            </i></cite></small></h1>
                                <p>
                                    <i class="glyphicon glyphicon-envelope"> ${acc.email} </i>
                                    <br />
                                    <i class="glyphicon glyphicon-globe">User name :${acc.username}</i>
                                    <br />
                                    <i class="glyphicon glyphicon-gift"> Password :${acc.password}</i></p>


                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                    <span class="caret"></span><span class="sr-only"> <a href="#" >Edit profile</a></span>
                                </button>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
