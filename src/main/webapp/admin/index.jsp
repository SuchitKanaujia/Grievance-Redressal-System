
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="core.dao.AdminDAO, java.util.*, core.beans.Admin, java.sql.Connection, java.sql.PreparedStatement,java.sql.ResultSet,java.time.LocalDate,helper.connection.SQLConnection,core.beans.Admin,helper.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<style>
#admin-homepage {
	color: white;
}
.content{
height: 500px;
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
	<div class="content"></div>

	<!-- content end -->
<%

//Setting up connection
try{
	ArrayList<Admin> allAdmins = AdminDAO.fetchAdmins(new String(""));

	out.print("<table><th>Id</th><th>First Name</th><th>Last Name</th><th>DoB</th><th>Gender</th>");
	for(Admin admin : allAdmins){
		out.print("<td><center><p style='color:green;'>" + admin.getEmpId() + "</h4></center></td>");
		out.print("<td><center><p style='color:green;'>" + admin.getFirstName() + "</h4></center></td>");
		out.print("<td><center><p style='color:green;'>" + admin.getLastName() + "</h4></center></td>");
		out.print("<td><center><p style='color:green;'>" + admin.getDOB() + "</h4></center></td>");
		out.print("<td><center><p style='color:green;'>" + admin.getGender() + "</h4></center></td>");
	}
	out.print("</table>");
}catch(Exception ex)
{
	out.print("<center><h4 style='color: red'>Some Error Occured: "+ex+" !</h4><center>");
	System.out.println(ex.getMessage());
}
%>

	<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
</html>