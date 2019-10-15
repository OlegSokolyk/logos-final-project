<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <style>
        @import url(http://fonts.googleapis.com/css?family=Lato:400,700);
        body {
            font-family: 'Lato', 'sans-serif';
        }

        .profile {
            min-height: 355px;
            display: inline-block;
        }

        figcaption.ratings {
            margin-top: 20px;
        }

        figcaption.ratings a {
            color: #f1c40f;
            font-size: 11px;
        }

        .divider {
            border-top: 1px solid rgba(0, 0, 0, 0.1);
        }

        .emphasis {
            border-top: 4px solid transparent;
        }

        .emphasis h2 {
            margin-bottom: 0;
        }
    </style>
<title>Profile</title>
</head>
<body>
	<div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
                <div class="well profile">
                    <div class="col-sm-12">
                    <div>
        				<img src="data:image/png; base64, ${userProfile.imagePath}" class="img-rounded img-responsive" width="150px" />
        			</div>
                        <div class="col-xs-12 col-sm-8">
                            <h2>${userProfile.firstName} ${userProfile.lastName}</h2>
                            <p><strong>E-mail: </strong> ${userProfile.email} </p>
                            <p><strong>Phone: </strong> ${userProfile.phone} </p>
                        </div>

                    </div>
                    <div class="col-xs-12 divider text-center">
                        <div class="col-xs-12 col-sm-4 emphasis">
                            <a href="${pageContext.request.contextPath}/user/profile/edit" class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Edit </a>               
                        </div>
                        <div class="col-xs-12 col-sm-4 emphasis">
                            <a href="${pageContext.request.contextPath}/user/profile/image" class="btn btn-success btn-block" style="width: 130px;"><span class="fa fa-plus-circle"></span> Upload Image </a>               
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>