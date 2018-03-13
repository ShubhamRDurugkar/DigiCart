<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="jq" value="/resources/jq" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DigiCart</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="header">
		<div class="navbar-fluid">
			<div class="container">

				<nav class="navbar navbar-inverse navbar-fixed "role="navigation" class="navbar-collapse collapse">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#navbar"
								aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="${contextRoot }">DigiCart</a>
						</div>
						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li><a href="${contextRoot }"> <i class="fa fa-home"></i>Home
								</a></li>
								<security:authorize access="hasAuthority('ROLE_ADMIN')">
									<li><a href="admin"><i class="fa fa-admin"></i>Admin</a></li>
										<li><a href="adminList"><i class="fa fa-admin"></i>AdminList</a></li>
								</security:authorize>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">CategoryList<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<c:forEach items="${categories}" var="cate">
											<li value="${cate.cid }"><a href="#${cate.cname}">${cate.cname}</a></li>
										</c:forEach>
									</ul></li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
								<security:authorize access="isAnonymous()">
									<li><a href="${contextRoot}/register"> <i class="fa">&#xf2be;Register</i>
									</a></li>
									<li><a href="${contextRoot}/login"> <span
											class="glyphicon">&#xe195;Login</span></a></li>
								</security:authorize>
								<security:authorize access="isAuthenticated()">
									<li class="dropdown"><a href="javascript:void(0)"
										class="btn-btn-default dropwn-toggle" id="dropdownMenu1"
										data-toggle="dropdown"> ${userModel.name} <span
											class="caret"></span>
									</a>
										<ul class="dropdown-menu">
											<li><a href="${contextRoot }/logout">Logout</a></li>
										</ul></li>
								</security:authorize>
							</ul>
						</div>
					</div>
				</nav>

			</div>
		</div>
	</div>

	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
	</script>
</body>
</html>