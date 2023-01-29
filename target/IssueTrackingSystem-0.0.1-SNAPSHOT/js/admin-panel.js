
//Functions for opening and closing sidebars
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}



//Functions for selecting the fields dynamically on choosing the user-level at user-creation section
function unhideHiddenFields() {
	document.getElementById("div-domain").hidden = false;
	document.getElementById("div-designation").hidden = false;
	document.getElementById("div-date-of-joining").hidden = false;
	document.getElementById("div-department").hidden = false;
	document.getElementById("div-passing-month").hidden = false;
	document.getElementById("div-room-no").hidden = false;
}
function unhideFieldSets() {
	document.getElementById("field-personal-info").hidden = false;
	document.getElementById("field-professional-info").hidden = false;
	document.getElementById("field-login-info").hidden = false;
	document.getElementById("save-buttons").hidden = false;
}
function userLevelSelect() {
	var x = document.getElementById("user-level").value;
	if (x == 5) {
		unhideFieldSets();
		unhideHiddenFields()
		document.getElementById("div-domain").hidden = true;
		document.getElementById("div-designation").hidden = true;
		document.getElementById("div-date-of-joining").hidden = true;

	} else if (x == 4) {
		unhideFieldSets();
		unhideHiddenFields();
		document.getElementById("div-department").hidden = true;
		document.getElementById("div-designation").hidden = true;
		document.getElementById("div-passing-month").hidden = true;
		document.getElementById("div-room-no").hidden = true;

	} else if (x == 3 || x == 2 || x == 1) {
		unhideFieldSets();
		unhideHiddenFields();
		document.getElementById("div-domain").hidden = true;
		document.getElementById("div-passing-month").hidden = true;
		document.getElementById("div-room-no").hidden = true;

	} else {
		document.getElementById("field-personal-info").hidden = true;
		document.getElementById("field-professional-info").hidden = true;
		document.getElementById("field-login-info").hidden = true;
		document.getElementById("save-buttons").hidden = true;
	}
}