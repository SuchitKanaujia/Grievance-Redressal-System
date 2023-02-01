<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="core.beans.Domain, core.globals.*, java.util.ArrayList"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register An Issue</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="../css/student-main.css">
</head>
<body>
	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>

	<!-- header closed -->
	<!--  content start -->

	<div class="container-flex">
		<div class="col-sm-8 offset-sm-2 col-md-6"
			style="padding: 20px; margin: 0;">
			<div class="container content">
				<h1 class="text-center">Register An Issue</h1>
				<form class="input-box" action="_issueRegistered.jsp" method="post">
					<div class="mb-3">
						<label for="domain-dd" class="form-label">Concerned Area</label> <select
							class="form-select" name="domain" id="domain-dd">
							<%
							for (Domain domain : Dimensions.domains) {
								out.print("<option value  = \"" + domain.getId() + "\">" + domain.getName() + "</option>");
							}
							%>
						</select>
					</div>
					<br>
					<div class="mb-3">
						<label for="issue-desc" class="form-label">Your issue</label>
						<textarea class="form-control" name="description" id="issue-desc"
							rows="3" placeholder="Explain your issue in detail here...."
							required></textarea>
					</div>
					<br>
					<div class="d-grid gap-2">
						<button class="btn" type="submit"
							style="background-color: green; color: white; height: 40px; font-size: 16px;">
							<span> Raise Issue <i class="fa fa-comments"></i>
							</span>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- content end -->

	<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>




	<!-- Bootstrap core JavaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

</body>
</html>