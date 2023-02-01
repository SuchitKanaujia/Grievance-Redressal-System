package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;

import core.beans.Supervisor;
import helper.connection.SQLConnection;
import helper.sql.SQLQueries;

public class SupervisorDAO {
	public static ArrayList<Supervisor> fetchSupervisors(String whereClause){
		ArrayList<Supervisor> allSupervisors = new ArrayList<Supervisor>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(Arrays.asList
					("Emp_Id", "First_Name", "Mid_Name", "Last_Name", "DOB", "Gender", "Blood_Grp", "Email", "Email_2",
					 "Contact", "Contact_2", "Qualification", "Domain_Id", "Hostel_Id", "DOJ", "Designation_Id" , "Password",
					 "Profile_Pic", "User_Level"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_Supervisor", selectedColumns) : 
				SQLQueries.generateSelectQuery("tbl_Supervisor", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if(!rs.isBeforeFirst())
			{
				System.out.println("No Supervisors Available!");
			}
			while(rs.next())
			{
				Supervisor record = new Supervisor();
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
				record.setDomainId(rs.getString(13));
				record.setHostelId(rs.getInt(14));
				record.setDOJ(LocalDate.of(Integer.parseInt(rs.getString(15).substring(0,4)),
						Integer.parseInt(rs.getString(15).substring(5,7)),Integer.parseInt(rs.getString(15).substring(8,10))));
				record.setDesignationId(rs.getString(16));
				
				record.setPassword(rs.getString(17));
				record.setProfilePic(rs.getString(18));
				record.setUserLevel(Integer.parseInt(rs.getString(19)));
				allSupervisors.add(record);
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		return allSupervisors;
	}
}
