<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="core.beans.Issue, core.dao.IssueDAO, core.globals.*, java.util.ArrayList"
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

<style>
</style>
</head>
<body>
	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>
	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>

	<!-- header closed -->
	<!--  content start -->

	<%
	String domainId = request.getParameter("domain");
	String desc = request.getParameter("description");
	try {
		Issue issue = new Issue();
		issue.setDomain_Id(domainId);
		issue.setDescription(desc);
		issue.setRegistered_By(UserDetails.userId);
		int issueId = issue.add();
		if (issueId > 0) {
			out.print("<p style=\"color:green;\"><b>Issue raised Successfully!!</b></p> <br> "
			+ "<p style=\"color:green;\">Your Issue Id is: " + issueId + " </p>");
		} else {
			out.print(
			"<p style=\"color:red;\"><b>Something went wrong!!</b></p> <br> <p style=\"color:red;\">Could not insert your issue, Please try again!</p>");
		}
	} catch (Exception ex) {
		System.out.println(ex);
	}
	%>


	<br>
	<br>
	<div class="container-flex">
		<form action="registerAnIssue.jsp" method="post">
		<div class="d-grid gap-2">
			<button class="btn" type="submit"
				style="background-color: green; color: white; height: 40px; font-size: 16px;">
				<span> Raise Issue <i class="fa fa-comments"></i>
				</span>
			</button>
		</div></form>
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