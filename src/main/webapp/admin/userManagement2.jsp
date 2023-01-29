<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Management</title>
<!--<link rel="stylesheet" href="../css/admin-panel.css">
 Bootstrap core CSS -->

<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="../js/admin-panel-site-mng.js"></script>
<script type= "text/javascript" src = "../js/countries.js"></script>

<style>

body{
  background-color:#fafffa;
  overflow-x: hidden;
  }
  
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
}

/*Main Section*/
#main{
/*margin-left: 250px;*/
}

#form-addUser
{
border: 2px solid #02572c;
padding: 20px;
border-radius: 20px;
}
/*Common Styling*/
.addSingleUserForm, .addMultiuserForm {
	padding-left: 10%;
	padding-right: 10%;
	display: none;
}
.modifyUserForm, .deleteUserForm {
	padding-left: 2%;
	padding-right: 2%;
	display: none;
}

/* User Creation Section Styling */
.form-label {
	float: right;
	font-size: 14px;
}
.form-input-container input,.form-input-container select{
	font-size: 12px;
}
legend{
background-color: #00661f;
border-radius: 10px;
color: white;
font-size: 20px;
padding: 5px 10px 5px 10px;
margin-bottom: 30px;
}
.form-label-container {
	padding-right: 5%;
}
.infoLabel
{
	background-color: #009e4f;
	border-radius: 10px;
	margin-bottom: 20px;
	margin-top: 30px;
}
.infoLabel h4
{
	color: white;
	font-size: 16px;
	text-align: center;
	padding-top: 4px;
	padding-bottom: 4px;
}
.reset-button {
	margin-left: 48%;
	width: 15%;
}

.page-header {
	margin-top: 18px;
	text-align: center;
	font-size: verdana;
	color: #306126;
}


@media only screen and (max-width: 930px) {
	.form-label {
		float: none;
	}
}


/*Modify & Delete Section Styling*/
#modify-table th, #delete-table th {
	background-color: green;
	color: white;
}


.modify-page-search-button {
	border: 1px solid #aeb5c2;
}
</style>

</head>
<body>

	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>
	
	<!-- Including Header -->
	<%@include file="includes/header.jsp"%>

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

	<div id="main" class="col-sm-10">

		<!-- header closed -->
<!-- 		<button class="openbtn" onclick="openNav()" style="position: fixed;">
			<i class="fa fa-ellipsis-v" aria-hidden="true"></i>
		</button> -->
		

		<!-- Main Form Start -->
		<div class="userManagementHomePage" id="user-management-homepage">
		<h1 style="color: #346e5f; text-align: center; margin-top:20px;">User Management Section</h1>
		</div>


		<!-- Add Single User Form Start -->
		<div class="addSingleUserForm" id="add-single-user-form">
		<div class="page-header">
			<h2>Create Single User</h2>
		</div>

		
			<form name="addUser" action="" id="form-addUser">

				<fieldset>
					<legend>Admin Information</legend>
					<div class="form-group row" id="div-admin-user-id">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="admin-user-id">User ID:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="text" class="form-control form-input"
								id="admin-user-id" name="adminUserId" value="ad1001" disabled>
						</div>
						<div class="col-sm-2 form-label-container" id="div-admin-name">
							<label class="form-label" for="admin-name">Name:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="text" class="form-control form-input"
								id="admin-name" name="adminName" value="Mr Abc" disabled>
						</div>
					</div>
					<br><hr><br>
				</fieldset>
				
				<fieldset>
					<legend>User Level</legend>
					<div class="form-group row" id="div-user-level">
						<div class="col-sm-3"></div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="user-level">User Level:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<select class="form-control" id="user-level" name="userLevel"
								onchange="userLevelSelect()">
								<option value="">--Select User Level--</option>
								<option value="5">Student</option>
								<option value="4">Supervisor</option>
								<option value="3">Warden</option>
								<option value="2">Authorities</option>
								<option value="1">Admin</option>
							</select>
						</div>
						<div class="col-sm-3"></div>
					</div>
				<br>
				<hr><br>
				</fieldset>

				

				<fieldset id="field-personal-info" hidden>
					<legend>Personal Information</legend>
					
					
					<div class="infoLabel" id="label-personal-info" style="margin-top:0;"><h4>Basic Information</h4></div>
					<div class="form-group row" id="div-name">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="fname">First Name:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="fname"
								name="fname">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="mname">Middle Name:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="mname"
								name="mname">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="lname">Last Name:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="lname"
								name="lname">
						</div>
					</div>
					
					
					<div class="form-group row" id="div-other-info">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="dob">Date of Birth:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="date" class="form-control form-input" id="dob"
								name="dob">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="gender">Gender:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<label class="radio-inline"> <input type="radio"
								name="gender" id="gender-male" value="male">Male
							</label> <label class="radio-inline"> <input type="radio"
								name="gender" value="female" id="gender-female"> Female
							</label>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="bloodGroup">Blood Group:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="bloodGroup" name="bloodGroup">
								<option value="">--Select BG--</option>
								<option value="AP">A+</option>
								<option value="AN">A-</option>
								<option value="BP">B+</option>
								<option value="BN">B-</option>
								<option value="OP">O+</option>
								<option value="ON">O-</option>
								<option value="ABP">AB+</option>
								<option value="ABN">AB-</option>
							</select>
						</div>
					</div>
					
					
					<div class="form-group row" id="div-email">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="email">Email:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="email" class="form-control form-input" id="email"
								name="email">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="alternateEmail">Alternate Email:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="email" class="form-control form-input" id="alternateEmail"
								name="alternateEmail">
						</div>
					</div>
					
				
					<div class="form-group row" id="div-contact">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="contact1">Contact No 1:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="phone" class="form-control form-input" id="contact1"
								name="contact1">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="contact2">Contact No 2:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="phone" class="form-control form-input" id="contact2"
								name="contact2">
						</div>
					</div>
					
					
					<div id="field-address">
						<div class="infoLabel"><h4>Permanent Address</h4></div>
						<div class="form-group row" id="div-p-address-lines1">
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-address1">Address Line 1:</label>
							</div>
							<div class="col-sm-4 form-input-container">
								<input type="text" class="form-control form-input" id="p-address1"
									name="p-address1"  placeholder="Door No/Flat No/House No">
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-address2">Address Line 2:</label>
							</div>
							<div class="col-sm-4 form-input-container">
								<input type="text" class="form-control form-input" id="p-address2"
									name="p-address2" placeholder="Lane/Locality/Village/Town">
							</div>
						</div>
					
					
						<div class="form-group row" id="div-p-address-lines2">
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-city">City:</label>
							</div>
							<div class="col-sm-2 form-input-container">
								<input type="text" class="form-control form-input" id="p-city"
									name="p-city">
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-district">District:</label>
							</div>
							<div class="col-sm-2 form-input-container">
								<input type="text" class="form-control form-input" id="p-district"
									name="p-district">
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-zip">ZIP Code:</label>
							</div>
							<div class="col-sm-2 form-input-container">
								<input type="number" class="form-control form-input" id="p-zip"
									name="p-zip">
							</div>
						</div>


						<div class="form-group row" id="div-p-country-state">
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-country">Select Country:</label>
							</div>
							<div class="col-sm-4 form-input-container">
								<select id="p-country" name ="p-country" class="form-control"></select>
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="p-state">Select State: </label>
							</div>
							<div class="col-sm-4 form-input-container">
								<select name ="p-state" id ="p-state" class="form-control"></select>
							</div>
							<script language="javascript"> 
								populateCountries("country", "state"); 
							</script>
						</div>


					
						<div class="infoLabel"><h4>Current Address</h4></div>
						<div class="form-group row">
							<div class="checkbox col-sm-8 form-input-container">
  								<label><input type="checkbox" onclick="addressChange();" id="same-address">  Same as Permanent Address</label>
							</div>
							<div class="col-sm-4"></div>
						</div>
						<div class="form-group row" id="div-c-address-lines1">
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-address1">Address Line 1:</label>
							</div>
							<div class="col-sm-4 form-input-container">
								<input type="text" class="form-control form-input" id="c-address1"
									name="c-address1" placeholder="Door No/Flat No/House No">
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-address2">Address Line 2:</label>
							</div>
							<div class="col-sm-4 form-input-container">
								<input type="text" class="form-control form-input" id="c-address2"
									name="c-address2" placeholder="Lane/Locality/Village/Town">
							</div>
						</div>
						
						
						
						<div class="form-group row" id="div-c-address-lines2">
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-city">City:</label>
							</div>
							<div class="col-sm-2 form-input-container">
								<input type="text" class="form-control form-input" id="c-city"
									name="c-city">
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-district">District:</label>
							</div>
							<div class="col-sm-2 form-input-container">
								<input type="text" class="form-control form-input" id="c-district"
									name="c-district">
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-zip">ZIP Code:</label>
							</div>
							<div class="col-sm-2 form-input-container">
								<input type="number" class="form-control form-input" id="c-zip"
									name="c-zip">
							</div>
						</div>
	
	
						<div class="form-group row" id="div-c-country-state">
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-country">Select Country:</label>
							</div>
							<div class="col-sm-4 form-input-container">
								<select id="c-country" name ="c-country" class="form-control"></select>
							</div>
							<div class="col-sm-2 form-label-container">
								<label class="form-label" for="c-state">Select State: </label>
							</div>
							<div class="col-sm-4 form-input-container">
								<select name ="c-state" id ="c-state" class="form-control"></select>
							</div>
							<script language="javascript"> 
								populateCountries("country", "state"); 
							</script>
						</div>
					</div>

					<br><hr><br>
				</fieldset>
				
				
				<fieldset id="field-parent-info" hidden>
					<legend>Parent Information</legend>
					
					<div class="infoLabel" style="margin-top: 0;"><h4>Father's Details</h4></div>
					<div class="form-group row" id="div-fdetails1">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="fatherName">Name:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="text" class="form-control form-input" id="fatherName"
								name="fatherName">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="fatherEmail">Email:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="email" class="form-control form-input" id="fatherEmail"
								name="fatherEmail">
						</div>
					</div>
					
					
					<div class="form-group row" id="div-fdetails2">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="fatherContact">Contact No:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="fatherContact"
								name="fatherContact">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="fatherOcc">Occupation:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="fatherOcc"
								name="fatherOcc">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="fatherIncome">Annual Income:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="number" class="form-control form-input" id="fatherIncome"
								name="fatherIncome">
						</div>
					</div>
					
					
					<div class="infoLabel"><h4>Mother's Details</h4></div>
					<div class="form-group row" id="div-mdetails1">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="motherName">Name:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="text" class="form-control form-input" id="motherName"
								name="motherName">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="motherEmail">Email:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="email" class="form-control form-input" id="motherEmail"
								name="motherEmail">
						</div>
					</div>
					
					
					<div class="form-group row" id="div-fdetails2">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="motherContact">Contact No:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="motherContact"
								name="motherContact">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="motherOcc">Occupation:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="motherOcc"
								name="motherOcc">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="motherIncome">Annual Income:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="number" class="form-control form-input" id="motherIncome"
								name="motherIncome">
						</div>
					</div>

					<br><hr><br>
				</fieldset>
				

				<fieldset id="field-academic-info" hidden>
					<legend>Academic Information</legend>
					
					
					<div class="form-group row" id="div-academic1">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="regNo">Reg No:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="regNo"
								name="regNo">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="degree">Degree:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="degree" name="degree">
								<option value="">--Select Degree--</option>
								<option value="UG">UG</option>
								<option value="PG">PG</option>
								<option value="PHD">Ph D</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="pragram">Program:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="program" name="program">
								<option value="">--Program--</option>
								<option value="BTECH">BTech</option>
								<option value="BBA">BBA</option>
								<option value="BCA">BCA</option>
								<option value="BA">BA</option>
								<option value="MCA">MCA</option>
								<option value="MBA">MBA</option>
							</select>
						</div>
					</div>
					
					
					<div class="form-group row" id="div-academic2">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="school">School:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="school" name="school">
								<option value="">--Select School--</option>
								<option value="SCSE">SCSE</option>
								<option value="SEEE">SEEE</option>
								<option value="SASL">SASL</option>
								<option value="SMEC">SME</option>
								<option value="VITB">VITBS</option>
								<option value="BIOT">Bio-Tech</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="branch">Branch:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="branch" name="branch">
								<option value="">--Select Branch--</option>
								<option value="CSE">CSE</option>
								<option value="ECE">ECE</option>
								<option value="EEE">EEE</option>
								<option value="ME">ME</option>
								<option value="BBA">BBA</option>
								<option value="BCA">BCA</option>
								<option value="MCA">MCA</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="batch">Batch:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="month" class="form-control form-input" id="batch"
								name="batch">
						</div>
					</div>
					
					
					<div class="form-group row" id="div-academic3">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="procterId">Procter ID:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="procterId"
								name="procterId">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="procterName">Procter Name:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="procterName"
								name="procterName">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="feeStatus">Fee Status:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="feeStatus" name="feeStatus">
								<option value="">--Status--</option>
								<option value="PENDING">Pending</option>
								<option value="PART_DUES">Partial Dues</option>
								<option value="NO_DUES">No Dues</option>
							</select>
						</div>
					</div>
					
					
					<div class="form-group row" id="div-academic4">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="empId">Employee ID:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="text" class="form-control form-input"
								id="empId" name="empId">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="qualification">Qualification:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<select class="form-control" id="qualification" name="qualification">
								<option value="">--Select Qualification--</option>
								<option value="PHD">PhD</option>
								<option value="PG">PG</option>
								<option value="UG">UG</option>
								<option value="XII">XII</option>
								<option value="X">X</option>
								<option value="BX">Below X</option>
							</select>
						</div>
						
					</div>
					
					
					<div class="form-group row" id="div-academic5">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="department">Department:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="department" name="department">
								<option value="">--Select Department--</option>
								<option value="SCSE">SCSE</option>
								<option value="SEEE">SEEE</option>
								<option value="SASL">SASL</option>
								<option value="SMEC">SME</option>
								<option value="VITB">VITBS</option>
								<option value="BIOT">Bio-Tech</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="designation">Designation:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="designation" name="designation">
								<option value="">--Select Designation--</option>
								<option value="VC">Vice Chancellor</option>
								<option value="DSW">DSW</option>
								<option value="WAR">Warden</option>
								<option value="DWAR">Deputy Warden</option>
								<option value="DEAN">Dean</option>
								<option value="HOD">HOD</option>
								<option value="FAC">Faculty</option>
								<option value="OTHS">Others</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="date-of-joining">Date of
								Joining:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="date" class="form-control form-input"
								id="date-of-joining" name="dateOfJoining">
						</div>
					</div>
					
					
					<div class="form-group row" id="div-academic6">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="domain">Domain:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<select class="form-control" id="domain" name="domain">
								<option value="">--Select Domain--</option>
								<option value="ELEC">Electricity</option>
								<option value="MESS">Mess</option>
								<option value="INFR">Infrastructure</option>
								<option value="CLNS">Cleanliness</option>
								<option value="TECH">Technical</option>
								<option value="OTHS">Others</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="dateOfJoiningSup">Date of
								Joining:</label>
						</div>
						<div class="col-sm-4 form-input-container">
							<input type="date" class="form-control form-input"
								id="dateOfJoiningSup" name="dateOfJoiningSup">
						</div>
					</div>
					
					<br><hr><br>
				</fieldset>	


				
				<fieldset id="field-hostel-info" hidden>
					<legend>Hostel Information</legend>
					<div class="form-group row" id="div-hostel1">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="hostelName">Hostel Name:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="hostelName"
								name="hostelName">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="roomNo">Room No:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="roomNo"
								name="roomNo">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="floor">Floor No:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="floor" name="floor">
								<option value="">--Floor--</option>
								<option value="0">GROUND</option>
								<option value="1">FIRST</option>
								<option value="2">SECOND</option>
								<option value="3">THIRD</option>
								<option value="4">FOURTH</option>
								<option value="5">FIFTH</option>
								<option value="6">SIXTH</option>
								<option value="7">SEVENTH</option>
								<option value="8">EIGTH</option>
							</select>
						</div>
					</div>
					
					
					<div class="form-group row" id="div-hostel2">
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="roomType">Room Type:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="roomType" name="roomType">
								<option value="">--Room Type--</option>
								<option value="2A">2 Bed AC</option>
								<option value="2N">2 Bed NAC</option>
								<option value="3A">3 Bed AC</option>
								<option value="3N">3 Bed NAC</option>
								<option value="4A">4 Bed AC</option>
								<option value="4N">4 Bed NAC</option>
								<option value="6A">6 Bed AC</option>
								<option value="6N">6 Bed NAC</option>
							</select>
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="mess">Mess Name:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<input type="text" class="form-control form-input" id="mess"
								name="mess">
						</div>
						<div class="col-sm-2 form-label-container">
							<label class="form-label" for="foodPreference">Food Preference:</label>
						</div>
						<div class="col-sm-2 form-input-container">
							<select class="form-control" id="foodPreference" name="foodPreference">
								<option value="">--Food Preference--</option>
								<option value="1">North Indian Veg</option>
								<option value="2">North Indian Non-Veg</option>
								<option value="3">South Indian Veg</option>
								<option value="4">South Indian Non-Veg</option>
							</select>
						</div>
					</div>
					<br><hr><br>
				</fieldset>
				
				
				<fieldset id="field-login-info" hidden>
					<legend>Login Information</legend>
					<div class="form-group row" id="div-password">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="password">Password:</label>
						</div>
						<div class="col-sm-3 form-input-container">
							<input type="password" class="form-control form-input"
								id="password" name="password">
						</div>
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="confirm-password">Confirm
								Password:</label>
						</div>
						<div class="col-sm-3 form-input-container">
							<input type="password" class="form-control form-input"
								id="confirm-password" name="confirmPassword">
						</div>
					</div>
					<br><hr><br>
				</fieldset>
				
				<div class="form-group row" style="margin-top: 15px;"
					id="save-buttons" hidden>
					<div class="col-sm-2"></div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-outline-success form-control" onclick="alert('User Created');">Create
							User</button>
					</div>
					<div class="col-sm-4">
						<button type="reset" class="btn btn-outline-success form-control">Cancel</button>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</form>
			<br><br>
		</div>
		<!-- Add Single User Form End -->
		
		
		
		
		
		<!-- Add Multiple User Form Start -->
		<div class="addMultiuserForm" id="add-multi-user-form">
		<div class="page-header">
			<h2>Create Multiple Users</h2>
		</div>
		<br>

		<div class="row">
			<div class="col-md-12">
				<a href="../files/Data_csv_file.csv" download="sample.csv">Click</a> here to
				download a sample csv file
			</div>
		</div>
		<form class="form-horizontal">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">Upload your CSV</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile01"
							aria-describedby="inputGroupFileAddon01"> <label
							class="custom-file-label" for="inputGroupFile01">Choose
							file</label>
					</div>


				</div>
				<br>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-4">
						<button type="button" class="btn btn-outline-success btn-md  form-control" >Create Users</button>
					</div>
					<div class="col-md-4">
						<button type="button" class="btn btn-outline-success btn-md  form-control" >Cancel</button>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br>
				<div class="form-group shadow-textarea">

					<textarea class="form-control z-depth-1"
						id="multiUserCreationStatusField" rows="9"
						placeholder="Status of adding users..." disabled></textarea>
				</div>
				<div class="row">
					<div class="col-md-3">
					</div>
					<div class="col-md-6">
						<button type="button" class="btn btn-outline-success btn-md  form-control" disabled>Download User Creation Report</button>
					</div>
					<div class="col-md-3">
					</div>
				</div>
			</div>

		</form>
			
		</div>
		<!-- Add Multiple User Form End -->
		


		
		
		<!-- Modify User Start-->
		<div class="modifyUserForm" id="modify-user-form">
			<div class="page-header">
				<h2>Modify User</h2>
			</div>
			<br>

		<form class="form-horizontal" id="user-modification-form">
			<div class="form-group">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="User Name"
								id="modify-username">
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<p>
				<div class="row">
					<div class="col-sm-6">
						<select class="custom-select custom-select-md mb-3"
							onchange="modifySectionEnableFields()" id="modify-userlevel-select">
							<option selected value="0">Select User-Level</option>
							<option value="1">Level 1(Admin)</option>
							<option value="2">Level 2(Higher Authorities)</option>
							<option value="3">Level 3(Warden)</option>
							<option value="2">Level 4(Supervisor)</option>
							<option value="3">Level 5(Student)</option>
						</select>
					</div>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by Name" id="modify-name"
								onkeypress="return onlyAlphabets(event,this)" disabled>
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="input-group">
							<input type="email" class="form-control"
								placeholder="Search by E-mail" id="modify-email"
								onchange="validateModifyEmail(this)" disabled>
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by Registration Number/Employee ID"
								id="modify-user-id" disabled>
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>

				</div>

				<p>
			</div>
			<!-- User_ID	password	Name	User_Level	Email_id	contact_no	Room_no	Gender	Date_Of_joining	Passing_Year	Domain	Designation	Department_ID/Branch_ID -->

			<div class="table-responsive">
				<table class="table  table-hover table-bordered table-condensed" id="modify-table">
					<thead>
						<tr>
							<th>#</th>
							<th>User_ID</th>
							<th>Password</th>
							<th>Name</th>
							<th>User_Level</th>
							<th>E-mail ID</th>
							<th>Contact_Number</th>
							<th>Room_Number</th>
							<th>Gender</th>
							<th>Date_Of_Joining</th>
							<th>Passing_Year</th>
							<th>Domain</th>
							<th>Designation</th>
							<th>Department</th>
							<th>Update</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" value="1"></td>
							<td><input type="text" value="17BCE10068"></td>
							<td><input type="text" value="0000"></td>
							<td><input type="text" value="Mr. X"></td>
							<td><input type="text" value="Student"></td>
							<td><input type="text" value="a@xyz.com"></td>
							<td><input type="text" value="9089876756"></td>
							<td><input type="text" value="134"></td>
							<td><input type="text" value="Male"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="2021"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="CSE"></td>
							<td><input type="button" value="Update"></td>
						</tr>
						<tr>
							<td><input type="text" value="2"></td>
							<td><input type="text" value="17BME10011"></td>
							<td><input type="text" value="0000"></td>
							<td><input type="text" value="Ms. Y"></td>
							<td><input type="text" value="Student"></td>
							<td><input type="text" value="b@xyz.com"></td>
							<td><input type="text" value="9055876756"></td>
							<td><input type="text" value="132"></td>
							<td><input type="text" value="Female"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="2021"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="ME"></td>
							<td><input type="button" value="Update"></td>
						</tr>
						<tr>
							<td><input type="text" value="3"></td>
							<td><input type="text" value="10008"></td>
							<td><input type="text" value="0000"></td>
							<td><input type="text" value="Mr. A"></td>
							<td><input type="text" value="Authority"></td>
							<td><input type="text" value="ab@xyz.com"></td>
							<td><input type="text" value="9089876722"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="Male"></td>
							<td><input type="text" value="09/10/2018"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="DSW"></td>
							<td><input type="text" value="CSE"></td>
							<td><input type="button" value="Update"></td>
						</tr>
						<tr>
							<td><input type="text" value="4"></td>
							<td><input type="text" value="sup1003"></td>
							<td><input type="text" value="0000"></td>
							<td><input type="text" value="Mr. Super"></td>
							<td><input type="text" value="Supervisor"></td>
							<td><input type="text" value="asup@xyz.com"></td>
							<td><input type="text" value="9086565756"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="Male"></td>
							<td><input type="text" value="06/06/2017"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="Electrical"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="text" value="NA"></td>
							<td><input type="button" value="Update"></td>
						</tr>

					</tbody>
				</table>
			</div>
		</form>				
	</div>
		<!-- Modify User Form End -->
		
		
		
		
		
		
		<!-- Delete User Form Start -->
		<div class="deleteUserForm" id="delete-user-form">
			<div class="page-header">
			<h2>Delete User</h2>
		</div>

		<br>
		<form class="form-horizontal" id="user-deletion-form">
			<div class="form-group">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="User Name"
								id="delete-username">
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button"
									type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<p>
				<div class="row">
					<div class="col-sm-6">
						<select class="custom-select custom-select-md mb-3"
							onchange="deleteSectionEnableFields()"
							id="delete-userlevel-select">
							<option selected value="0">Select User-Level</option>
							<option value="1">Level 1(Admin)</option>
							<option value="2">Level 2(Higher Authorities)</option>
							<option value="3">Level 3(Warden)</option>
							<option value="2">Level 4(Supervisor)</option>
							<option value="3">Level 5(Student)</option>
						</select>
					</div>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by Name" id="delete-name"
								onkeypress="return onlyAlphabets(event,this)" disabled>
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button"
									type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="input-group">
							<input type="email" class="form-control"
								placeholder="Search by E-mail" id="delete-email"
								onchange="validateDeleteEmail(this)" disabled>
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button"
									type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by Registration Number/Employee ID"
								id="delete-user-id" disabled>
							<div class="input-group-btn">
								<button class="btn btn-default modify-page-search-button"
									type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>

				</div>

				<p>
			</div>
			<!-- User_ID	password	Name	User_Level	Email_id	contact_no	Room_no	Gender	Date_Of_joining	Passing_Year	Domain	Designation	Department_ID/Branch_ID -->

			<div class="table-responsive">
				<table class="table  table-hover table-bordered table-condensed"
					id="delete-table">
					<thead>
						<tr>
							<th>Select</th>
							<th>#</th>
							<th>User_ID</th>
							<th>Password</th>
							<th>Name</th>
							<th>User_Level</th>
							<th>E-mail ID</th>
							<th>Contact_Number</th>
							<th>Room_Number</th>
							<th>Gender</th>
							<th>Date_Of_Joining</th>
							<th>Passing_Year</th>
							<th>Domain</th>
							<th>Designation</th>
							<th>Department</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td><div class="checkbox">
									<input type="checkbox" value="1">
								</div></td>
							<td>1</td>
							<td>17BCE10068</td>
							<td>0000</td>
							<td>Mr. X</td>
							<td>Student</td>
							<td>a@xyz.com</td>
							<td>9089876756</td>
							<td>134</td>
							<td>Male</td>
							<td>NA</td>
							<td>2021</td>
							<td>NA</td>
							<td>NA</td>
							<td>CSE</td>
						</tr>

						<tr>
							<td><div class="checkbox">
									<input type="checkbox" value="1">
								</div></td>
							<td>1</td>
							<td>17BCE10068</td>
							<td>0000</td>
							<td>Mr. X</td>
							<td>Student</td>
							<td>a@xyz.com</td>
							<td>9089876756</td>
							<td>134</td>
							<td>Male</td>
							<td>NA</td>
							<td>2021</td>
							<td>NA</td>
							<td>NA</td>
							<td>CSE</td>
						</tr>

						<tr>
							<td><div class="checkbox">
									<input type="checkbox" value="1">
								</div></td>
							<td>1</td>
							<td>17BCE10068</td>
							<td>0000</td>
							<td>Mr. X</td>
							<td>Student</td>
							<td>a@xyz.com</td>
							<td>9089876756</td>
							<td>134</td>
							<td>Male</td>
							<td>NA</td>
							<td>2021</td>
							<td>NA</td>
							<td>NA</td>
							<td>CSE</td>
						</tr>

						<tr>
							<td><div class="checkbox">
									<input type="checkbox" value="1">
								</div></td>
							<td>1</td>
							<td>17BCE10068</td>
							<td>0000</td>
							<td>Mr. X</td>
							<td>Student</td>
							<td>a@xyz.com</td>
							<td>9089876756</td>
							<td>134</td>
							<td>Male</td>
							<td>NA</td>
							<td>2021</td>
							<td>NA</td>
							<td>NA</td>
							<td>CSE</td>
						</tr>

					</tbody>
				</table>
			</div>
		</form>

		<br>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<button type="button"
					class="btn btn-outline-success btn-md  form-control">Delete</button>
			</div>
			<div class="col-md-4">
				<button type="button"
					class="btn btn-outline-success btn-md  form-control">Cancel</button>
			</div>
			<div class="col-md-2"></div>
		</div>
			
		</div>
		<!-- Delete User Form End -->
		
		
		<!-- End Main Form -->
	</div>	
	
	</div><!-- End of main row class -->
		
		
	<!-- Footer -->
		<%@include file="includes/footer.jsp"%>
	<!-- Including Footer -->

	

	<script>

	
	//Functions to enable respective blocks 
	function clearPage(){
		document.getElementById("add-single-user-form").style.display="none";
		document.getElementById("add-multi-user-form").style.display="none";
		document.getElementById("modify-user-form").style.display="none";
		document.getElementById("delete-user-form").style.display="none";
		document.getElementById("user-management-homepage").style.display="none";
	}
	function singleUserCreation(){
		clearPage();
		document.getElementById("add-single-user-form").style.display="block";
	}
	function multiUserCreation(){
		clearPage();
		document.getElementById("add-multi-user-form").style.display="block";
	}
	function userModification(){
		clearPage();
		document.getElementById("modify-user-form").style.display="block";
	}
	function userDeletion(){
		clearPage();
		document.getElementById("delete-user-form").style.display="block";
	}
	function userManagementHome(){
		clearPage();
		document.getElementById("user-management-homepage").style.display="block";
	}
	
		
		
	//Functions for selecting the fields dynamically on choosing the user-level at user-creation section
	function unhideHiddenFields() {
		document.getElementById("div-academic1").hidden = false;
		document.getElementById("div-academic2").hidden = false;
		document.getElementById("div-academic3").hidden = false;
		document.getElementById("div-academic4").hidden = false;
		document.getElementById("div-academic5").hidden = false;
		document.getElementById("div-academic6").hidden = false;
		document.getElementById("label-personal-info").hidden = false;
	}
	
	function unhideFieldSets() {
		document.getElementById("field-personal-info").hidden = false;
		document.getElementById("field-address").hidden = false;
		document.getElementById("field-parent-info").hidden = false;
		document.getElementById("field-academic-info").hidden = false;
		document.getElementById("field-hostel-info").hidden = false;
		document.getElementById("field-login-info").hidden = false;
		document.getElementById("save-buttons").hidden = false;
	}
	
	function userLevelSelect() {
		var x = document.getElementById("user-level").value;
		if (x == 5) {
			unhideFieldSets();
			unhideHiddenFields();
			document.getElementById("div-academic4").hidden = true;
			document.getElementById("div-academic5").hidden = true;
			document.getElementById("div-academic6").hidden = true;
		} else if (x == 4) {
			unhideFieldSets();
			unhideHiddenFields();
			document.getElementById("field-parent-info").hidden = true;
			document.getElementById("field-hostel-info").hidden = true;
			document.getElementById("div-academic1").hidden = true;
			document.getElementById("div-academic2").hidden = true;
			document.getElementById("div-academic3").hidden = true;
			document.getElementById("div-academic5").hidden = true;
		} else if (x == 3 || x == 2 || x == 1) {
			unhideFieldSets();
			unhideHiddenFields();
			document.getElementById("field-parent-info").hidden = true;
			document.getElementById("field-hostel-info").hidden = true;
			document.getElementById("field-address").hidden = true;
			document.getElementById("div-academic1").hidden = true;
			document.getElementById("div-academic2").hidden = true;
			document.getElementById("div-academic3").hidden = true;
			document.getElementById("div-academic6").hidden = true;
			document.getElementById("label-personal-info").hidden = true;
		} else {
			document.getElementById("field-personal-info").hidden = true;
			document.getElementById("field-parent-info").hidden = true;
			document.getElementById("field-academic-info").hidden = true;
			document.getElementById("field-hostel-info").hidden = true;
			document.getElementById("field-login-info").hidden = true;
			document.getElementById("save-buttons").hidden = true;
		}
	}

	//Copy Current address as permanent address
	function addressChange(){
		if (document.getElementById('same-address').checked){
			document.getElementById("div-c-address-lines1").hidden = true;
			document.getElementById("div-c-address-lines2").hidden = true;
			document.getElementById("div-c-country-state").hidden = true;
		}
		else{
			document.getElementById("div-c-address-lines1").hidden = false;
			document.getElementById("div-c-address-lines2").hidden = false;
			document.getElementById("div-c-country-state").hidden = false;
		}
	}
	
	
	
	

	//Modify & DeleteSection Enable Fields
	function modifySectionEnableFields() {
		var x = document.getElementById("modify-userlevel-select").value;
		if (!(x == 0)) {
			document.getElementById("modify-name").disabled = false;
			document.getElementById("modify-email").disabled = false;
			document.getElementById("modify-user-id").disabled = false;
		} else {
			document.getElementById("modify-name").value = "";
			document.getElementById("modify-email").value = "";
			document.getElementById("modify-user-id").value = "";
			document.getElementById("modify-name").disabled = true;
			document.getElementById("modify-email").disabled = true;
			document.getElementById("modify-user-id").disabled = true;
		}
	}
	
	
	
	
	function deleteSectionEnableFields() {
		var x = document.getElementById("delete-userlevel-select").value;
		if (!(x == 0)) {
			document.getElementById("delete-name").disabled = false;
			document.getElementById("delete-email").disabled = false;
			document.getElementById("delete-user-id").disabled = false;
		} else {
			document.getElementById("delete-name").value = "";
			document.getElementById("delete-email").value = "";
			document.getElementById("delete-user-id").value = "";
			document.getElementById("delete-name").disabled = true;
			document.getElementById("delete-email").disabled = true;
			document.getElementById("delete-user-id").disabled = true;
		}
	}


	
	
	//Validations- Modify Section
	function onlyAlphabets(e, t) {
		try {
			if (window.event) {
				var charCode = window.event.keyCode;
			} else if (e) {
				var charCode = e.which;
			} else {
				return true;
			}
			if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode==32) )
				return true;
			else
				return false;
		} catch (err) {
			alert(err.Description);
		}
	}

	function validateModifyEmail(emailField){
    	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    	if (reg.test(emailField.value) == false) 
    	{
    		document.getElementById("modify-email").style.borderColor = "red";
        	return false;
    	}

    	return true;
	}
	
	function validateDeleteEmail(emailField){
    	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    	if (reg.test(emailField.value) == false) 
    	{
    		document.getElementById("delete-email").style.borderColor = "red";
        	return false;
    	}

    	return true;
	}


	</script>



</body>
</html>
