<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<title>Student Dashboard</title>
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style>
#student-homepage {
	color: white;
}

.main-button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	height: 300px;
	width: 300px;
	line-height: 15;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 20px;
	margin: 1% 2%;
	cursor: pointer;
	border-radius: 300px;
}

.main-button:hover {
	background-color: #156b19; /* Green */
	border: none;
	color: #cfcfcf;
	text-decoration: none;
}

.down-content {
	height: 180px;
	text-align: center;
	padding-top: 30px;
}

.left-content {
	margin-top: 30px;
	padding-top: 20px;
}

.side-content {
	margin-top: 30px;
	padding-top: 30px;
	text-align: center;
	background-color: #ebf5f3;
	border: 1px solid #9bbdb2;
	box-shadow: 5px 10px #b6d4ca;
}

.side-content>h3 {
	color: #34665c;
}

.side-content>p {
	color: #148770;
}

@media only screen and (max-width: 600px) {
	.main-button {
		height: 200px;
		width: 200px;
		line-height: 14;
		text-align: center;
		font-size: 14px;
		display: inline-block;
		text-align: center;
		cursor: pointer;
		border-radius: 200px;
	}
	.main-button:hover {
		background-color: #156b19; /* Green */
		border: none;
		color: #cfcfcf;
		text-decoration: none;
	}
}
</style>


</head>
<body>

	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>

	<div class="container">

		<div class="row">
			<div class="col-sm-9 left-content">
				<a href="registerAnIssue.jsp" class="main-button">Register a new
					issue</a> <a href="trackIssue.jsp" class="main-button">Track your
					issue</a>
			</div>

			<div class="col-sm-3 side-content">
				<h3>Status of your current Issue</h3>
				<p>There is no issue.......</p>
			</div>
		</div>
		<div class="down-content">
			<h4>Down Content</h4>
			<p>Remaining Content...</p>
		</div>

	</div>

	<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>




	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>