<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Navigation bar</title>

<!-- Bootstrap core CSS -->
<link href="../../vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../css/navbar.css" rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"
		style="background-color: green;">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#">Student
				Dashboard</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="student-homepage"
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="register-an-issue"
						href="registerAnIssue.jsp">Register an Issue</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="track-issue"
						href="trackIssue.jsp">Track Issue</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="issue-history"
						href="issueHistory.jsp">Issue History</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="notifications"
						href="notifications.jsp">Notifications</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Bootstrap core JavaScript -->
	<script src="../../vendor/jquery/jquery.min.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom JavaScript for this theme -->
	<script src="../../js/navbar.js"></script>

</body>

</html>
