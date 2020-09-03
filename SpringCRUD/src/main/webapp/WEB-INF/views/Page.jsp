<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

	<spring:url var="css" value="/resources/css"/>
	<spring:url var="js" value="/resources/js" />
	<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping - ${title}</title>

<link rel="stylesheet" href="${css}/bootstrap.min.css">
	<link href="${css}/font-awesome.min.css" rel="stylesheet">
	<link href="${css}/myApp.css" rel="stylesheet">

</head>
<body class="d-flex justify-content-center align-items-center">
<div class="center">
	<h1>${message}</h1>

</div>
		
		
</body>
			
</html>