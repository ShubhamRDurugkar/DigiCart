<!-- <html>
<body>
<br><br><br>
<h2>Welcome to DigiCart</h2>

<%= java.util.Calendar.getInstance().getTime() %>

<a href="home">Click here to Go on DigiCart</a>

</body>
</html> -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="home"%>    
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
	height:50%;
	width:50%;
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
		<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  <div class="item active">
		  <div class="container">
		<img style="width:100%"  src="images/2.png" alt="special offers 2.png"/>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
		<img style="width:100%" src="images/3.png" alt="3.png"/>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<img style="width: 100%" src="images/7.png" alt="7.png"/>			
		  </div>
		  </div>
		<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <!-- <span
				class="sr-only">Previous</span> -->
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
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
							<a href="index.jsp"><img src="images/cam1.jpg" alt="" /></a>
							<div class="caption">
								<h5>Panasonic Lumix DC-GH5GA-K 4K Camera Body</h5>
								<p>In Stock Available.</p>

								<h4 style="text-align: center">
								<a class="btn btn-primary"
										href="#">Buy at 42299.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="images/cam2.jpg" alt="" /></a>
							<div class="caption">
								<h5>Fujifilm INSTAX Wide 300 Instant Camera</h5>
								<p>In Stock Available.</p>
								<h4 style="text-align: center"> <a class="btn btn-primary"
										href="#">Buy at 24799.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="images/cam3.jpg" alt="" /></a>
							<div class="caption">
								<h5>Nikon Coolpix A10</h5>
								<p>In Stock Available</p>
								<h4 style="text-align: center">
									<a class="btn btn-primary"
										href="#">Buy at 24999.00RS</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="images/w1.jpg" alt="" /></a>
							<div class="caption">
								<h5>Timewear analog black dial slim watch for men</h5>
								<p>In Stock Available</p>

								<h4 style="text-align: center">
								<a class="btn btn-primary"
										href="#">Buy at 1899.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="images/w2.jpg" alt="" /></a>
							<div class="caption">
								<h5>Casio Edifice Analog Dial Men's Watch</h5>
								<p>In Stock Available</p>
								<h4 style="text-align: center">
									<a class="btn btn-primary" href="#">Buy at 3599.00Rs</a>
								</h4>
							</div>
						</div>
					</li>
					<li class="span3">
						<div class="thumbnail">
							<a href="index.jsp"><img src="images/w3.jpg" alt="" /></a>
							<div class="caption">
								<h5>Sonata Analog Dial Men's Watch</h5>
								<p>In Stock Available</p>
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
	<div>
		<%@include file="/WEB-INF/views/footer.jsp"%>
	</div>
</body>
</html>