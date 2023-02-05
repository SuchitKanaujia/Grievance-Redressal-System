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
		<h1>View Issues</h1>


		<div class="table-responsive">
			<table class="table  table-hover table-bordered">
				<thead>
					<tr>
						<th>#</th>
						<th>ID</th>
						<th>Description</th>
						<th>Date of Reg</th>
						<th>Student Id</th>
						<th>Student Name</th>
						<th>Take Over</th>


					</tr>
				</thead>
				<tbody>
					<%
					String uid = UserDetails.userId;
					ArrayList<Issue> issues = IssueDAO
							.fetchIssues("[Curr_Status] = 1 AND [Domain_Id] =  '" + UserDetails.supervisor.getDomainId() + " '");
					int index = 0;
					ArrayList<String> studentIds = new ArrayList<String>();
					for (Issue issue : issues) {
						studentIds.add(issue.getRegistered_By());
					}
					HashMap<String, String> nameHash = StudentDAO.fetchNames(studentIds);

					for (Issue issue : issues) {
						int id = issue.getId();
						String description = issue.getDescription();
						String time = issue.getRegTime().toString().substring(0, 10);
						//String time = "ddmmyyyy";
						out.print("<tr id=\"tableRow" + id + "\"> <th>" + (index + 1) + "</th> <td>" + id + "</td> <td>" + description
						+ "</td> <td> " + time + "</td> <td>" + studentIds.get(index) + "</td> <td>"
						+ nameHash.get(studentIds.get(index)) + "</td> <td> <span onclick=\"takeOverIssue(" + id
						+ ")\" id=\"iconId\" name=\"" + id
						+ "\" ><i class=\"fa fa-plus\" aria-hidden=\"true\"></i></span> </td> </tr>");

						index++;
					}
					%>
				</tbody>
			</table>
		</div>
		<p id="this111">I will tell which button is clicked</p>
		<p id="status"></p>


	</div>
	<!-- content end -->

	<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>

	<script>
		function takeOverIssue(issueId) {
			var url = "../issues/assignIssue.jsp?issueId=" + escape(issueId);
			var xhttp = new XMLHttpRequest();
			document.getElementById("this111").innerHTML = url;
			xhttp.onreadystatechange = function() {

				if (this.readyState == 4 && this.status == 200) {
					success = "Success"
					document.getElementById("this111").innerHTML = this.responseText.length;

					if (this.responseText[0] == "S") {
						document.getElementById("tableRow" + issueId).remove();
						document.getElementById("status").innerHTML = "<b>The issue with id: "
								+ issueId + " has been assigned to you!</b>";
						document.getElementById("status").style.color = "green";
					} else {
						document.getElementById("status").innerHTML = "<b>Could not assign the selected issue to you, please refresh the page and try again!!</b>";
						document.getElementById("status").style.color = "red";
					}
				}
			};
			xhttp.responseType = 'text';
			xhttp.open("GET", url, true);
			xhttp.send("");
		}
	</script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>