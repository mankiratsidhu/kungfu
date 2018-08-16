<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>

<meta charset="utf-8">
<meta name="robots" content="all,follow">
<meta name="googlebot" content="index,follow,snippet,archive">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Obaju e-commerce template">
<meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
<meta name="keywords" content="">

<title>uWindsor</title>

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

				<a class="navbar-brand home" href="#" data-animate-hover="bounce">
					<img src="<c:url value="/resources/img/logo.jpg"/>" height="50"
					width="50" alt="uWindsor" class="hidden-xs"> <img
					src="<c:url value="/resources/img/logo.jpg"/>" alt="uWindsor"
					class="visible-xs"><span class="sr-only">go to
						homepage</span>
				</a>
			</div>
			<!--/.navbar-header -->

			<div class="navbar-collapse collapse" id="navigation">

				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="#">Kung Fu Master</a></li>
				</ul>

			</div>
			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="/KungFu/home" class="btn btn-primary navbar-btn"> <span
						class="hidden-sm">logout</span></a>
				</div>
				<!--/.nav-collapse -->
			</div>

		</div>
		<!-- /.container -->
	</div>
	<!-- /#navbar -->

	<!-- *** NAVBAR END *** -->

	<div id="all">

		<div id="content">
			<div class="container">

				<div class="col-md-12">
		<div class="breadcrumb">
								<strong>Hello Admin, Fill in the form to create a student record!</strong>
		<BR>
					<li><a href="/KungFu/login">Back</a></li>	
									</div>
					<!-- <div class="breadcrumb">
						<strong>Hello Admin, Fill in the form to create a student record!</strong>
					</div>-->
					

				</div>

				<div class="col-md-12" >
					<div class="box">
						<h1>Enter Student Information</h1>

						<div class="registrationFailure">${error} </div>
						<hr>

						<form action="studentAdd" method="POST"  name="studentAdd" ><!-- onsubmit="return registerCheck();" -->
							<div class="form-group">
								<label for="fname">First Name</label> <input type="text"
									class="form-control" id="fname" name="fname" />
									<label for="lname">Last Name</label> <input type="text"
									class="form-control" id="lname" name="lname" />
									<label for="street">Street</label> <input type="text"
									class="form-control" id="street" name="street" />
									<label for="city">City</label> <input type="text"
									class="form-control" id="city" name="city" />
									<label
									for="province">Province</label>
									<select name="province" class="form-control">
									 <option value="">Select</option>
									 <option value="AB">Alberta
									<option value="BC">British Columbia
									<option value="MB">Manitoba
									<option value="NB">New Brunswick
									<option value="NL">Newfoundland and Labrador	
									<option value="NT">Northwest Territories
									<option value="NS">Nova Scotia
									<option value="ON">Ontario
									<option value="QC">Quebec
									<option value="SK">Saskatchewan
									<option value="YT">Yukon
									</select>
									<label for="zip">Postal Code</label> <input type="text" maxlength="6"
									class="form-control" id="zip" name="zip" />
									<label for="email">Email</label> <input type="text"
									class="form-control" id="email" name="email" />
									<label for="mobile">Mobile</label> <input required type="text"
									class="form-control" id="mobile" name="mobile" />
									<label for="dob">Date of Birth</label> <input type="date"
									class="form-control" id="dob" name="dob" />
							</div>
							
							
													<h2>Enter Parents Information</h2>
													<h3>Father Information</h3>
							<div class="form-group">
								<label for="ffname">First Name</label> <input type="text"
									class="form-control" id="ffname" name="ffname" />
									<label for="flname">Last Name</label> <input type="text"
									class="form-control" id="flname" name="flname" />
									<label for="femail">Email</label> <input type="text"
									class="form-control" id="femail" name="femail" />
									<label for="fmobile">Mobile</label> <input type="text"
									class="form-control" id="fmobile" name="fmobile" />
									
									
							</div>
							<h3>Mother Information</h3>
							<div class="form-group">
								<label for="mfname">First Name</label> <input type="text"
									class="form-control" id="mfname" name="mfname" />
									<label for="mlname">Last Name</label> <input type="text"
									class="form-control" id="mlname" name="mlname" />
									<label for="memail">Email</label> <input type="text"
									class="form-control" id="memail" name="memail" />
									<label for="mmobile">Mobile</label> <input type="text"
									class="form-control" id="mmobile" name="mmobile" />
									
							</div>
							<div >
							<label for="purchase">Want to pay for : <br>  </label> 
							<input type="checkbox" id="product1" name="product1" value="Membership"  checked="checked" style="display:none">     
							<input type="checkbox" id="product1" name="product1" value="Dress"> Dress ($140)    
							<input type="checkbox" name="product1" value="Test">  Test ($90)
							<input type="checkbox" name="product1" value="Belt">  Belt ($50)
							
									</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary" id="createStudent">
									<i class="fa fa-user-md"></i> Create
								</button>
							</div>
						</form>
					</div>
				</div>



			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
	</div>






	<!-- *** SCRIPTS TO INCLUDE ***
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