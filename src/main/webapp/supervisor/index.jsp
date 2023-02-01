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
	padding: 0px 20px 20px 20px;
}

.side-bar-issue {
	border: 2px Green solid;
	border-radius: 40px;
	line-height: 3;
	padding: 30px;
	margin-left: 130px;
	margin-right: 30px;
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
	<div class="content">
		<div class="row">
			<div class="col-md-8 col-lg-8">
				<h2>Active Issues</h2>

				<div class="table-responsive">
					<table class="table  table-hover table-bordered">
						<thead>
							<tr>
								<th>#</th>
								<th>ID</th>
								<th>Description</th>
								<th>Date of Reg</th>
								<th>Status</th>
								<th>Student Id</th>
								<th>Student Name</th>


							</tr>
						</thead>
						<tbody>
							<%
							String uid = UserDetails.userId;
							ArrayList<Issue> issues = IssueDAO.fetchIssues("[Assigned_To] = '" + uid + "' AND [Curr_Status]<4");
							int index = 0;
							ArrayList<String> studentIds = new ArrayList<String>();
							for (Issue issue : issues) {
								studentIds.add(issue.getRegistered_By());
							}
							HashMap<String, String> nameHash = StudentDAO.fetchNames(studentIds);
							int totalSolvedIssues = 0;
							int todatRegisteredIssues = 0;
							for (Issue issue : issues) {
								int id = issue.getId();
								String description = issue.getDescription();
								String status = Dimensions.statusMap.get(issue.getCurr_Status()).getName();
								String time = issue.getRegTime().toString().substring(0, 10);
								//String time = "ddmmyyyy";
								out.print("<tr> <th>" + index + 1 + "</th> <td>" + id + "</td> <td>" + description + "</td> <td> " + time
								+ " </td> <td>" + status + "</td> <td>" + studentIds.get(index) + "</td> <td>"
								+ nameHash.get(studentIds.get(index)) + "</td> </tr>");
								
								if (issue.getCurr_Status() == 4){
									totalSolvedIssues ++;
								}
								if (issue.getCurr_Status() < 5){
									todatRegisteredIssues ++;
								}
								index++;
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-4 col-lg-4">
				<div class="side-bar-issue">
					<p>
						<b> Total Solved Issues :</b>
						<%=totalSolvedIssues %>
					</p>
					<p>
						<b> Today Registered Issues :</b>
						<%= todatRegisteredIssues %>
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