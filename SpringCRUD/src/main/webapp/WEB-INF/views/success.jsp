<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="css" value="/resources/css"/>
	<spring:url var="js" value="/resources/js" />
	<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html>
<head>

	<link href="${css}/bootstrap.min.css" rel="stylesheet">
	<link href="${css}/font-awesome.min.css" rel="stylesheet">
	<link href="${css}/myApp.css" rel="stylesheet">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
	<meta charset="ISO-8859-1">
	<meta name="_csrf" content="${_csrf.token}"/>
  	<meta name="_csrf_header" content="${_csrf.headerName}"/>
</head>
	

<title>Insert title here</title>
<style type="text/css">
.bootbox .modal-header {
flex-direction: row-reverse;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
		window.contextRoot = '${pageContext.request.contextPath}'
		
</script>
<script type="text/javascript">
function roleChange(userId,role)
{
	bootbox.confirm({
		title:'<b style="color:blue;">'+"Change user Role"+'</b>',
		message:'Do you really want to want to change the user role to <b class="text-uppercase text-primary">'+ role +'</b>',
		buttons: {
			cancel: {
						label: '<i class="fa fa-times"></i> Cancel'
					},
			confirm: {
						
						label: '<i class="fa fa-check"></i> Ok'
					 }
		},
		callback: function (result)
				{
					if (result)
					{
							$.ajax({
										type: 'GET',
										data:{'id':userId,'role':role},
										url:'/employee/changeRole',
										success:function(data)
										{
												
											bootbox.alert({
												title:'<b class="text-primary">'+"Information"+'</b>',
												message:'Username <b class="text-info">'+data+'&lsquo; s</b> Role changed to <b class="text-info text-uppercase">'+role+ ' </b> successfully'
											});
										},
										error : function(e)
										{
											
												bootbox.alert('ERROR: '+ e);
										}
							
								  });
					}
					
				}
	});
}
</script>



<script type="text/javascript" src="${js}/myApp.js"></script>
<script type="text/javascript" src="${js}/bootbox.min.js"></script>
	
</head>
<body>
	
<div class="container bg-light">
		<h3 class="text-center">Success page</h3>
	<div class="row">
		<div class="col-lg-12 ">
	<form method="post" action="${pageContext.request.contextPath}/employee/deleteSelected" >
	
	<button class="btn btn-danger btnDelete">Delete</button><br><br>
	<span id="data"></span>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<table class="text-center table-striped table-condensed" border="1" cellpadding="10" colspadding="5">
			${error}
		<tr>
			<td><input type="checkbox" id="checkAll"></td>
			<td>Id</td>
			<td>Name</td>
			<td>Email</td>
			<td>Date of Birth</td>
			<td>Phone</td>
			<td>Active</td>
			<td>Role</td>
			<td>QR Code</td>
			<td>Barcode</td>
			<td>Edit</td>
			<td>Delete</td>
			
		</tr>
		<c:forEach var="employee" items="${employees}">
			<tr>
				<td><input type="checkbox" id="usernameId" name="usernameDelete" value="${employee.username}" class="checkId"></td>
				<td>${employee.id }</td>
				<td>${employee.username }</td>
				<script>
					window.name = '${employee.username }';
				</script>
				<td>${employee.email }</td>
				<td>${employee.dateOfBirth }</td>
				<td>${employee.phone }</td>

				<td cellpadding="8">
					 <label class="switch"> <input type="checkbox" id="id_${employee.id}" value="${employee.id}"/>
					 <div class="slider"></div>
					 <script type="text/javascript">
					 		if(${employee.active})
		                    	{
		                    		$('#id_${employee.id}').prop('checked','checked');
		                    	
		                    	}  
		             </script>
					<!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />-->
						  </label>
					
				</td>
				<td>
							<select id="select_${employee.id}" class="roleChange" onchange="roleChange(${employee.id},$(this).val())">
									<option value="admin">Admin</option>
									<option value="user">User</option>
									<option value="manager">Manager</option>
									<option value="employee">Employee</option>
							</select>
							<script>
							
										$('#select_${employee.id}').val('${employee.role}');
									
							</script>
				
				</td>
				<td>
					<img src="${pageContext.request.contextPath }/employee/qrCode/${employee.email}" height="50" width="50" />
				</td>
				<td>
						<img src="${pageContext.request.contextPath }/employee/barcode/${employee.phone}" height="20" width="100" />
				</td>


				<td><a
					href="${pageContext.request.contextPath}/employee/update/${employee.id }"><span
						class="fa fa-pencil fa-2x"></a></td>
				<td><a class="deleteEmployee"
					href="${pageContext.request.contextPath}/employee/delete/${employee.id }"><span
						class="fa fa-trash fa-2x "></a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6"></td>
			<td><a href="${pageContext.request.contextPath}/employee/index"><span
					class="fa fa-user-circle-o fa-2x"></a></td>
							
		</tr>
		
		
	</table>
	</form>
	</div>
	</div>
	</div>
	<div class="container">
				
	</div>

					
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
		

			
		
</body>
</html>