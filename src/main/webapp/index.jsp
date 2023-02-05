<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="core.beans.UserLevel, core.dao.UserLevelDAO, core.globals.*, java.util.ArrayList"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Issue Tracking System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="vendor/fontawesome/css/all.css" rel="stylesheet">

<link rel="stylesheet" href="css/homepage.css">

</head>

<body>
	<!-- Header -->


	<!-- Initialize values in all dimensions -->
	<%
	new Dimensions();
	%>

	<!-- Container Section- Content -->
	<div class="container-section">
		<div class="header">
			<h1>Grievances Redressal System</h1>
		</div>
		<div class="row">
			<!-- About Information -->
			<div class="col-sm-7 col-md-7 col-lg-7">
				<div class="sidecontent">
					<h2>This is a Grievances Redressal System for ABC University
						Hostel</h2>
					<p>Register your issue, and get it solved by Hostel Authorities</p>
				</div>
			</div>


			<!-- Login Form -->
			<div class="col-sm-5 col-md-5 col-lg-5"
				style="padding: 20px; margin: 0;">
				<form class="login-form" action="login/index.jsp" method="post">
					<div class="form-group">
						<label for="user-level-dd" class="form-label">Select User
							Level</label> <select class="form-select" name="user-level"
							id="user-level-dd" required autofocus>
							<%
							for (UserLevel ul : Dimensions.userLevels) {
								out.print("<option value  = \"" + ul.getId() + "\">" + ul.getUserLevel() + "</option>");
							}
							%>
						</select>
					</div>
					<br>
					<div class="form-group">
						<label for="inputUserName" class="form-label">User Name</label> <input
							type="text" id="inputUserName" class="form-control"
							name="username" placeholder="Enter User Name" required>
					</div>
					<br>
					<div class="form-group">
						<label for="inputPassword" class="form-label">Password</label> <input
							type="password" id="inputPassword" class="form-control"
							name="password" placeholder="Enter Password" required>
					</div>
					<br>
					<div class="d-grid gap-2">
						<button class="btn" type="submit"
							style="background-color: green; color: white; height: 40px; font-size: 16px;">
							<span> <i class="fa fa-sign-in"></i> Sign in
							</span>
						</button>
					</div>

					<br> <br>

					<div style="text-align: center;">
						<a href="#">Forgot Password?</a>
					</div>
				</form>
			</div>
		</div>
		<!-- Footer -->
		<div class="footer">
			<p>&copy; 2023 Grievances Redressal System</p>
		</div>
	</div>

</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</html>