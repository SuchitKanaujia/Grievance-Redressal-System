package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import core.beans.UserLevel;
import helper.connection.SQLConnection;
import helper.model.GenericType;
import helper.sql.SQLQueries;

public class UserLevelDAO {
	
	public static ArrayList<UserLevel> fetchUserLevels(String whereClause){
		ArrayList<UserLevel> allUserLevels = new ArrayList<UserLevel>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(Arrays.asList
					("Id", "User_Level", "Access_Permissions"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_User_Level", selectedColumns) : 
				SQLQueries.generateSelectQuery("tbl_User_Level", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if(!rs.isBeforeFirst())
			{
				System.out.println("No User Levels Available!");
			}
			while(rs.next())
			{
				UserLevel record = new UserLevel();
				record.setId(rs.getInt(1));
				record.setUserLevel(rs.getString(2));
				record.setAccessPermissions(rs.getString(3));
				
				allUserLevels.add(record);
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		
		return allUserLevels;
	}
	
	
	public static boolean insertUserLevel(UserLevel lvl){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();
			
			if (lvl.getId() != 0) toInsert.put("Id", new GenericType(lvl.getId()));
			if (lvl.getUserLevel() != null) toInsert.put("Registered_By", new GenericType("'" + lvl.getUserLevel()+ "'"));
			if (lvl.getAccessPermissions() != null) toInsert.put("Domain_Id", new GenericType("'" + lvl.getAccessPermissions()+ "'"));
			
			
			String insertQuery = SQLQueries.generateInsertQuery("tbl_User_Level", toInsert);
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
	
	
	public static boolean updateUserLevel(UserLevel lvl){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toUpdate = new HashMap<String, GenericType>();
			
			if (lvl.getUserLevel() != null) toUpdate.put("Registered_By", new GenericType("'" + lvl.getUserLevel()+ "'"));
			if (lvl.getAccessPermissions() != null) toUpdate.put("Domain_Id", new GenericType("'" + lvl.getAccessPermissions()+ "'"));
			
			
			String updateQuery = SQLQueries.generateUpdateQuery("tbl_User_Level", toUpdate, "[Id] = " + lvl.getId());
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
	
	
	public static boolean deleteUserLevel(int id){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			String deleteQuery = SQLQueries.generateDeleteQuery("tbl_User_Level", "[Id] = " + id );
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
