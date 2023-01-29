<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Issue History</title>
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
	background-color: #ebffec;
}

.content {
	margin-top: 20px;
	height: 483px;
}

#issue-history {
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
	<br>
	<div class="container-fluid">
		<h1 style="text-align: center; color: #367840; font-family: verdana; margin-bottom: 20px;">Issue
			History</h1>

		<div class="row">
			<div class="col-md-4">
				<form class="form-inline active-purple-4">
					<input class="form-control form-control-sm mr-3 w-75" type="text"
						placeholder="Search by issue ID" aria-label="Search">
					<button type="" submit" class="btn btn-sm btn-info">Search</button>
				</form>
			</div>
			<div class="col-md-4">
				<form class="form-inline active-purple-4">
					<input class="form-control form-control-sm mr-3 w-75" type="text"
						placeholder="Search by date" aria-label="Search">
					<button type="" submit" class="btn btn-sm btn-info">Search</button>
				</form>
			</div>
			<div class="col-md-4">
				<form class="form-inline active-purple-4">
					<input class="form-control form-control-sm mr-3 w-75" type="text"
						placeholder="Search by domain" aria-label="Search">
					<button type="" submit" class="btn btn-sm btn-info">Search</button>
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<br> <br> <br>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 ">
				<table class="table table-hover table-responsive-md btn-table tab">
					<thead>
						<tr>
							<th>Issue ID</th>
							<th>Domain</th>
							<th>Description</th>
							<th>Date of Settlelment</th>
							<th>Assigned Supervisor</th>
							<th>Give feedback</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>
								<button type="button"
									class="btn btn-teal btn-rounded btn-md m-0">Give
									Feedback</button>
							</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>
								<button type="button"
									class="btn btn-teal btn-rounded btn-md m-0">Give
									Feedback</button>
							</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>
								<button type="button"
									class="btn btn-teal btn-rounded btn-md m-0">Give
									Feedback</button>
							</td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>
								<button type="button"
									class="btn btn-teal btn-rounded btn-md m-0">Give
									Feedback</button>
							</td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>...</td>
							<td>
								<button type="button"
									class="btn btn-teal btn-rounded btn-md m-0">Give
									Feedback</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br>

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