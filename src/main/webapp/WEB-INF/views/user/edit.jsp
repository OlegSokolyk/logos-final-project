<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Profile</title>
</head>
<body>
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
		<div class="login-wrapper">
			<div class="box">
				<div class="content-wrap">
					<h3>Edit</h3>
					<form:form action="/user/profile/edit" modelAttribute="editUserModel">
						<div class="form-group">
							<form:errors path="*" cssClass="error"/>
						</div>
						<div class="form-group">
							<label class="control-label">First name</label>
							<form:input path="firstName" cssClass="form-control" title="First Name" />
							
							<label class="control-label">Last name</label>
							<form:input path="lastName" cssClass="form-control" title="Last Name" />
							
							<label class="control-label">Phone number</label>
							<form:input path="phone" cssClass="form-control" title="Phone number" />
						
  							<label class="control-label">E-mail address</label>
							<form:input path="email" cssClass="form-control" title="E-mail address" />
						</div>
						<div class="form-group">
							<span class="input-group-btn">
								<input type="submit" class="btn btn-primary" value="SAVE">
							</span>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>