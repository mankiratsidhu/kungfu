<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"/>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
					<li><a href="/KungFu/login">Back</a></li>	
									</div>

				</div>

				<div class="col-md-12">
					<div class="box" align="center">
						<h1>Promote Student</h1>

						<div class="registrationFailure">${error}</div>
						<hr>
					<h3>Enter Below Information</h3>
						<form action="promoAdd" method="POST" name="promoAdd">
							<!-- onsubmit="return registerCheck();" -->
							<div class="form-group">
								<label for="snum">Student Number</label> <input type="number"
									class="form-control" id="snum" name="snum" />
									
									<label
									for="aton">Promoted on</label> <input type="date"
									class="form-control" id="aton" name="aton" />
								
								 </div>
							
							<div class="text-center">
								<button type="submit" class="btn btn-primary" 
								id="createStudent">
									<i class="fa fa-user-md"></i> Add
								</button>
							</div>
						</form>
						
						<h2>Promotion Details</h2>


					<table id="attinfo" class="display" cellspacing="0" width="100%"
						style="overflow-x: auto">
						<thead>
							<tr>
								<th><b>Student Number</b></th>
								<th><b>Student Name</b></th>
								<th><b>Rank</b></th>
								<th><b>Awarded Date</b></th>
							</tr>
						</thead>
					</table>
					<BR>
					<BR>
					<b align="center">Filter records by Student Number</b>
					<form action="filterp" method="POST" name="filterp" >
							<!-- onsubmit="return registerCheck();" -->
							<div class="form-group" align="center">
								<label for="s_num">Student Number</label> <input type="Number"
									class="form-control" id="s_num" name="s_num" />
								
								 </div>
							
							<div class="text-center">
								<button type="submit" class="btn btn-primary" 
								id="createStudent">
									<i class="fa fa-user-md"></i> Search
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
<script type="text/javascript">
	$(document).ready(function() {
		var data = eval('${attList}');
		//alert("data gethered from DB 3 = " + data.toString());
		var table = $('#attinfo').DataTable({
			"aaData" : data,
			"aoColumns" : [ {
				"mData" : "stu_num"
			}, {
				"mData" : "name"
			}, {
				"mData" : "rank"
			}, {
				"mData" : "award_date"
			} ]
		});
	});
</script>
</body>

</html>