<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Issues</title>
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="vendor/fontawesome/css/all.css" rel="stylesheet">

<style>
body {
	background-color: lightblue;
}

.content {
	margin-top: 20px;
	height: 483px;
}

#view-issues {
	color: white;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>

	<!-- header closed -->
	<!--  content start -->
	<div class="container content">
		<h2>
		<%
		int issueId = Integer.parseInt(request.getParameter("issueId");
		out.print("Issue Id: " + issueId);
		Issue issue = IssueDAO.fetchIssue(issueId);
		String domain = Dimensions.domainMap.get(issue.getDomain_Id());
		%>
		</h2>
		
		
		<div class="content">
			<div class="row">
				<div class="col-md-4 col-lg-4 col-sm-4">
					<div class="border-start">
						<h2>Issue Details</h2>
					
							<p><b><%= "Domain: " +  domain %></b></p>
					
					</div>
						
			
			
				</div>
			</div>
		</div>
		

		


	</div>
	<!-- content end -->

	<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>