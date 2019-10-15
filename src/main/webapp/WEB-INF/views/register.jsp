<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-md-4 col-md-offset-4">
		<div class="login-wrapper">
			<div class="box">
				<div class="content-wrap">
					<h3>Register</h3>
					<form:form action="/register" modelAttribute="userModel">
						<div class="form-group">
							<form:errors path="*" cssClass="error"/>
						</div>
						<div class="form-group">
							<label class="control-label">First name</label>
							<form:input path="firstName" cssClass="form-control" title="First Name" />
							
							<label class="control-label">Last name</label>
							<form:input path="lastName" cssClass="form-control" title="Last Name" />
							
							<label class="control-label">Phone number</label>
							<form:input path="phoneNumber" cssClass="form-control" title="Phone number" />
						
  							<label class="control-label">E-mail address</label>
							<form:input path="email" cssClass="form-control" title="E-mail address" />
											
							<label class="control-label">Password</label>
							<form:password path="password" cssClass="form-control" title="Password" />
							
							<label class="control-label">Password Confirmation</label>
							<form:password path="passwordConfirmation" cssClass="form-control" title="Password Confirmation" />
						</div>
						<div class="form-group">
							<span class="input-group-btn">
								<input type="submit" class="btn btn-primary" value="Register">
							</span>
						</div>
						
					</form:form>
				</div>
			</div>
			<div class="already">
				<p>Do you have an account yet?
					<a href="${pageContext.request.contextPath}/login">Login</a>
				</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>