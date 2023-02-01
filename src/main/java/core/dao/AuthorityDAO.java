package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;

import core.beans.Authority;
import helper.connection.SQLConnection;
import helper.sql.SQLQueries;

public class AuthorityDAO {
	public static ArrayList<Authority> fetchAuthorities(String whereClause){
		ArrayList<Authority> allAuthorities = new ArrayList<Authority>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(Arrays.asList
					("Emp_Id", "First_Name", "Mid_Name", "Last_Name", "DOB", "Gender", "Blood_Grp", "Email", "Email_2",
					 "Contact", "Contact_2", "Qualification", "DOJ", "Password", "Profile_Pic", "User_Level"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_Authority", selectedColumns) : 
				SQLQueries.generateSelectQuery("tbl_Authority", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if(!rs.isBeforeFirst())
			{
				System.out.println("No Authorities Available!");
			}
			while(rs.next())
			{
				Authority record = new Authority();
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
				allAuthorities.add(record);
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		
		return allAuthorities;
	}
}
