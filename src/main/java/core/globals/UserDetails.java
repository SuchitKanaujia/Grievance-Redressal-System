package core.globals;

import core.beans.*;

public class UserDetails {

	public static String userId = "";
	public static String userName = "";
	public static UserLevel userLevel = null;
	public static Admin admin = null;
	public static Authority authority = null;
	public static Supervisor supervisor = null;
	public static Warden warden = null;
	public static Student student = null;

	public static void fillBasicUserInfo(UserLevel uLevel, Authority authorityObj) {
		userLevel = uLevel;

		userId = authorityObj.getEmpId();
		userName = authorityObj.getFirstName() + " "
				+ (authorityObj.getMidName() == null ? "" : authorityObj.getMidName() + " ")
				+ authorityObj.getLastName();
		authority = authorityObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Warden wardenObj) {
		userId = wardenObj.getEmpId();
		userName = wardenObj.getFirstName() + " " + (wardenObj.getMidName() == null ? "" : wardenObj.getMidName() + " ")
				+ wardenObj.getLastName();
		warden = wardenObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Supervisor supervisorObj) {
		userId = supervisorObj.getEmpId();
		userName = supervisorObj.getFirstName() + " "
				+ (supervisorObj.getMidName() == null ? "" : supervisorObj.getMidName() + " ")
				+ supervisorObj.getLastName();
		supervisor = supervisorObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Student studentObj) {
		userId = studentObj.getRegNo();
		userName = studentObj.getFirstName() + " "
				+ (studentObj.getMidName() == null ? "" : studentObj.getMidName() + " ") + studentObj.getLastName();
		student = studentObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Admin adminObj) {
		userId = adminObj.getEmpId();
		userName = adminObj.getFirstName() + " " + (adminObj.getMidName() == null ? "" : adminObj.getMidName() + " ")
				+ adminObj.getLastName();
		admin = adminObj;
	}

}
