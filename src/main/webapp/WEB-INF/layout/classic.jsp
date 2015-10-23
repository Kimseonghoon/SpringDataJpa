<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<title><tiles:getAsString name="title" /></title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<link href="../../resources/css/AdminLTE.css" rel="stylesheet" type="text/css"  />
<link href="../../resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="../../resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

</head>
<body>

<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>

<tilesx:useAttribute name="current" />

<div class="container">
	<!-- Static navbar -->
	<div class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<spring:url value="/" />">KSH</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="${current == 'index' ? 'active' : '' }">
						<a href='<spring:url value="/" />'>Home</a>
					</li>
					<li class="${current == 'users' ? 'active' : '' }">
						<a href="<spring:url value="/users.html" />">Users</a>
					</li>
					<li class="${current == 'register' ? 'active' : '' }">
						<a href="<spring:url value="/register.html" />">Register</a>
					</li>
					<li class="${current == 'login' ? 'active' : '' }">
						<a href="<spring:url value="/login.html" />">Login</a>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid -->
	</div>

	<tiles:insertAttribute name="body" />
	<br>
	<br>
	<div align="center">
		<tiles:insertAttribute name="footer" />
	</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="../../resources/js/AdminLTE/app.js" type="text/javascript"></script>

<script type="text/javascript">
$.ajax({
	url:"test.html",
	type:"post",
	success:function(result) {
		console.log(result);
	},
	error:function(x,h,r) {
		alert(x.status);
	}
});
</script>

</body>
</html>