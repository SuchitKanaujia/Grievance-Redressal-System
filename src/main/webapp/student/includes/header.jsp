<%@ page language="java"
	import="core.globals.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Header</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="../../vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="../../vendor/jquery/jquery.min.js"></script>
<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/homepage.css">
<style>
.header-row {
	text-align: center;
	background-color: #54995c;
	padding: 5px;
	margin: 0;
	margin-top: 55px;
}

.header-buttons-container {
	margin: 0;
	padding: 0;
}

.header-buttons {
	background-color: #e1fae4;
	border: 0.5px solid #8cbd92;
	color: #3a543d;
	font-size: 12px;
	font-family: verdana;
}

.header-buttons:hover, .header-buttons:active {
	background-color: #3b7d41;
	color: white;
}

.header-buttons:visited {
	border: 0.5px solid green;
}

.header-welcome {
	line-height: 1;
	font-size: 15px;
	font-family: cursive;
	font-size: 15px;
	color: white;
	float: left;
}

.header-image {
	float: right;
}

@media only screen and (max-width: 960px) {
	.header-welcome {
		font-size: 11px;
	}
	.header-buttons {
		font-size: 8px;
	}
}

@media only screen and (max-width: 750px) {
	.header-welcome {
		font-size: 9px;
	}
	.header-buttons {
		font-size: 7px;
	}
}

@media only screen and (max-width: 600px) {
	.header-image {
		float: none;
	}
	.header-welcome {
		float: none;
		font-size: 9px;
	}
	.header-buttons {
		font-size: 7px;
	}
}
</style>
</head>
<body>
	<div class="row header-row">
		<div class="col-sm-4 header-info">
			<div class="row">
				<div class="col-sm-6">
					<img src="../images/dummyImage.jpg" class="header-image"
						alt="Dummy Image" height="30px" style="border-radius: 10px;">
				</div>
				<div class="col-sm-6">
					<p class="header-welcome">Welcome <%= UserDetails.userName %> </p>
				</div>
			</div>
		</div>
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="row header-buttons-container">
				<div class="col-sm-6">
					<a href="#" class="btn btn-default btn-sm header-buttons">Edit
						Profile </a>
				</div>
				<div class="col-sm-6">
					<a href="../" class="btn btn-default btn-sm header-buttons">Logout
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>