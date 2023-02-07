<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="core.beans.*, core.dao.*, core.globals.*, java.util.ArrayList"%>
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
	height: 600px;
}

.row {
	font-size: 20px;
	margin: 0px;
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
	<div class="container content border border-4 border-info" style="background-color:\#DBF9FC">
		<h2 align=center>
			<%
			int issueId = Integer.parseInt(request.getParameter("issueId"));
			out.print("Issue Id: " + issueId);
			Issue issue = IssueDAO.fetchIssue(issueId);
			String domain = Dimensions.domainMap.get(issue.getDomain_Id()).getName();
			//Supervisor sup = SupervisorDAO.fetchSupervisor(issue.getAssigned_To());
			//String name = sup.getFirstName() + " " + sup.getLastName();
			%>
		</h2>
		<div class="row">
			<div class="col-md-5 col-lg-5 col-sm-5 border border-4 border-secondary" style="color:#607d8b">
				<h2 style="font-size: 30px" align=center>Issue Details</h2>
				<div>
					<p><%="<b>Domain: </b>" + domain%></p>
					<p><b> Description: </b><%=issue.getDescription()%></p>
					<p><b> Registered on: </b><%=issue.getRegTime()%></p>
					<p><b> Status: </b><%= Dimensions.statusMap.get(issue.getCurr_Status()).getName() %></p>
					<p><b> Assigned To: </b><%=issue.getAssigned_To() %></p>
					<br></br>

				</div>
			</div>
			
			<div class="col-md-1 col-lg-1 col-sm-1">
			</div>
			
			<div class="col-md-6 col-lg-6 col-sm-6 border border-4 border-info">
				<h2 style="font-size: 30px" align=center>
					<u>Messages</u>
				</h2>
				<div>
					<h6 style="font-size: 20px">
						<b> Domain: </b></h6>
					<br></br>
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