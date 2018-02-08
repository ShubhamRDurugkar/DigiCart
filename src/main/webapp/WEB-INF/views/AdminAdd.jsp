<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="home"%>
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body bgcolor="lightblue">
	<!-- %@include file="/WEB-INF/views/header.jsp"%>-->
	<div class="container">
		<h2 align="center">Admin</h2>
		<ul class="nav nav-tabs nav-justified ">
			<li class="active"><a href="#category ">Category </a></li>
			<li><a href="#supplier">Supplier </a></li>
			<li><a href="#products ">Products </a></li>
		</ul>
		<div class="tab-content">
			<div id="category" class="tab-pane fade in active">
				<form action=/saveCategory>
					<h3>Update Category details</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><label for=="cid">Category ID</label></td>
									<td><input type="text" class="form-control" id="cid"
										placeholder="Enter category id">
								</tr>
								<tr>
									<td><label for="cname">Category Name</label></td>
									<td><input type="text" class="form-control" id="cname"
										placeholder="Enter category name ">
								</tr>
								<tr>
									<td>
										<button type="submit" class="btn btn-default ">Submit
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
			<div id="supplier" class="tab-pane fade ">
				<form action=/saveSupplier>
					<h3>Update Supplier Details</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><label for="sid">Supplier ID</label></td>
									<td><input type="text" class="form-control" id="sid"
										placeholder="Enter Supplier id ">
								</tr>
								<tr>
									<td><label for="sname">Supplier Name</label></td>
									<td><input type="text" class="form-control" id="sname"
										placeholder="Enter Supplier name ">
								</tr>
								<tr>
									<td>
										<button type="submit" class="btn btn-default ">Submit
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
			<div id="products" class="tab-pane fade ">
				<form action=/saveProduct>
					<h3>Update Produtcs Details</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><label for="pid">Produtcs ID</label></td>
									<td><input type="text" class="form-control" id="pid"
										placeholder="Enter Produtcs id "></td>
								</tr>
								<tr>
									<td><label for="pname">Produtcs Name</label></td>
									<td><input type="text" class="form-control" id="pname"
										placeholder="Enter Produtcs name "></td>
								</tr>
								<tr>
									<td><label for="pDesc">Product Description</label></td>
									<td><textarea class="form-control" id="pDesc" rows="3"></textarea></td>
								</tr>
								<tr>
									<td><label for="pPrice">Produtcs Price</label></td>
									<td><input type="text" class="form-control" id="pPrice"
										placeholder="Enter Produtcs price "></td>
								</tr>

								<tr>
									<td><label for="pStock">Stock</label></td>
									<td><input type="text" class="form-control" id="pStock"
										placeholder="Enter Stock" name="pStock"></td>
								</tr>
								<tr>
									<td><label for="pDesc">Product Description</label></td>
									<td><textarea class="form-control" id="pDesc" rows="3"></textarea></td>
								</tr>
								<tr>
									<td><div class="form-group">
											<label for="cid">Category ID</label> <select
												class="form-control" id="cid" name="cid">
												<option>cat 1</option>
												<option>cat 2</option>
											</select>
										</div></td>
								</tr>
								<tr>
									<td><div class="form-group">
											<label for="sid">Supplier ID</label> <select
												class="form-control" id="sid" name="sid">
												<option>supplier 1</option>
												<option>supplier 2</option>
											</select>
										</div></td>
								</tr>
								<tr>
									<td>
										<div class="form-group">
											<label for="pImage">Select Product Image</label> <input
												type="file" class="form-control-file" id="pImage">
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<button type="submit" class="btn btn-default ">Submit
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$(".nav-tabs a").click(function() {
				$(this).tab('show');
			});
		});
	</script>
	<!--%@include file="/WEB-INF/views/footer.jsp"%>-->
</body>
</html>


