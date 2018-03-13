<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<%@page isELIgnored="false" language="java"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
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
	<%@include file="header.jsp"%>
	<div class="container">
		<h2 align="center">Admin</h2>
		<ul class="nav nav-tabs nav-justified ">
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
					<h3>Add new Category</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><form:label path="cid">Category ID</form:label></td>
									<td><form:input type="number" path="cid"
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
					<h3>Add new Supplier</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><form:label path="sid">Supplier ID</form:label></td>
									<td><form:input path="sid" type="number"
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
									<td><button type="reset" class="btn btn-lg btn-primary ">Cancel
										</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
			</div>
			<div id="products" class="tab-pane fade ">
				<form:form action="${contextRoot}/admin/saveProduct" 
					modelAttribute="products" method="post" class="form-signin"
					enctype="multipart/form-data">
					<h3>Add new Product</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<!-- <tr>
									<td><form:label path="pid">Products ID</form:label></td>
									<td><form:input path="pid" type="number"
											class="form-control" id="pid"
											placeholder="Enter Produtcs id " /></td>
								</tr>-->
								<tr>
									<td><form:label path="pname">Products Name</form:label> <form:input
											path="pname" type="text" class="form-control" id="pname"
											placeholder="Enter Produtcs name " /></td>
								</tr>
								<tr>
									<td><form:label path="pDescription">Product Description</form:label>
										<form:textarea path="pDescription" class="form-control"
											id="pDescritption" rows="4"
											placeholder="Enter Produtcs description " /></td>
								</tr>
								<tr>
									<td><form:label path="pPrice">Product Price</form:label>
									<form:input path="pPrice" type="text"
											class="form-control" id="pPrice"
											placeholder="Enter Produtcs price " /></td>
								</tr>

								<tr>
									<td><form:label path="pStock">Stock</form:label>
									<form:input path="pStock" type="text"
											class="form-control" id="pStock" placeholder="Enter Stock"
											name="pStock" /></td>
								</tr>
								<tr>
									<td><div class="form-group">
											<label>Select Category</label> <select class="form-control"
												name="pCategory">
												<option>-----Category---</option>
												<c:forEach items="${categories}" var="cate">
													<option value="${cate.cid }">${cate.cname}</option>
												</c:forEach>
											</select>
										</div></td>
								</tr>
								<tr>
									<td><div class="form-group">
											<label>Select Supplier</label> <select class="form-control"
												id="pSupplier" name="pSupplier">
												<option>-----Supplier---</option>
												<c:forEach items="${suppliers}" var="sate">
													<option value="${sate.sid }">${sate.sname}</option>
												</c:forEach>
											</select>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="fileinput fileinput-new" data-provides="fileinput">
											<form:label path="pImage">Product Image</form:label>
											<form:input path="pImage" type="file"
												class="form-control-file" id="pImage" name="file"
												accept="image/*" />
										</div>
									</td>
								</tr>
								<tr>
									<td><form:button type="submit"
											class="btn btn-lg btn-primary ">Submit
										</form:button></td>
									<td><form:button type="reset"
											class="btn btn-lg btn-primary ">Cancel
										</form:button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Footer comes here -->
	<footer>
		<%@include file="footer.jsp"%></footer>
</body>
</html>


