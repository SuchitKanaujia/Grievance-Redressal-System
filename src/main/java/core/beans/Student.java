package core.beans;

import java.time.LocalDate;

public class Student {
	// Properties
	private 	String 		regNo;
	private 	String 		firstName;
	private 	String 		midName;
	private 	String 		lastName;
	private 	LocalDate 	DOB;
	private 	char 		gender;
	private 	String 		bloodGroup;
	private 	String 		email;
	private 	String 		email2;
	private 	String 		contact;
	private 	String 		contact2;
	private 	String 		address1;
	private 	String 		address2;
	private 	String 		city;
	private 	String 		district;
	private 	int 		zip;
	private 	String 		state;
	private 	String 		country;
	private 	String 		fatherName;
	private 	String 		fatherEmail;
	private 	String 		fatherContact;
	private 	String 		fatherOcc;
	private 	String 		fatherIncome;
	private 	String 		motherName;
	private 	String 		motherEmail;
	private 	String 		motherContact;
	private 	String 		motherOcc;
	private 	String 		motherIncome;
	private		String		batch;
	private		String		degreeId;
	private		String		feeStatus;
	private		int			hostelId;
	private 	String 		roomNo;
	private		int			floorNo;
	private 	String 		roomType;
	private		int			messId;
	private 	String 		foodPref;
	private 	String 		password;
	private 	String 		profilePic;
	private 	int 		userLevel;
	
	
	// Getter Methods
	public String getRegNo() {
		return this.regNo;
	}
	public String getFirstName() {
		return this.firstName;
	}
	public String getMidName() {
		return this.midName;
	}
	public String getLastName() {
		return this.lastName;
	}
	public LocalDate getDOB() {
		return this.DOB;
	}
	public char getGender() {
		return this.gender;
	}
	public String getBloodGroup() {
		return this.bloodGroup;
	}
	public String getEmail() {
		return this.email;
	}
	public String getEmail2() {
		return this.email2;
	}
	public String getContact() {
		return this.contact;
	}
	public String getContact2() {
		return this.contact2;
	}
	public String getAddress1() {
		return this.address1;
	}
	public String getAddress2() {
		return this.address2;
	}
	public String getCity() {
		return this.city;
	}
	public String getDistrict() {
		return this.district;
	}
	public int getZip() {
		return this.zip;
	}
	public String getState() {
		return this.state;
	}
	public String getCountry() {
		return this.country;
	}
	public String getFatherName() {
		return this.fatherName;
	}
	public String getFatherEmail() {
		return this.fatherEmail;
	}
	public String getFatherContact() {
		return this.fatherContact;
	}
	public String getFatherOcc() {
		return this.fatherOcc;
	}
	public String getFatherIncome() {
		return this.fatherIncome;
	}
	public String getMotherName() {
		return this.motherName;
	}
	public String getMotherEmail() {
		return this.motherEmail;
	}
	public String getMotherContact() {
		return this.motherContact;
	}
	public String getMotherOcc() {
		return this.motherOcc;
	}
	public String getMotherIncome() {
		return this.motherIncome;
	}
	public String getBatch() {
		return this.batch;
	}
	public String getDegreeId() {
		return this.degreeId;
	}
	public String getFeeStatus() {
		return this.feeStatus;
	}
	public int getHostelId() {
		return this.hostelId;
	}
	public String getRoomNo() {
		return this.roomNo;
	}
	public int getFloorNo() {
		return this.floorNo;
	}
	public String getRoomType() {
		return this.roomType;
	}
	public int getMessId() {
		return this.messId;
	}
	public String getFoodPref() {
		return this.foodPref;
	}
	public String getPassword() {
		return this.password;
	}
	public String getProfilePic() {
		return this.profilePic;
	}
	public int getUserLevel() {
		return this.userLevel;
	}
	
	
	
	// Setter Methods
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setMidName(String midName) {
		this.midName = midName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setDOB(LocalDate DOB) {
		this.DOB = DOB;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public void setContact2(String contact2) {
		this.contact2 = contact2;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public void setFatherEmail(String fatherEmail) {
		this.fatherEmail = fatherEmail;
	}
	public void setFatherContact(String fatherContact) {
		this.fatherContact = fatherContact;
	}
	public void setFatherOcc(String fatherOcc) {
		this.fatherOcc = fatherOcc;
	}
	public void setFatherIncome(String fatherIncome) {
		this.fatherIncome = fatherIncome;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public void setMotherEmail(String motherEmail) {
		this.motherEmail = motherEmail;
	}
	public void setMotherContact(String motherContact) {
		this.motherContact = motherContact;
	}
	public void setMotherOcc(String motherOcc) {
		this.motherOcc =  motherOcc;
	}
	public void setMotherIncome(String motherIncome) {
		this.motherIncome = motherIncome;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public void setDegreeId(String degreeId) {
		this.degreeId = degreeId;
	}
	public void setFeeStatus(String feeStatus) {
		this.feeStatus = feeStatus;
	}
	public void setHostelId(int hostelId) {
		this.hostelId = hostelId;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public void setFloorNo(int floorNo) {
		this.floorNo = floorNo;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public void setMessId(int messId) {
		this.messId = messId;
	}
	public void setFoodPref(String foodPref) {
		this.foodPref = foodPref;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}

}
