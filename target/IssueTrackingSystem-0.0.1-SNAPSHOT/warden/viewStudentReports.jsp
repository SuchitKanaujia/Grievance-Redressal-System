<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Reports</title>
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
	background-color: #e4c6cc;
}

.content {
	margin-top: 20px;
	height: 483px;
}

#student-reports, #view-reports {
	color: white;
}
</style>
</head>
<body>
	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>

	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>

	<!-- header closed -->
	<!--  content start -->
	<div class="container content">
		<h1>Student Reports</h1>
	</div>
	<!-- content end -->

	<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>




	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>


</body>
</html>