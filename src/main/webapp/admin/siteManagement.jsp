<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, its.userlevel.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Site Management</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="../css/admin-panel-site-mng.css">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="../js/admin-panel.js"></script>
<style>
body{
overflow-x:hidden;
}
.page-header {
	font-size: verdana;
	color: #306126;
}
#add-user-level-form, #modify-user-level-form {
	margin-left: 5%;
	margin-right: 5%;
	padding-left: 5%;
	padding-right: 5%;
	border: 2px solid green;
	border-radius: 10px;
}
</style>
</head>
<body>


	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>

	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>
	<!-- header closed -->

	<!--  Content Start -->

	<div class="content">


		<!-- Main Form -->
		<form class="form-horizontal" id="site-management-main-form">
			<div class="form-group">
				<div class="row">
					<div class="col-md-4">
						<label for="dynamic-entry-combo">Dynamic Entity</label>
					</div>
					<div class="col-md-8">
						<div class="input-group">
							<select class="custom-select custom-select-md mb-3"
								id="dynamic-entry-combo" onchange="dynamicFieldSelect()">
								<option value="">--Select Dynamic Field--</option>
								<option value="1">User Level</option>
								<option value="2">Domain</option>
								<option value="3">Department</option>
								<option value="4">Designation</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row" id="operation-select" hidden>
					<div class="col-md-4">
						<label for="operation-combo">Operation</label>
					</div>
					<div class="col-md-8">
						<div class="input-group">
							<select class="custom-select custom-select-md mb-3"
								id="operation-combo" onchange="optionSelect()">
								<option value="">--Select Operation--</option>
								<option value="1">Add</option>
								<option value="2">Modify/Delete</option>

							</select>
						</div>
					</div>
				</div>
			</div>
		</form>
		<hr>





		<!-- Add User Level Form -->
		<div id="add-user-level-form" hidden>
			<form class="form-horizontal" action="users/createUserLevel.jsp" method="post">
				<div class="page-header">
					<h2>Create User Level</h2>
				</div>
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-md-4">
							<label for="user-level-name">User Level Name</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" name="user-level-name"
								placeholder="Enter Name for User Level" id="user-level-name">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="user-level-description">Description about User Level</label>
						</div>
						<div class="col-md-8">
							<textarea rows="3" class="form-control"
								name="user-level-description" id="user-level-description">
            				</textarea>
						</div>
					</div>
					<br><hr>
					<h3>Attributes you wish to add:</h3>
					<div class="row">
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulName" checked >First, Middle, Last Name</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulDGBG" checked>DOB, Gender, Blood Group</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulEmail">Email, Alternate Email</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulContact">Contact No, Alternate Contact No</label>
					</div>
					</div>
					<br>
					<div class="row">
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulPAddr">Permanent Address</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulCAddr">Current Address</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulFatherDetails">Father's Details</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulMotherDetails">Mother's Details</label>
					</div>
					</div>
					<br>
					<div class="row">
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulStudentBasic">Student Basic Academic Info</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulProcter">Procter's Information and Fee Status</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulEmployeeBasic">Employee Basic Info</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulDepDesDOJ">Department, Designation, Date of Joining</label>
					</div>
					</div>
					<br>
					<div class="row">
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulDomDOJ">Domain, Date of Joining</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulDomDesDOJ">Domain, Designation, Date of Joining</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulHostel">Hostel and Mess Information</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="aulPwd" checked>Password</label>
					</div>
					</div>
					<br>
					<hr>
					<h3>Functionalities you wish to add: </h3>
					<div class="row">
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulRegComplaint">Register a Complaint</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulTrackComplaint">Track Complaint</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulAppComplaint">Approve Complaint</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulModComplaint">Modify/Delete Complaint</label>
					</div>
					</div>
					<br>
					<div class="row">
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulGenReports">Generate Reports</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulUserMng">User Management</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulSiteMng">Site Management</label>
					</div>
					<div class="checkbox col-md-3">
						<label><input type="checkbox" name="fulEditProfile">Edit Profile</label>
					</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<button type="submit"
								class="btn btn-outline-success btn-md  form-control">CREATE USER-LEVEL</button>
						</div>
						<div class="col-md-4"></div>
					</div>
				</div>
			</form>
		</div>







		<!-- Modify/Delete UserLevel -->
		<div id="modify-user-level-form" hidden>
			<form class="form-horizontal" action="users/modifyUserLevel.jsp" method="post">
				<div class="page-header">
					<h2>Modify User Level</h2>
				</div>
				<br>
				<div class="form-group">
					<div class="form-group row" id="div-user-level">
						<div class="col-sm-3"></div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="user-level">User Level:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<%
								UserLevelDAO uldao = new UserLevelDAO();
								HashMap<Integer, String> ul_map = new HashMap<Integer, String>();
								ul_map = uldao.getUserLevelBasicInfo();
							%>
							<select class="form-control" id="user-level" name="userLevel"
								onchange="userLevelSelected()">
								<option value="0">--Select User Level--</option>
									<%
										for (Integer key : ul_map.keySet()) {
											out.print("<option value='" + key + "'>" + ul_map.get(key) + "</option>");
										}
									%>
								</select>
						</div>
						<div class="col-sm-3"></div>
					</div>
				</div>
				
				<div class="col-md-12" hidden>
					<input type="text" class="form-control" name="m-user-level-id"
						placeholder="Enter Name for User Level" id="m-user-level-id">
				</div>
				
				<div class="form-group" id="div-modify-user-level" hidden>
				
					<div class="row">
						<div class="col-md-4">
							<label for="m-user-level-name">User Level Name</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" name="m-user-level-name"
								placeholder="Enter Name for User Level" id="m-user-level-name">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="m-user-level-description">Description about User Level</label>
						</div>
						<div class="col-md-8">
							<textarea rows="3" class="form-control"
								name="m-user-level-description" id="m-user-level-description">
            				</textarea>
						</div>
					</div>
					<br><hr>
					<h3>Attributes:</h3>
					<div class="row">
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulName" id="mAulName">First, Middle, Last Name</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulDGBG" id="mAulDGBG">DOB, Gender, Blood Group</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulEmail" id="mAulEmail">Email, Alternate Email</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulContact" id="mAulContact">Contact No, Alternate Contact No</label>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulPAddr" id="mAulPAddr">Permanent Address</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulCAddr" id="mAulCAddr">Current Address</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulFatherDetails" id="mAulFDetails">Father's Details</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulMotherDetails" id="mAulMDetails">Mother's Details</label>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulStudentBasic" id="mAulStuBasic">Student Basic Academic Info</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulProcter" id="mAulProcter">Procter's Information and Fee Status</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulEmployeeBasic" id="mAulEmpBasic">Employee Basic Info</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulDepDesDOJ" id="mAulDepDesDOJ">Department, Designation, Date of Joining</label>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulDomDOJ" id="mAulDomDOJ">Domain, Date of Joining</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulDomDesDOJ" id="mAulDomDesDOJ">Domain, Designation, Date of Joining</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulHostel" id="mAulHostel">Hostel and Mess Information</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="aulPwd" id="mAulPwd">Password</label>
						</div>
					</div>
					<br>
					<hr>
					<h3>Functionalities: </h3>
					<div class="row">
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulRegComplaint" id="mFulRegComp">Register a Complaint</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulTrackComplaint" id="mFulTrackComp">Track Complaint</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulAppComplaint" id="mFulAppComp">Approve Complaint</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulModComplaint" id="mFulModComp">Modify/Delete Complaint</label>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulGenReports" id="mFulGenRep">Generate Reports</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulUserMng" id="mFulUserMng">User Management</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulSiteMng" id="mFulSiteMng">Site Management</label>
						</div>
						<div class="checkbox col-md-3">
							<label><input type="checkbox" name="fulEditProfile" id="mFulEditProfile">Edit Profile</label>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-3">
							<button type="submit" name="userLevelSubmit" value="update"
								class="btn btn-outline-success btn-md  form-control">UPDATE</button>
						</div>
						<div class="col-md-3">
							<button type="submit" name="userLevelSubmit" value="delete"
								class="btn btn-outline-success btn-md  form-control">DELETE</button>
						</div>
						<div class="col-md-3"></div>
					</div>
				</div>
			</form>
		</div>









		<!-- Add Domain Form -->
		<div id="add-domain-form" hidden>
			<form class="form-horizontal">
				<div class="page-header">
					<h2>Add New Domain</h2>
				</div>
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-md-4">
							<label for="admin-name">Admin</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" placeholder="ad1001"
								id="admin-name" disabled>

						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="domain-code">Domain Code</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter domain Code" id="domain-code">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="domain-name">Domain Name</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter domain Name" id="domain-name">

						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="field1">Field 1</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" placeholder="Enter Value"
								id="field1">

						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="field2">Field 2</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" placeholder="Enter Value"
								id="field2">

						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<button type="button"
								class="btn btn-outline-success btn-md  form-control">ADD</button>
						</div>
						<div class="col-md-4"></div>
					</div>
				</div>
			</form>
		</div>


		<!-- Add Department Form-->
		<div id="add-department-form" hidden>
			<form class="form-horizontal">
				<div class="page-header">
					<h2>Add New Department</h2>
				</div>
				<br>
				<div class="form-group">

					<div class="row">
						<div class="col-md-4">
							<label for="admin-name">Admin</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" placeholder="ad1001"
								id="admin-name" disabled>

						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="department-code">Department Code</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter department Code" id="department-code">

						</div>
					</div>


					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="department-name">Department Name</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter department Name" id="department-name">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="department-dean">Dean</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter Dean's Name" id="department-dean">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<button type="button"
								class="btn btn-outline-success btn-md  form-control">ADD</button>
						</div>
						<div class="col-md-4"></div>
					</div>
				</div>
			</form>
		</div>

		<!-- Add Designation Form-->
		<div id="add-designation-form" hidden>
			<form class="form-horizontal">
				<div class="page-header">
					<h2>Add New Designation</h2>
				</div>
				<br>
				<div class="form-group">

					<div class="row">
						<div class="col-md-4">
							<label for="admin-name">Admin</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control" placeholder="ad1001"
								id="admin-name" disabled>

						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="designation-code">Designation Code</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter designation Code" id="designation-code">

						</div>
					</div>


					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="designation-name">Designation Name</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter designation Name" id="designation-name">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4">
							<label for="designation-details">Details</label>
						</div>
						<div class="col-md-8">
							<input type="text" class="form-control"
								placeholder="Enter description of Designation"
								id="designation-description">

						</div>
					</div>

					<br>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<button type="button"
								class="btn btn-outline-success btn-md  form-control">ADD</button>
						</div>
						<div class="col-md-4"></div>
					</div>
				</div>
			</form>
		</div>


		<!-- Update/Delete Domain -->
		<form class="form-horizontal" id="update-domain-form" hidden>
			<div class="page-header">
				<h2>Modify Domain</h2>
			</div>
			<br>
			<div class="form-group">

				<div class="row">
					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by Domain-Code" id="doamin_code">
							<div class="input-group-btn">
								<button class="btn btn-default a" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by Domain Name" id="domain_name">
							<div class="input-group-btn">
								<button class="btn btn-default a" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>

				</div>
				<br>
				<div class="table-responsive">
					<table class="table  table-hover table-bordered table-condensed">
						<thead>
							<tr>
								<th>#</th>
								<th>Domain Code</th>
								<th>Domain Name</th>
								<th>Field 1</th>
								<th>Field 2</th>
								<th>Modify</th>
								<th>Delete</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" value="1"></td>
								<td><input type="text" value="MSS"></td>
								<td><input type="text" value="Mess"></td>
								<td><input type="text" value="some data"></td>
								<td><input type="text" value="some data"></td>
								<td><input type="button" value="Modify"></td>
								<td><input type="button" value="Delete"></td>
							</tr>
							<tr>
								<td><input type="text" value="2"></td>
								<td><input type="text" value="ELC"></td>
								<td><input type="text" value="Electrical"></td>
								<td><input type="text" value="some data"></td>
								<td><input type="text" value="some data"></td>
								<td><input type="button" value="Modify"></td>
								<td><input type="button" value="Delete"></td>
							</tr>
							<tr>
								<td><input type="text" value="3"></td>
								<td><input type="text" value="GEN"></td>
								<td><input type="text" value="General Issues"></td>
								<td><input type="text" value="some data"></td>
								<td><input type="text" value="some data"></td>
								<td><input type="button" value="Modify"></td>
								<td><input type="button" value="Delete"></td>
							</tr>

						</tbody>
					</table>
				</div>

			</div>
		</form>


		<!-- Update/Delete Department -->
		<form class="form-horizontal" id="update-department-form" hidden>
			<div class="form-group">
				<div class="page-header">
					<h2>Modify Department</h2>
				</div>
				<br>
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="form-group">
							<div class="row">
								<div class="col-sm-6">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search by Department-Code" id="department_code">
										<div class="input-group-btn">
											<button class="btn btn-default a" type="submit">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>

								<div class="col-sm-6">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search by Department Name" id="department_name">
										<div class="input-group-btn">
											<button class="btn btn-default a" type="submit">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>

							</div>
							<br>
							<div class="table-responsive">
								<table class="table  table-hover table-bordered table-condensed">
									<thead>
										<tr>
											<th>#</th>
											<th>Department Code</th>
											<th>Department Name</th>
											<th>Dean</th>

											<th>Modify</th>
											<th>Delete</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="text" value="1"></td>
											<td><input type="text" value="SDC"></td>
											<td><input type="text" value="Software Development Cell"></td>
											<td><input type="text" value="some data"></td>

											<td><input type="button" value="Modify"></td>
											<td><input type="button" value="Delete"></td>
										</tr>

										<tr>
											<td><input type="text" value="2"></td>
											<td><input type="text" value="CSE"></td>
											<td><input type="text"
												value="Computer Science and Engineering"></td>
											<td><input type="text" value="Dr. XYZ"></td>

											<td><input type="button" value="Modify"></td>
											<td><input type="button" value="Delete"></td>
										</tr>
										<tr>
											<td><input type="text" value="3"></td>
											<td><input type="text" value="MEE"></td>
											<td><input type="text" value="Mechanical Engineering"></td>
											<td><input type="text" value="Dr. ABC"></td>

											<td><input type="button" value="Modify"></td>
											<td><input type="button" value="Delete"></td>
										</tr>


									</tbody>
								</table>
							</div>

						</div>
					</div>
				</div>
			</div>
		</form>


		<!-- Update/Delete Designation -->
		<div id="update-designation-form" hidden>
			<form class="form-horizontal">
				<div class="page-header">
					<h2>Modify Designation</h2>
				</div>
				<br>
				<div class="form-group">
					<div class="row">
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search by Designation-Code" id="designation_code">
								<div class="input-group-btn">
									<button class="btn btn-default a" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search by Designation Name" id="designation_name">
								<div class="input-group-btn">
									<button class="btn btn-default a" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
						</div>

					</div>
					<br>
					<div class="table-responsive">
						<table class="table  table-hover table-bordered table-condensed">
							<thead>
								<tr>
									<th>#</th>
									<th>Designation Code</th>
									<th>Designation Name</th>
									<th>Details</th>
									<th>Modify</th>
									<th>Delete</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" value="1"></td>
									<td><input type="text" value="VC"></td>
									<td><input type="text" value="Vice Chancellor"></td>
									<td><input type="text"
										value="Second highest management post"></td>
									<td><input type="button" value="Modify"></td>
									<td><input type="button" value="Delete"></td>
								</tr>
								<tr>
									<td><input type="text" value="2"></td>
									<td><input type="text" value="WAR"></td>
									<td><input type="text" value="Warden"></td>
									<td><input type="text" value="some data"></td>
									<td><input type="button" value="Modify"></td>
									<td><input type="button" value="Delete"></td>
								</tr>
								<tr>
									<td><input type="text" value="3"></td>
									<td><input type="text" value="DWAR"></td>
									<td><input type="text" value="Deputy Warden"></td>
									<td><input type="text" value="some data"></td>
									<td><input type="button" value="Modify"></td>
									<td><input type="button" value="Delete"></td>
								</tr>

							</tbody>
						</table>
					</div>

				</div>
			</form>
		</div>
		<br>
	</div>
	<!--  Content ends -->



	<script>
		function clearSiteMngPage() {
			document.getElementById("add-user-level-form").hidden = true;
			document.getElementById("modify-user-level-form").hidden = true;
			document.getElementById("add-domain-form").hidden = true;
			document.getElementById("add-department-form").hidden = true;
			document.getElementById("add-designation-form").hidden = true;
			document.getElementById("update-domain-form").hidden = true;
			document.getElementById("update-department-form").hidden = true;
			document.getElementById("update-designation-form").hidden = true;
		}
		function dynamicFieldSelect() {
			var y = document.getElementById("dynamic-entry-combo").value;
			if (y == 1 || y == 2 || y == 3 || y==4) {
				clearSiteMngPage();
				document.getElementById("operation-select").hidden = false;
				document.getElementById("operation-combo").selectedIndex = "0";
			} else {
				clearSiteMngPage();
				document.getElementById("operation-select").hidden = true;
			}
		}
		function optionSelect() {
			var y = document.getElementById("dynamic-entry-combo").value;
			var z = document.getElementById("operation-combo").value;
			if (y == 1 && z == 1) {
				clearSiteMngPage();
				document.getElementById("add-user-level-form").hidden = false;
			} else if (y == 1 && z == 2) {
				clearSiteMngPage();
				document.getElementById("modify-user-level-form").hidden = false;
			}else if (y == 2 && z == 1) {
				clearSiteMngPage();
				document.getElementById("add-domain-form").hidden = false;
			} else if (y == 2 && z == 2) {
				clearSiteMngPage();
				document.getElementById("update-domain-form").hidden = false;
			} else if (y == 3 && z == 1) {
				clearSiteMngPage();
				document.getElementById("add-department-form").hidden = false;
			} else if (y == 3 && z == 2) {
				clearSiteMngPage();
				document.getElementById("update-department-form").hidden = false;
			} else if (y == 4 && z == 1) {
				clearSiteMngPage();
				document.getElementById("add-designation-form").hidden = false;
			} else if (y == 4 && z == 2) {
				clearSiteMngPage();
				document.getElementById("update-designation-form").hidden = false;
			}
		}
		
		
		
		function userLevelSelected()
		{
			var x = document.getElementById("user-level").value;
			if(x==0){
				document.getElementById("div-modify-user-level").hidden = true;
			}
			
			else{
				document.getElementById("div-modify-user-level").hidden = false;
				var url = "users/userLevelHideBlocks.jsp?ul_id="+x;//use any url that have json data  
		   		var request;  
		  
		   		if(window.XMLHttpRequest){    
		    		request=new XMLHttpRequest();//for Chrome, mozilla etc  
		   		}    
		   		else if(window.ActiveXObject){    
		    		request=new ActiveXObject("Microsoft.XMLHTTP");//for IE only  
		   		}    
			   	
		   		try{
		   			//Receiving Response
			   		request.onreadystatechange  = function(){  
			      		if (request.readyState == 4  ){
			    	  		var ulObj = JSON.parse(request.responseText);
			    	  		document.getElementById("m-user-level-name").value = ulObj.name;
			    	  		document.getElementById("m-user-level-id").value = ulObj.ul_id;
			    	  		document.getElementById("m-user-level-description").value = ulObj.desc;
			    	  		if(ulObj.a_name==="YES"){
			    	  			document.getElementById("mAulName").checked = true;
			    	  		}if(ulObj.a_dgbg==="YES"){
			    	  			document.getElementById("mAulDGBG").checked = true;
			    	  		}if(ulObj.a_email==="YES"){
			    	  			document.getElementById("mAulEmail").checked = true;
			    	  		}if(ulObj.a_contact==="YES"){
			    	  			document.getElementById("mAulContact").checked = true;
			    	  		}if(ulObj.a_paddr==="YES"){
			    	  			document.getElementById("mAulPAddr").checked = true;
			    	  		}if(ulObj.a_caddr==="YES"){
			    	  			document.getElementById("mAulCAddr").checked = true;
			    	  		}if(ulObj.a_fdetails==="YES"){
			    	  			document.getElementById("mAulFDetails").checked = true;
			    	  		}if(ulObj.a_mdetails==="YES"){
			    	  			document.getElementById("mAulMDetails").checked = true;
			    	  		}if(ulObj.a_st_basic==="YES"){
			    	  			document.getElementById("mAulStuBasic").checked = true;
			    	  		}if(ulObj.a_procter==="YES"){
			    	  			document.getElementById("mAulProcter").checked = true;
			    	  		}if(ulObj.a_emp_basic==="YES"){
			    	  			document.getElementById("mAulEmpBasic").checked = true;
			    	  		}if(ulObj.a_depdesdoj==="YES"){
			    	  			document.getElementById("mAulDepDesDOJ").checked = true;
			    	  		}if(ulObj.a_domdoj==="YES"){
			    	  			document.getElementById("mAulDomDOJ").checked = true;
			    	  		}if(ulObj.a_domdesdoj==="YES"){
			    	  			document.getElementById("mAulDomDesDOJ").checked = true;
			    	  		}if(ulObj.a_hostel==="YES"){
			    	  			document.getElementById("mAulHostel").checked = true;
			    	  		}if(ulObj.a_pwd==="YES"){
			    	  			document.getElementById("mAulPwd").checked = true;
			    	  		}if(ulObj.f_reg_comp==="YES"){
			    	  			document.getElementById("mFulRegComp").checked = true;
			    	  		}if(ulObj.f_track_comp==="YES"){
			    	  			document.getElementById("mFulTrackComp").checked = true;
			    	  		}if(ulObj.f_app_comp==="YES"){
			    	  			document.getElementById("mFulAppComp").checked = true;
			    	  		}if(ulObj.f_mod_comp==="YES"){
			    	  			document.getElementById("mFulModComp").checked = true;
			    	  		}if(ulObj.f_gen_reg==="YES"){
			    	  			document.getElementById("mFulGenRep").checked = true;
			    	  		}if(ulObj.f_user_mng==="YES"){
			    	  			document.getElementById("mFulUserMng").checked = true;
			    	  		}if(ulObj.f_site_mng==="YES"){
			    	  			document.getElementById("mFulSiteMng").checked = true;
			    	  		}if(ulObj.f_edit_profile==="YES"){
			    	  			document.getElementById("mFulEditProfile").checked = true;
			    	  		}
			      		}  
			   		}  
			   		//Sending Request
			   		request.open("GET", url, true);
			   		request.send();
		   		}catch(ex){
		   			alert("Some Error Occured!");
		   		}
			}
			
			
		}
		
	</script>

	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>





</body>
</html>