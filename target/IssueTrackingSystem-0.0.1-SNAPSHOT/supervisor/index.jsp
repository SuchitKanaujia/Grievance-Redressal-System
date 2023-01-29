<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Supervisor Dashboard</title>
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style>
.content {
	margin-top: 20px;
	padding-bottom: 20px;
}

.side-bar-issue {
	border: 2px Green solid;
	border-radius: 40px;
	line-height: 3;
	padding: 30px;
	margin-top: 60px;
}

th {
	background-color: green;
	color: white;
}

#supervisor-homepage {
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
		<div class="row">
			<div class="col-md-8 col-lg-8">
				<h2>Issue Reports</h2>

				<div class="table-responsive">
					<table class="table  table-hover table-bordered">
						<thead>
							<tr>
								<th>#</th>
								<th>ComplaintID</th>
								<th>Description</th>
								<th>Status</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>ELC0001</td>
								<td>Some info...</td>
								<td>In Process</td>

							</tr>
							<tr>
								<td>2</td>
								<td>HYG0001</td>
								<td>Some info...</td>
								<td>Closed</td>

							</tr>
							<tr>
								<td>3</td>
								<td>RRM0001</td>
								<td>Some info...</td>
								<td>Completed</td>

							</tr>
							<tr>
								<td>4</td>
								<td>MSS0001</td>
								<td>Some info...</td>
								<td>In Process</td>

							</tr>
							<tr>
								<td>5</td>
								<td>MSS0002</td>
								<td>Some info...</td>
								<td>Cancelled</td>

							</tr>
							<tr>
								<td>6</td>
								<td>ELC0003</td>
								<td>Some info...</td>
								<td>Completed</td>

							</tr>
							<tr>
								<td>7</td>
								<td>MSS0002</td>
								<td>Some info...</td>
								<td>In Process</td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-4 col-lg-4">
				<div class="side-bar-issue">
					<p>
						<b> Total Solved Issues :</b> #data
					</p>
					<p>
						<b> Today Registered Issues :</b> #data
					</p>
				</div>
			</div>
		</div>
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