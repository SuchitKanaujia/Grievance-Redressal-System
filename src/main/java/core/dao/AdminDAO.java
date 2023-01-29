package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.*;
import helper.connection.SQLConnection;
import core.beans.Admin;
import helper.sql.*;

import helper.model.*;

public class AdminDAO {
	
	public static ArrayList<Admin> fetchAdmins(String whereClause){
		ArrayList<Admin> allAdmins = new ArrayList<Admin>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(Arrays.asList
					("Emp_Id", "First_Name", "Mid_Name", "Last_Name", "DOB", "Gender", "Blood_Grp", "Email", "Email_2",
					 "Contact", "Contact_2", "Qualification", "DOJ", "Password", "Profile_Pic", "User_Level"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_Admin", selectedColumns) : 
				SQLQueries.generateSelectQuery("tbl_Admin", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if(!rs.isBeforeFirst())
			{
				System.out.println("No Admins Available!");
			}
			while(rs.next())
			{
				Admin record = new Admin();
				record.setEmpId(rs.getString(1));
				record.setFirstName(rs.getString(2));
				record.setMidName(rs.getString(3));
				record.setLastName(rs.getString(4));
				record.setDOB(LocalDate.of(Integer.parseInt(rs.getString(5).substring(0,4)),
						Integer.parseInt(rs.getString(5).substring(5,7)),Integer.parseInt(rs.getString(5).substring(8,10))));
				record.setGender(rs.getString(6).charAt(0));
				record.setBloodGroup(rs.getString(7));
				record.setEmail(rs.getString(8));
				record.setEmail2(rs.getString(9));
				record.setContact(rs.getString(10));
				record.setContact2(rs.getString(11));
				record.setQualification(rs.getString(12));
				record.setDOJ(LocalDate.of(Integer.parseInt(rs.getString(13).substring(0,4)),
						Integer.parseInt(rs.getString(13).substring(5,7)),Integer.parseInt(rs.getString(13).substring(8,10))));
				record.setPassword(rs.getString(14));
				record.setProfilePic(rs.getString(15));
				record.setUserLevel(Integer.parseInt(rs.getString(16)));
				allAdmins.add(record);
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		
		return allAdmins;
	}
	
	
	public static boolean insertAdmin(Admin admin){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();
			
			if (admin.getEmpId() != null) toInsert.put("Emp_Id", new GenericType("'" + admin.getEmpId()+ "'"));
			if (admin.getFirstName() != null) toInsert.put("First_Name", new GenericType("'" + admin.getFirstName()+ "'"));
			if (admin.getMidName() != null) toInsert.put("Mid_Name", new GenericType("'" + admin.getMidName()+ "'"));
			if (admin.getLastName() != null) toInsert.put("Last_Name", new GenericType("'" + admin.getLastName()+ "'"));
			if (admin.getDOB() != null) toInsert.put("DOB", new GenericType("'" + admin.getDOB()+ "'"));
			if (admin.getGender() != '\0') toInsert.put("Gender", new GenericType("'" + admin.getGender()+ "'"));
			if (admin.getBloodGroup() != null) toInsert.put("Blood_Grp", new GenericType("'" + admin.getBloodGroup()+ "'"));
			if (admin.getEmail() != null) toInsert.put("Email", new GenericType("'" + admin.getEmail()+ "'"));
			if (admin.getEmail2() != null) toInsert.put("Email_2", new GenericType("'" + admin.getEmail2()+ "'"));
			if (admin.getContact() != null) toInsert.put("Contact", new GenericType("'" + admin.getContact()+ "'"));
			if (admin.getContact2() != null) toInsert.put("Contact_2", new GenericType("'" + admin.getContact2()+ "'"));
			if (admin.getQualification() != null) toInsert.put("Qualification", new GenericType("'" + admin.getQualification()+ "'"));
			if (admin.getDOJ() != null) toInsert.put("DOJ", new GenericType("'" + admin.getDOJ()+ "'"));
			if (admin.getPassword() != null) toInsert.put("Password", new GenericType("'" + admin.getPassword()+ "'"));
			if (admin.getProfilePic() != null) toInsert.put("Profile_Pic", new GenericType("'" + admin.getProfilePic()+ "'"));
			if (admin.getUserLevel() != 0) toInsert.put("User_Level", new GenericType(admin.getUserLevel()));
			
			String insertQuery = SQLQueries.generateInsertQuery("tbl_Admin", toInsert);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();
			System.out.println(status);
			
			if(status == 0) {
				return false;
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
			return false;
		}
		
		return true;
	}
	
	
	public static boolean updateAdmin(Admin admin){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toUpdate = new HashMap<String, GenericType>();
			
			if (admin.getFirstName() != null) toUpdate.put("First_Name", new GenericType("'" + admin.getFirstName()+ "'"));
			if (admin.getMidName() != null) toUpdate.put("Mid_Name", new GenericType("'" + admin.getMidName()+ "'"));
			if (admin.getLastName() != null) toUpdate.put("Last_Name", new GenericType("'" + admin.getLastName()+ "'"));
			if (admin.getDOB() != null) toUpdate.put("DOB", new GenericType("'" + admin.getDOB()+ "'"));
			if (admin.getGender() != '\0') toUpdate.put("Gender", new GenericType("'" + admin.getGender()+ "'"));
			if (admin.getBloodGroup() != null) toUpdate.put("Blood_Grp", new GenericType("'" + admin.getBloodGroup()+ "'"));
			if (admin.getEmail() != null) toUpdate.put("Email", new GenericType("'" + admin.getEmail()+ "'"));
			if (admin.getEmail2() != null) toUpdate.put("Email_2", new GenericType("'" + admin.getEmail2()+ "'"));
			if (admin.getContact() != null) toUpdate.put("Contact", new GenericType("'" + admin.getContact()+ "'"));
			if (admin.getContact2() != null) toUpdate.put("Contact_2", new GenericType("'" + admin.getContact2()+ "'"));
			if (admin.getQualification() != null) toUpdate.put("Qualification", new GenericType("'" + admin.getQualification()+ "'"));
			if (admin.getDOJ() != null) toUpdate.put("DOJ", new GenericType("'" + admin.getDOJ()+ "'"));
			if (admin.getPassword() != null) toUpdate.put("Password", new GenericType("'" + admin.getPassword()+ "'"));
			if (admin.getProfilePic() != null) toUpdate.put("Profile_Pic", new GenericType("'" + admin.getProfilePic()+ "'"));
			if (admin.getUserLevel() != 0) toUpdate.put("User_Level", new GenericType(admin.getUserLevel()));
			
			String updateQuery = SQLQueries.generateUpdateQuery("tbl_Admin", toUpdate, "[Emp_Id] = '" + admin.getEmpId() + "'");
			PreparedStatement ps = connection.prepareStatement(updateQuery);
			int status = ps.executeUpdate();
			System.out.println(status);
			
			if(status == 0) {
				return false;
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
			return false;
		}
		
		return true;
	}
	
	
	public static boolean deleteAdmin(String empId){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			String deleteQuery = SQLQueries.generateDeleteQuery("tbl_Admin", "[Emp_Id] = '" + empId + "'");
			PreparedStatement ps = connection.prepareStatement(deleteQuery);
			int status = ps.executeUpdate();
			System.out.println(status);
			
			if(status == 0) {
				return false;
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
			return false;
		}
		
		return true;
	}
	
}
