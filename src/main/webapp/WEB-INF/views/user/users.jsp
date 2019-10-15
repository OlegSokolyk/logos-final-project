<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${users}" var="user">	
	<div class="list-group">
  			<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    			<div class="d-flex w-100 justify-content-between">
    				<img src="data:image/png; base64, ${user.imagePath}" width="50px" >
      				<h5 class="mb-1">${user.firstName} ${user.lastName}</h5>
    			</div>
  			</a>	
  	</div>
	</c:forEach>

</body>
</html>