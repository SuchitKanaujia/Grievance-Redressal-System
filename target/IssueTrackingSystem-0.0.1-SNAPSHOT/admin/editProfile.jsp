<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<!-- Bootstrap core CSS -->

<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="../js/admin-panel-site-mng.js"></script>
<style>
.container{
padding: 20px;
}
.editProfileImage{
height:100px;
border-radius:100px;
width: 100px;
display: block;
margin-left: auto;
margin-right: auto;
}
.editProfileImageSection{
padding-top: 10%;
}
</style>
</head>
<body>

	<!-- Including Navigation Bar -->
	<%@include file="includes/navbar.jsp"%>
<!-- Including Header -->
		<%@include file="includes/header.jsp"%>
	<div class="container">
		<h2 style="	margin-top: 18px; text-align: center; font-size: verdana; color: #306126;">Edit Profile</h2>
		<div class="row">
			<div class="col-sm-4 editProfileImageSection">
				<img src="../images/dummyImage.jpg" class="editProfileImage" alt="Profile Picture">
				<div class="container mt-3">
 					<form action="/action_page.php">
    					<div class="custom-file mb-3">
      						<input type="file" class="custom-file-input" id="customFile" name="filename">
      						<label class="custom-file-label" for="customFile">Profile picture to upload</label>
    					</div>
    
    					<div class="mt-3">
      						<button type="submit" class="btn btn-outline-success" style="display: block; margin-left: auto; margin-right: auto;">Upload</button>
    					</div>
  					</form>
				</div>
			</div>
			
			
			
			
			<div class="col-sm-8">
				
				
				
			<form name="addUser" action="">

				<fieldset id="field-personal-info">
					<legend>Personal Information</legend>
					<div class="form-group row" id="div-user-level">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="user-level">User Level:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="text" class="form-control form-input" id="name"
								name="user-level" value="Admin" disabled>
						</div>
					</div>
					<div class="form-group row" id="div-name">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="name">Name:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="text" class="form-control form-input" id="name"
								name="name" value="Pooja">
						</div>
					</div>
					<div class="form-group row" id="div-email">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="email">Email:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="email" class="form-control form-input" id="email"
								name="email" value="pooja@gmail.com">
						</div>
					</div>
					<div class="form-group row" id="div-contact">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="contact">Contact No:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="phone" class="form-control form-input" id="contact"
								name="contact" value="9876543210">
						</div>
					</div>
					<div class="form-group row" id="div-gender">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="gender">Gender:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<label class="radio-inline"> <input type="radio"
								name="gender" id="gender-male" value="male">Male
							</label> <label class="radio-inline"> <input type="radio"
								name="gender" value="female" id="gender-female" checked> Female
							</label>
						</div>
					</div>
				</fieldset>
				<br><br>

				<fieldset id="field-professional-info">
					<legend>Professional Information</legend>
					<div class="form-group row" id="div-department">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="department">Department:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<select class="form-control" id="department" name="department">
								<option value="">--Select Department--</option>
								<option value="SCSE" selected>SCSE</option>
								<option value="SEEE">SEEE</option>
								<option value="SASL">SASL</option>
								<option value="SMEC">SME</option>
								<option value="VITB">VITBS</option>
								<option value="BIOT">Bio-Tech</option>
							</select>
						</div>
					</div>
					<div class="form-group row" id="div-designation">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="designation">Designation:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<select class="form-control" id="designation" name="designation">
								<option value="">--Select Designation--</option>
								<option value="VC">Vice Chancellor</option>
								<option value="DSW">DSW</option>
								<option value="WAR">Warden</option>
								<option value="DWAR">Deputy Warden</option>
								<option value="DEAN">Dean</option>
								<option value="HOD">HOD</option>
								<option value="FAC">Faculty</option>
								<option value="OTHS" selected>Others</option>
							</select>
						</div>
					</div>
					<div class="form-group row" id="div-date-of-joining">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="date-of-joining">Date of
								Joining:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="date" class="form-control form-input"
								id="date-of-joining" name="dateOfJoining" value="2017-09-18">
						</div>
					</div>
				</fieldset>
				<br><br>

				<fieldset id="field-login-info">
					<legend>Login Information</legend>
					<div class="form-group row" id="div-user-name">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="user-name">User Name:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="text" class="form-control form-input" id="user-name"
								name="userName" value="ad1001" disabled>
						</div>
					</div>
					<div class="form-group row" id="div-password">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="password">Password:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="password" class="form-control form-input"
								id="password" name="password" value="0000">
						</div>
					</div>
					<div class="form-group row" id="div-confirm-password">
						<div class="col-sm-3 form-label-container">
							<label class="form-label" for="confirm-password">Confirm
								Password:</label>
						</div>
						<div class="col-sm-9 form-input-container">
							<input type="password" class="form-control form-input"
								id="confirm-password" name="confirmPassword" value="0000">
						</div>
					</div>
				</fieldset>
				<br><br>
				<div class="form-group row" style="margin-top: 50px;"
					id="save-buttons">
					<div class="col-sm-2"></div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-outline-success form-control" onclick="alert('User Details Updated');">Update
							User</button>
					</div>
					<div class="col-sm-4">
						<button type="reset" class="btn btn-outline-success form-control">Cancel</button>
					</div>
					<div class="col-sm-2"></div>
				</div>
			</form>
				
				
						
			</div>
		
		
		</div>
	</div>
		<!-- Including Footer -->
	<%@include file="includes/footer.jsp"%>
	
	
	
	
	


<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>
	
	
	
	
</body>
</html>