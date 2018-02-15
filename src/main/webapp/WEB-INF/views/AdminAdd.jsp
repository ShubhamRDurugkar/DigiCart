<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" language="java"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<spring:url var="css" value="/resources/css" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>DigiCart Admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="main.js"></script>
</head>
<body bgcolor="lightblue">
	<!-- %@include file="/WEB-INF/views/header.jsp"%>-->
	<div class="container">
		<h2 align="center">Admin</h2>
		<ul class="nav nav-tabs justified ">
			<li class="active"><a data-toggle="tab" href="#category ">Category
			</a></li>
			<li><a data-toggle="tab" href="#supplier">Supplier </a></li>
			<li><a data-toggle="tab" href="#products ">Products </a></li>
		</ul>
		<div class="tab-content">
			<!-- Category Tab -->
			<div id="category" class="tab-pane fade in active">
				<form:form action="${contextRoot}/admin/saveCate"
					modelAttribute="category" method="post">
					<h3>Update Category details</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><form:label path="cid">Category ID</form:label></td>
									<td><form:input type="text" path="cid"
											class="form-control" id="cid" placeholder="Enter category id"
											name="cid" />
								</tr>
								<tr>
									<td><form:label path="cname">Category Name</form:label></td>
									<td><form:input path="cname" type="text"
											class="form-control" id="cname"
											placeholder="Enter category name " name="cname" />
								</tr>
								<tr>
									<td>
										<button type="submit" class="btn btn-lg btn-primary ">Submit
										</button>
									</td>
									<td><button type="reset" class="btn btn-lg btn-primary ">Cancel
										</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
			</div>
			<!-- Supplier Tab -->
			<div id="supplier" class="tab-pane fade ">
				<form:form action="${contextRoot}/admin/saveSupp" method="post"
					modelAttribute="supplier" class="form-signin">
					<h3>Update Supplier Details</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><form:label path="sid">Supplier ID</form:label></td>
									<td><form:input path="sid" type="text"
											class="form-control" id="sid" placeholder="Enter Supplier id" />
								</tr>
								<tr>
									<td><form:label path="sname">Supplier Name</form:label></td>
									<td><form:input path="sname" type="text"
											class="form-control" id="sname"
											placeholder="Enter Supplier name " />
								</tr>
								<tr>
									<td><button type="submit" class="btn btn-primary ">Submit
										</button></td>
									<td><button type="reset"
											class="btn btn-lg btn-primary ">Cancel
										</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
			</div>
			
		</div>
	</div>
	<!--%@include file="/WEB-INF/views/footer.jsp"%>-->
</body>
</html>


