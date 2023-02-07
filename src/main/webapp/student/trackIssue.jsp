<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="core.beans.*, core.dao.*, core.globals.*, java.util.ArrayList"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Track Issue</title>
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

#track-issue {
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
	<br>
	<!--  content start -->
	<div class="container-fluid">
		<h1 style="text-align: center; color: #367840; font-family: verdana;">Track
			issue</h1>

		<div class="row">
			<div class="col-md-4">
				<form class="form-inline active-purple-4">
					<input class="form-control form-control-sm mr-3 w-75" type="text"
						placeholder="Search by complaint ID" aria-label="Search">
					<button type="button" class="btn btn-sm btn-info">Search</button>
				</form>
			</div>
			<div class="col-md-4">
				<form class="form-inline active-purple-4">
					<input class="form-control form-control-sm mr-3 w-75" type="text"
						placeholder="Search by date of registration" aria-label="Search">
					<button type="button" class="btn btn-sm btn-info">Search</button>
				</form>
			</div>
			<div class="col-md-4">
				<form class="form-inline active-purple-4">
					<input class="form-control form-control-sm mr-3 w-75" type="text"
						placeholder="Search by domain" aria-label="Search">
					<button type="button" class="btn btn-sm btn-info">Search</button>
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<br> <br> <br>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover table-responsive-md btn-table tab">
					<thead>
						<tr>
							<th>Complaint ID</th>
							<th>Domain</th>
							<th>Description</th>
							<th>Date of Registration</th>
							<th>Status</th>
							<th>Know more</th>
						</tr>
					</thead>

					<tbody>
						<%
						String uid = UserDetails.userId;
						ArrayList<Issue> issues = IssueDAO.fetchIssues("[Registered_By] = '" + uid + "'");
						for (Issue issue : issues) {
							int id = issue.getId();
							String domainName = Dimensions.domainMap.get(issue.getDomain_Id()).getName();
							String description = issue.getDescription();
							String status = Dimensions.statusMap.get(issue.getCurr_Status()).getName();
							out.print("<tr> <th>" + id + "</th> <td>" + domainName + "</td> <td>" + description
							+ "</td> <td> DD/MM/YYYY </td> <td>" + status
							+ "</td> <td><button type=\"button\" class=\" btn btn-teal btn-rounded btn-md m-0\" onClick=\"location.href = \'issue.jsp?issueId="
							+ id + "\'\" >More</button></td> </tr>");
						}
						%>

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