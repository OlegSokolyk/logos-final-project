<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload</title>
</head>
<body>
	<form:form modelAttribute="uploadModel" method="POST" action="/user/profile/image" enctype="multipart/form-data">
		<form:input path="file" type="file" cssClass="form-control"/> <br>
		
		<input type="submit" value="Upload Image" class="btn btn-warning">
	</form:form>
</body>
</html>