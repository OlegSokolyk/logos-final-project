<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/order-style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/daterangepicker/daterangepicker.css" rel="stylesheet">

<%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/order-style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/daterangepicker/daterangepicker.css" />" rel="stylesheet"> --%>

<title>Order</title>
</head>
<body>
	
	<div class="container" style="align-content: center;">
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
                <div class="well profile">
                    <div class="col-sm-12">
                        <div class="col-xs-12 col-sm-8">
                            <h2>${userProfile.firstName} ${userProfile.lastName}</h2>
                            <p><strong>E-mail: </strong> ${userProfile.email} </p>
                            <p><strong>Phone: </strong> ${userProfile.phone} </p>
                        </div>
                    </div>
                    
                    <br>
						
                    <form:form action="/order" modelAttribute="orderModel" class="form-horizontal" method="post" id="form">
                        <div class="form-group">
                            <label for="date" class="col-sm-2 control-label">Дата <span class="red">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="date" name="date" placeholder="Дата" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-6">
                                <button type="submit" id="submit" class="btn btn-primary">send</button>
                                <div></div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript">
    	<%@include file="/resources/js/bootstrap.min.js"%>
    	<%@include file="/resources/daterangepicker/moment.js"%>
    	<%@include file="/resources/daterangepicker/daterangepicker.js"%>
    </script>
    <script>
        $(function() {
            $('#date').daterangepicker();
        });
    </script>
    
</body>
</html>