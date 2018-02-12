
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/css" />
<html>
<head>
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
.item {
	height: 50%;
	width: 50%;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: blue;
	color: white;
	text-align: center;
}
</style>
</head>
<body>
	<div>
		<%@include file="/WEB-INF/views/header.jsp"%>
	</div>
	<div class="container">
		<div class="col-md-12">
		
			<div class="row carousel-holder">

				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner">

							<div class="item active">
								<img class="slide-image" src="resources/images/7.png" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="resources/images/3.png" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="resources/images/7.png" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="resources/images/2.png" alt="">
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="span9">
				<h4>Latest Products</h4>
				<ul class="thumbnails">
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="resources/images/cam1.jpg"
								alt="" /></a>
							<div class="caption">
								<h5 align="center">Panasonic Lumix DC-GH5GA-K 4K Camera
									Body</h5>
								<p align="center">In Stock Available.</p>

								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 42299.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="resources/images/cam2.jpg"
								alt="" /></a>
							<div class="caption">
								<h5 align="center">Fujifilm INSTAX Wide 300 Instant Camera</h5>
								<p align="center">In Stock Available.</p>
								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 24799.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="resources/images/cam3.jpg"
								alt="" /></a>
							<div class="caption">
								<h5 align="center">Nikon Coolpix A10</h5>
								<p align="center">In Stock Available</p>
								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 24999.00RS</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="resources/images/w1.jpg" alt="" /></a>
							<div class="caption">
								<h5 align="center">Timewear analog black dial slim watch
									for men</h5>
								<p align="center">In Stock Available</p>

								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 1899.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="resources/images/w2.jpg" alt="" /></a>
							<div class="caption">
								<h5 align="center">Casio Edifice Analog Dial Men's Watch</h5>
								<p align="center">In Stock Available</p>
								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 3599.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="resources/images/w3.jpg" alt="" /></a>
							<div class="caption">
								<h5 align="center">Sonata Analog Dial Men's Watch</h5>
								<p align="center">In Stock Available</p>
								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 2500.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	<div>
		<%@include file="/WEB-INF/views/footer.jsp"%>
	</div>
</body>
</html>
