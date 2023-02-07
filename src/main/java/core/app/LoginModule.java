package core.app;

import java.util.ArrayList;

import core.globals.*;
import core.beans.*;
import core.dao.*;

public class LoginModule {
	public static boolean approveLogin(int uLevelId, String uName, String password) {
		try {
			switch (uLevelId) {
			case 1:
				ArrayList<Authority> authority = AuthorityDAO
						.fetchAuthorities("[Emp_Id] = '" + uName + "' AND [Password] = '" + password + "'");
				if (authority.size() < 1)
					return false;
				UserDetails.fillBasicUserInfo(authority.get(0));
				break;
			case 3:
				ArrayList<Supervisor> sup = SupervisorDAO
						.fetchSupervisors("[Emp_Id] = '" + uName + "' AND [Password] = '" + password + "'");
				if (sup.size() < 1)
					return false;
				UserDetails.fillBasicUserInfo(sup.get(0));
				break;
				
			case 4:
				ArrayList<Student> student = StudentDAO
						.fetchStudents("[Reg_No] = '" + uName + "' AND [Password] = '" + password + "'");
				if (student.size() < 1)
					return false;
				UserDetails.fillBasicUserInfo(student.get(0));
				break;
			case 5:
				ArrayList<Admin> adminRecord = AdminDAO
						.fetchAdmins("[Emp_Id] = '" + uName + "' AND [Password] = '" + password + "'");
				if (adminRecord.size() < 1)
					return false;
				UserDetails.fillBasicUserInfo(adminRecord.get(0));
				break;
			}
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}

		return true;
	}
}
