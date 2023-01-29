<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Warden Dashboard</title>
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style>
#warden-homepage {
	color: white;
}

.main-container {
	padding: 40px;
}

.content-heading {
	text-align: center;
	font-family: verdana;
	color: #367840;
	padding-bottom: 10px;
}

th {
	background-color: green;
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
	<div class="main-container">

		<h2 class="content-heading">Unattended Issues</h2>

		<div class="table-responsive">
			<table class="table  table-hover table-bordered">
				<thead>
					<tr>
						<th>#</th>
						<th>ComplaintID</th>
						<th>StudentID</th>
						<th>Description</th>
						<th>Domain</th>
						<th>Date</th>
						<th>Assign</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>ELC0001</td>
						<td>17BCE10038</td>
						<td>Some info...</td>
						<td>Mess</td>
						<td>30/01/2019</td>
						<td>
							<button type="button" class="btn btn-success">Assign</button>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>HYG0001</td>
						<td>17BCE10049</td>
						<td>Some info...</td>
						<td>Electric</td>
						<td>20/03/2019</td>
						<td>
							<button type="button" class="btn btn-success">Assign</button>
						</td>

					</tr>
					<tr>
						<td>3</td>
						<td>RRM0001</td>
						<td>17BCE10049</td>
						<td>Some info...</td>
						<td>Hygine</td>
						<td>26/05/2019</td>
						<td>
							<button type="button" class="btn btn-success">Assign</button>
						</td>

					</tr>
					<tr>
						<td>4</td>
						<td>MSS0001</td>
						<td>17BCE10112</td>
						<td>Some info...</td>
						<td>Personal Issues</td>
						<td>26/05/2019</td>
						<td>
							<button type="button" class="btn btn-success">Assign</button>
						</td>

					</tr>
					<tr>
						<td>5</td>
						<td>MSS0002</td>
						<td>17BCE10002</td>
						<td>Some info...</td>
						<td>Personal Issues</td>
						<td>23/05/2019</td>
						<td>
							<button type="button" class="btn btn-success">Assign</button>
						</td>

					</tr>
					<tr>
						<td>6</td>
						<td>HYG0001</td>
						<td>18BCE10285</td>
						<td>Some info...</td>
						<td>Personal Issues</td>
						<td>26/05/2019</td>
						<td>
							<button type="button" class="btn btn-success">Assign</button>
						</td>

					</tr>
				</tbody>
			</table>
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