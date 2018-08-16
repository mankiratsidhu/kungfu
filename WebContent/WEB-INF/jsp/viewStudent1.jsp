<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>

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


<script type="text/javascript">
	$(document).ready(function() {
		var data = eval('${studentList}');
		alert("data gethered from DB= " + data);
		var table = $('#example').DataTable({
			"aaData" : data,
			"aoColumns" : [ {
				"mData" : "fname"
			}, {
				"mData" : "lname"
			}, {
				"mData" : "Stu_name"
			}, {
				"mData" : "address"
			} ]
		});
	});
</script>



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
					<li class="active"><a href="#">Big Boss</a></li>
				</ul>

			</div>
			<!--/.nav-collapse -->

			<div class="navbar-buttons">

				<div class="navbar-collapse collapse right" id="basket-overview">
					<a href="/home" class="btn btn-primary navbar-btn"> <span
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
						<strong>Hello Admin, Please fill in the form to create a
							student record!</strong>
					</div>

				</div>





























				<div class="col-md-10">
					<div class="box">
						<h1>View Information</h1>

						<div class="registrationFailure">${error}</div>
						<hr>




						<%@page import="java.sql.DriverManager"%>
						<%@page import="java.sql.ResultSet"%>
						<%@page import="java.sql.Statement"%>
						<%@page import="java.sql.Connection"%>

						<%
							String id = request.getParameter("userId");
							String driverName = "oracle.jdbc.driver.OracleDriver";
							String connectionUrl = "jdbc:oracle:thin:@localhost:1521:xe";
							String userId = "aman";
							String password = "Sopra123";

							try {
								Class.forName(driverName);
							} catch (ClassNotFoundException e) {
								e.printStackTrace();
							}

							Connection connection = null;
							Statement statement = null;
							ResultSet resultSet = null;
						%>

						<div class="form-group">
							<label for="search">Search</label> <input type="text"
								class="form-control" id="search" name="search" />
							<button type="search" class="btn btn-primary" id="search1">
								<i class="fa fa-user-md"></i> Search
							</button>
						</div>

						<table id="example" class="display" cellspacing="0" width="100%"
							style="overflow-x: auto">



							<thead>



								<tr>



									<th>FName</th>






									<th>lname</th>






									<th>Stu_num</th>






									<th>Address</th>



								</tr>



							</thead>



						</table>


					</div>
				</div>



			</div>
			<!-- /.container -->
		</div>
		<!-- /#content -->
	</div>


	<!-- *** FOOTER ***
 _________________________________________________________ -->
	<!--
  	<div id="footer" data-animate="fadeInUp">
		<div class="container">
			<div class="row">


				<!-- /.col-md-3 -->

	<div class="col-md-3 col-sm-6">
		<!--  
					<h4>Where to find us</h4>
				</div>
				<!-- /.col-md-3 -->
		<!-- 


				<div class="col-md-3 col-sm-6">

					<h4>Stay in touch</h4>


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
 _________________________________________________________ -->
	<!--  
	<div id="copyright">
		<div class="container">
			<div class="col-md-6">
				<p class="pull-left">© 2017 Codefellas</p>

			</div>
			<div class="col-md-6">
				<p class="pull-right">
					Template by <a
						href="https://bootstrapious.com/e-commerce-templates">Bootstrapious</a>
					& <a href="https://fity.cz">Fity</a>
					<!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
	<!-- 
	</p>
	</div>
	</div>
	</div> -->
	<!-- *** COPYRIGHT END *** -->
	<!-- /#all -->

	<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->


	<script src="<c:url value="/resources/js/bootstrap.min.js" /> "></script>
	<script src="<c:url value="/resources/js/jquery.cookie.js" /> "></script>
	<script src="<c:url value="/resources/js/waypoints.min.js" /> "></script>
	<script src="<c:url value="/resources/js/modernizr.js" /> "></script>
	<script src="<c:url value="/resources/js/bootstrap-hover-dropdown.js" /> "></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js" /> "></script>
	<script src="<c:url value="/resources/js/front.js" /> "></script>
	<script src="<c:url value="/resources/js/homepage.js" /> "></script>
	<script src="<c:url value="/resources/js/audio.js" /> "></script>
	<script src="<c:url value="/resources/js/jquery-1.12.1.min.js" /> "></script>
	<script src="<c:url value="/resources/js/jquery.dataTables.min.js" /> "></script>
	
	<spring:url value="/resources/js/jquery-1.12.1.min.js"     var="jqueryJs" />
        <script src="${jqueryJs}"></script>
    <spring:url value="/resources/js/jquery.dataTables.js"     var="datatable" />
        <script src="${datatable}"></script>



</body>

</html>