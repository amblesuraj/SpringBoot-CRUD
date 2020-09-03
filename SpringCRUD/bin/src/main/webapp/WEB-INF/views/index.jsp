<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="css" value="/resources/css"/>
	<spring:url var="js" value="/resources/js" />
	<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	
	<link href="${css}/bootstrap.min.css" rel="stylesheet">
	<link href="${css}/font-awesome.min.css" rel="stylesheet">
	<link href="${css}/myApp.css" rel="stylesheet">
	
		
</head>
<body>
		
	<h3>Add New Employee</h3>
	
	<c:if test="${not empty msg }">
					<div class="alert alert-success alert-dismissible fade show"
						role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
						</button>
						<strong>Success!</strong> ${msg}
					</div>
				</c:if>
	
	<s:form method="post" action="${pageContext.request.contextPath}/employee/save" modelAttribute="employee">
		<table>
				<tr>
						<td>Username :</td>
						<td><s:input path="username"/></td>
						<td><s:errors path="username" cssClass="text-danger"/></td>
				</tr>
				<tr>
						<td>Password :</td>
						<td><s:password path="password"/></td>
						<td><s:errors path="password" cssClass="text-danger"/></td>
				</tr>
				<tr>
						<td>Email :</td>
						<td><s:input path="email" /></td>
						<td><s:errors path="email" cssClass="text-danger"/></td>
				</tr>
				<tr>
						<td>Active</td>
						<td><s:input path="active"/></td>
						<td><s:errors path="active" cssClass="text-danger"/></td>
				</tr>
				<tr>
						<td>Date of Birth </td>
						<td><s:input path="dateOfBirth"/></td>
						<td><s:errors path="dateOfBirth" cssClass="text-danger"/></td>
				</tr>
				<tr>
						<td>Phone</td>
						<td><s:input path="phone"/></td>
						<td><s:errors path="phone" cssClass="text-danger"/></td>
				</tr>
				<tr>
						<td>Role</td>
						<td><s:input path="role"/></td>
						<td><s:errors path="role" cssClass="text-danger"/></td>
				</tr>
				<tr>
						
						<td><input type="submit" value="Save"></td>
						<!--<td><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></td> -->
						
						<td><a href="${pageContext.request.contextPath}/employee/showEmployee">
						
						<span class="fa fa-eye"></span>
						
						</a></td>
				</tr>
				<tr>
						<td><button id="callBtn" value="Call Me" onclick="callMe()">Call me</button></td>
				</tr>
			
		</table>
		<s:hidden path="id"/>
		
		
	</s:form>
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>		
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js">
</script>

</body>
</html>