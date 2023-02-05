package core.globals;

import core.beans.*;

public class UserDetails {

	public static String userId = "";
	public static String userName = "";
	public static UserLevel userLevel = null;
	public static int userLevelId = 0;
	public static Admin admin = null;
	public static Authority authority = null;
	public static Supervisor supervisor = null;
	public static Warden warden = null;
	public static Student student = null;

	public static void fillBasicUserInfo(UserLevel uLevel, Authority authorityObj) {
		userLevel = uLevel;
		userLevelId = 1;
		userId = authorityObj.getEmpId();
		userName = authorityObj.getFirstName() + " "
				+ (authorityObj.getMidName() == null ? "" : authorityObj.getMidName() + " ")
				+ authorityObj.getLastName();
		authority = authorityObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Warden wardenObj) {
		userLevel = uLevel;
		userLevelId = 2;
		userId = wardenObj.getEmpId();
		userName = wardenObj.getFirstName() + " " + (wardenObj.getMidName() == null ? "" : wardenObj.getMidName() + " ")
				+ wardenObj.getLastName();
		warden = wardenObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Supervisor supervisorObj) {
		userLevel = uLevel;
		userLevelId = 3;
		userId = supervisorObj.getEmpId();
		userName = supervisorObj.getFirstName() + " "
				+ (supervisorObj.getMidName() == null ? "" : supervisorObj.getMidName() + " ")
				+ supervisorObj.getLastName();
		supervisor = supervisorObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Student studentObj) {
		userLevel = uLevel;
		userLevelId = 4;
		userId = studentObj.getRegNo();
		userName = studentObj.getFirstName() + " "
				+ (studentObj.getMidName() == null ? "" : studentObj.getMidName() + " ") + studentObj.getLastName();
		student = studentObj;
	}

	public static void fillBasicUserInfo(UserLevel uLevel, Admin adminObj) {
		userLevel = uLevel;
		userLevelId = 5;
		userId = adminObj.getEmpId();
		userName = adminObj.getFirstName() + " " + (adminObj.getMidName() == null ? "" : adminObj.getMidName() + " ")
				+ adminObj.getLastName();
		admin = adminObj;
	}

}
