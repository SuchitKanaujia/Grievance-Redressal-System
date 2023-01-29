<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Issue Tracking System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/homepage.css">

</head>

<body>
	<!-- Header -->
	<div class="header">
		<h1>Issue Tracking System</h1>
	</div>


	<!-- Container Section- Content -->
	<div class="container-section">
		<div class="row">
			<!-- About Information -->
			<div class="col-sm-7 col-md-7 col-lg-7">
				<div class="sidecontent">
					<h2>This is an Issue Tracking System for ABC University Hostel</h2>
					<p>Register your issue, and get it solved by Hostel Authorities</p>
				</div>
			</div>


			<!-- Login Form -->
			<div class="col-sm-5 col-md-5 col-lg-5"
				style="padding: 20px; margin: 0;">
				<form class="login-form" action="login/index.jsp" method="post">
					<div class="form-element">
						<label for="inputUserName">User Name</label> <input type="text"
							id="inputUserName" class="form-control" name="username"
							placeholder="Enter User Name" required autofocus>
					</div>
					<br>

					<div class="form-element">
						<label for="inputPassword">Password</label> <input type="password"
							id="inputPassword" class="form-control" name="password"
							placeholder="Enter Password" required>
					</div>
					<br>

					<button class="btn btn-block" type="submit"
						style="background-color: green; color: white; height: 50px; font-size: 16px;"><span>
						<i class="fa fa-sign-in"></i> Sign in</span>
					</button>
					<br> <br>

					<div style="text-align: center;">
						<a href="#">Forgot Password?</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<p>&copy; 2018 Issue Tracking System</p>
	</div>

</body>
</html>