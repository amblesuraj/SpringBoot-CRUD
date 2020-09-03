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

	<link href="${css}/bootstrap.min.css" rel="stylesheet">
	<link href="${css}/font-awesome.min.css" rel="stylesheet">
	<link href="${css}/myApp.css" rel="stylesheet">


</head>
<body>
		<header>
					<b>
									${messageAll }
					</b>
					<video controls>
							<source src="D:\Videos\Spring MVC Framework/3.Spring framework work environment setup - YouTube.mp4">
					</video>			
		
		</header>
		
		<footer class="footer">
			<%@include file="./shared/footer.jsp"%>
		</footer>
		
</body>
			
</html>