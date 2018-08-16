<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<html>
<div id="all">

	<div id="content">
		<div class="container">
		<div class="breadcrumb">
		
					<li><a href="/KungFu/login">Back</a></li>	
									</div>
			<div class="tab">
				<button class="tablinks" onclick="openInfo(event, 't1')" id="defaultOpen"><b>Student
					Info</b></button>
				<button class="tablinks" onclick="openInfo(event, 't2')"><b>Parent-Child
					Students</b></button>
				<button class="tablinks" onclick="openInfo(event, 't3')"><b>Class
					Schedule</b></button>
				<button class="tablinks" onclick="openInfo(event, 't4')"><b>Payment Detail
					</b></button>
				<button class="tablinks" onclick="openInfo(event, 't5')"><b>Attendance Detail
					</b></button>		
			</div>
			<div class="col-md-16">
				<div class="box" align="center">
					<div id=t1 class="tabcontent">
						<h2>Student Info</h2>


						<table id="example" class="display" cellspacing="0" width="90%"
							style="overflow-x: auto">
							<thead>
								<tr>
									<th><b>Student Number</b></th>
									<th><b>First Name</b></th>
									<th><b>Last Name</b></th>
									<th><b>Address</b></th>
									<th><b>Email</b></th>
									<th><b>D.O.B</b></th>
									<th><b>Joining Date</b></th>
									<th><b>Mobile Number</b></th>
									<th><b>Rank</b></th>

								</tr>
							</thead>
						</table>
					</div>
					<div id=t2 class="tabcontent">

						<h2>Parent-Child enrolled in the School</h2>


						<table id="pcduo" class="display" cellspacing="0" width="100%"
							style="overflow-x: auto">
							<thead>
								<tr>
									<th><b>Parent Name</b></th>
									<th><b>Child Name</b></th>
									<th><b>Relation</b></th>

								</tr>
							</thead>
						</table>
					</div>
					<div id=t3 class="tabcontent">
					<h2>Class Schedule</h2>


					<table id="classinfo" class="display" cellspacing="0" width="100%"
						style="overflow-x: auto">
						<thead>
							<tr>
								<th><b>Class Level</b></th>
								<th><b>Class Time</b></th>
								<th><b>Day of Week</b></th>
							</tr>
						</thead>
					</table>
</div>
					<div id=t4 class="tabcontent">
					<h2>Payment Detail</h2>


					<table id="payinfo" class="display" cellspacing="0" width="100%"
						style="overflow-x: auto">
						<thead>
							<tr>
								<th><b>Student Number</b></th>
								<th><b>Student Name</b></th>
								<th><b>Product Information</b></th>
								<th><b>Amount Paid in $</b></th>
								<th><b>Paid On</b>
							</tr>
						</thead>
					</table>
					</div>
					<div id=t5 class="tabcontent">
					<h2>Attendance Detail</h2>


					<table id="attinfo" class="display" cellspacing="0" width="100%"
						style="overflow-x: auto">
						<thead>
							<tr>
								<th><b>Student Number</b></th>
								<th><b>Student Name</b></th>
								<th><b>Class Level</b></th>
								<th><b>Attended Class on</b></th>
							</tr>
						</thead>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</html>
<script type="text/javascript">
	$(document).ready(function() {
		var data = eval('${studentList}');
		//alert("data gethered from DB1 = " + data);
		var table = $('#example').DataTable({
			"aaData" : data,
			"aoColumns" : [ {
				"mData" : "stu_num"
			}, {
				"mData" : "fname"
			}, {
				"mData" : "lname"
			}, {
				"mData" : "address"
			}, {
				"mData" : "email"
			}, {
				"mData" : "dob"
			}, {
				"mData" : "joining_date"
			}, {
				"mData" : "mobile"
			}, {
				"mData" : "rank"
			} ],
			columnDefs : [ {
				targets : 0,
				checkboxes : {
					selectRow : true
				}
			} ],
			select : {
				style : 'single',
				selector : 'td:first-child'
			}
		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
		var data = eval('${pcList}');
		//alert("data gethered from DB  2 = " + data);
		var table = $('#pcduo').DataTable({
			"aaData" : data,
			"aoColumns" : [ {
				"mData" : "pname"
			}, {
				"mData" : "sname"
			}, {
				"mData" : "relation"
			} ]
		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
		var data = eval('${classList}');
		//alert("data gethered from DB 3 = " + data.toString());
		var table = $('#classinfo').DataTable({
			"aaData" : data,
			"aoColumns" : [ {
				"mData" : "pname"
			}, {
				"mData" : "sname"
			}, {
				"mData" : "relation"
			} ]
		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
		var data = eval('${payList}');
		//alert("data gethered from DB 3 = " + data.toString());
		var table = $('#payinfo').DataTable({
			"aaData" : data,
			"aoColumns" : [ {
				"mData" : "stu_num"
			}, {
				"mData" : "name"
			}, {
				"mData" : "product"
			}, {
				"mData" : "amount"
			}, {
				"mData" : "paydate"
			} ]
		});
	});
</script>

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
				"mData" : "class_level"
			}, {
				"mData" : "att_date"
			} ]
		});
	});
</script>
<script>
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>