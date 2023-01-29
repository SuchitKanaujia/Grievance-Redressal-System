package core.beans;

import java.time.*;

public class Admin {
	// Properties
	private 	String 		empId;
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
	private 	String 		qualification;
	private 	LocalDate 	DOJ;
	private 	String 		password;
	private 	String 		profilePic;
	private 	int 		userLevel;
	
	
	// Getter Methods
	public String getEmpId() {
		return this.empId;
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
	public String getQualification() {
		return this.qualification;
	}
	public LocalDate getDOJ() {
		return this.DOJ;
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
	public void setEmpId(String empId) {
		this.empId = empId;
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
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public void setDOJ(LocalDate DOJ) {
		this.DOJ = DOJ;
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
