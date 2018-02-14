<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url var="css" value="/resources/css" />

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<!DOCTYPE html>
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
<style>
.nav-tabs {
	margin-bottom: 15px;
}

.sign-with {
	margin-top: 25px;
	padding: 20px;
}

div#OR {
	height: 30px;
	width: 30px;
	border: 1px solid #C2C2C2;
	border-radius: 50%;
	font-weight: bold;
	line-height: 28px;
	text-align: center;
	font-size: 12px;
	float: right;
	position: absolute;
	right: -16px;
	top: 40%;
	z-index: 1;
	background: #DFDFDF;
}
</style>
</head>
<body>
	<!-- Large modal -->
	<!-- <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Login modal</button>-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						Login/Registration - <a href="/home">Home</a>
					</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-8"
							style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs">
								<!-- li class="active"><a href="#Login" data-toggle="tab">Login</a></li>-->
								<li><a href="/registerUser" data-toggle="tab">Registration</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!--<form:form id="user" modelAttribute="user"
									class="form-horizontal" method="post">
									<div class="tab-pane active" id="Login">
										<form role="form" class="form-horizontal">
											<div class="form-group">
												<label class="col-sm-2 control-label"> Email</label>
												<div class="col-sm-8">
													<form:input path="email" type="email"
														class="form-control" id="email" placeholder="Email" />
												</div>
											</div>
											<div class="form-group">
												<form:label path="password" for="password"
													class="col-sm-2 control-label">
													Password</form:label>
												<div class="col-sm-10">
													<form:input path="password" name="password" type="password"
														class="form-control" id="password" placeholder="Email" />
												</div>
											</div>
											<div class="row">
												<div class="col-sm-2"></div>
												<div class="col-sm-10">
													<form:button type="submit" class="btn btn-primary btn-sm">
														Submit</form:button>
												</div>
											</div>
										</form>
									</div>
								</form:form>-->
								<form:form id="user" action="registerUser"
									cssClass="form-horizontal" modelAttribute="user" method="post">
									<div class="tab-pane" id="Registration">
										<div class="form-group">
											<form:label path="name" class="col-sm-2 control-label">
												Name</form:label>
											<div class="col-sm-10">
												<div class="row">
													<div class="col-md-9">
														<form:input path="name" type="text" name="name" id="name"
															class="form-control" placeholder="Name" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<form:label path="email" class="col-sm-2 control-label">
												Email</form:label>
											<div class="col-sm-10">
												<form:input path="email" type="email" class="form-control"
													name="email" id="email" placeholder="Email" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="phone" class="col-sm-2 control-label">
												Mobile</form:label>
											<div class="col-sm-10">
												<form:input path="phone" name="phone" type="number"
													class="form-control" id="mobile" placeholder="Mobile" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="password" class="col-sm-2 control-label">
												Password</form:label>
											<div class="col-sm-10">
												<form:input path="password" name="password " type="password"
													class="form-control" id="password" placeholder="Password" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="address" class="col-sm-2 control-label">
												Address</form:label>
											<div class="col-sm-10">
												<form:input path="address" name="address" type="textarea"
													class="form-control" id="address" placeholder="Enter address" />
											</div>
										</div>
										<div class="form-group">
											<form:label path="country" class="col-sm-2 control-label">
												Country</form:label>
											<div class="col-sm-10">
												<form:input path="country" name="country" type="text"
													class="form-control" id="country" placeholder="Enter Country" />
											</div>
										</div>
										<div class="row">
											<div class="col-sm-2"></div>
											<div class="col-sm-10">
												<form:button type="submit" class="btn btn-primary btn-sm">
													Save</form:button>
												<form:button type="reset" class="btn btn-default btn-sm">
													Cancel</form:button>
											</div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#myModal').modal('show');
	</script>
</body>
</html>
