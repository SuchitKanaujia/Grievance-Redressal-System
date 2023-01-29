<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Managements</title>
<style>
 #user-management{
  color: white;
  }
/*Sidebar Styling*/
.sidebar {
	border: 2px solid #026327;
  	box-shadow: 5px 10px #5b7364;
	margin: 130px 10px 10px;
	position: fixed;
}


.sidebar a{
  text-decoration: none;
  font-family: verdana;
  font-size: 16px;
  color:white;
  display: block;
  padding: 10px 5px 10px 5px;
  transition: 0.3s;
  background-color:#016344;
}
.sidebar a:hover {
  color: #016344;
  background-color: white;
  text-decoration: none;
}
</style>
</head>
<body>

	<!-- Including Navigation Bar -->
	<%@include file="../includes/navbar.jsp"%>
	<div class="row">
	<div class="col-sm-2" style="height: 680px;">
		<div class="sidebar" style="width: auto;">
			<a href="#" onclick="userManagementHome()">User Management Home</a>
			<a href="#" onclick="singleUserCreation()">User Creation(Single)</a>
			<a href="#" onclick="multiUserCreation()">User Creation(Multiple)</a>
			<a href="#" onclick="userModification()">User Modification</a>
			<a href="#" onclick="userDeletion()">User Deletion</a>
		</div>
	</div>
