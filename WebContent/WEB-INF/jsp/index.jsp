<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<style>
body {
				background-image: url("/resources/img/kp.jpg");
				background-size: cover;
			}
</style>
<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title>UWindsor</title>

<meta name="keywords" content="">

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100'
	rel='stylesheet' type='text/css'>

<!-- styles -->
<link href="<c:url value="/resources/css/font-awesome.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/owl.carousel.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/owl.theme.css" />"
	rel="stylesheet">

<!-- theme stylesheet -->
<link href="<c:url value="/resources/css/style.default.css" />"
	rel="stylesheet" id="theme-stylesheet">

<!-- your stylesheet with modifications -->
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet">

<script src="<c:url value="/resources/js/respond.min.js" /> "></script>

<link rel="shortcut icon" href="favicon.png">



</head>

<body>

<!-- *** NAVBAR ***
 _________________________________________________________ -->

	<div class="navbar navbar-default yamm" role="navigation" id="navbar">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand home" href="#"
					data-animate-hover="bounce"> <img
					src="<c:url value="/resources/img/logo.jpg"/>" height="50" width="50"
					alt="UWindsor" class="hidden-xs"> <img
					src="<c:url value="/resources/img/logo.jpg"/>"
					alt="uWindsor" class="visible-xs"><span class="sr-only">go
						to homepage</span>
				</a>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">

				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="#">Kung Fu Master</a>
					</li>
				</ul>

			</div>
			<!--/.nav-collapse -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->

	<!-- *** NAVBAR END *** -->
					<div class="col-md-12">
					<div class="box">
						<h1>Login</h1>

						<div class="registrationFailure">${error}</div>
						<hr>

						<form action="login" method="POST" name="login" ><!-- onsubmit="return loginCheck();" -->
							<div class="form-group">
								<label for="email">Email</label> <input type="text"
									class="form-control" id="email" name="email" />
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password" />
							</div>
    						<br>
							<div class="text-left">								
								<button type="submit" class="btn btn-primary" id="login">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</div>
						</form>
					</div>
				</div>


			


	<!-- *** FOOTER ***
 _________________________________________________________ -->
<!--  
	<div id="footer" data-animate="fadeInUp">
		<div class="container">
			<div class="row">


				<!-- /.col-md-3 -->

 				<!-- <div class="col-md-3 col-sm-6">
				
				<img src="<c:url value="/resources/img/kp.jpg"/>" height = "500"
 width = "550"	align = "middle"> 	 --> 			


				</div>
				<!-- /.col-md-3 -->

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /#footer -->

	<!-- *** FOOTER END *** -->




	<!-- *** COPYRIGHT ***
 _________________________________________________________ 
	<div id="copyright">
		<div class="container">
			<div class="col-md-6">
				<p class="pull-left"></p>

			</div>
			<div class="col-md-6">
				<p class="pull-right">
					Template by <a
						href="https://bootstrapious.com/e-commerce-templates">Bootstrapious</a>
					& <a href="https://fity.cz">Fity</a>
					<!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
				</p>
			</div>
		</div>
	</div> 
	<!-- *** COPYRIGHT END *** -->
	<!-- /#all -->

	<!-- *** SCRIPTS TO INCLUDffE ***
 _________________________________________________________ -->
	<script src="<c:url value="/resources/js/jquery-1.11.0.min.js" /> "></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" /> "></script>
	<script src="<c:url value="/resources/js/jquery.cookie.js" /> "></script>
	<script src="<c:url value="/resources/js/waypoints.min.js" /> "></script>
	<script src="<c:url value="/resources/js/modernizr.js" /> "></script>
	<script
		src="<c:url value="/resources/js/bootstrap-hover-dropdown.js" /> "></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js" /> "></script>
	<script src="<c:url value="/resources/js/front.js" /> "></script>
	<script src="<c:url value="/resources/js/homepage.js" /> "></script>
	<script src="<c:url value="/resources/js/audio.js" /> "></script>

</body>

</html>