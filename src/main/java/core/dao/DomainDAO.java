package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import core.beans.Domain;
import helper.connection.SQLConnection;
import helper.model.GenericType;
import helper.sql.SQLQueries;

public class DomainDAO {
	
	public static ArrayList<Domain> fetchDomains(String whereClause){
		ArrayList<Domain> allDomains = new ArrayList<Domain>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(Arrays.asList
					("Id", "Name", "Description"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_Domain", selectedColumns) : 
				SQLQueries.generateSelectQuery("tbl_Domain", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if(!rs.isBeforeFirst())
			{
				System.out.println("No Domains Available!");
			}
			while(rs.next())
			{
				Domain record = new Domain();
				record.setId(rs.getString(1));
				record.setName(rs.getString(2));
				record.setDescription(rs.getString(3));
				allDomains.add(record);
			}
			
			connection.close();
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		
		return allDomains;
	}
	
	
	public static boolean insertDomain(Domain domain){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();
			
			if (domain.getId() != null) toInsert.put("Id", new GenericType("'" + domain.getId()+ "'"));
			if (domain.getName() != null) toInsert.put("Name", new GenericType("'" + domain.getName()+ "'"));
			if (domain.getDescription() != null) toInsert.put("Description", new GenericType("'" + domain.getDescription()+ "'"));
			
			String insertQuery = SQLQueries.generateInsertQuery("tbl_Domain", toInsert);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();
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
	
	
	public static boolean updateDomain(Domain domain){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toUpdate = new HashMap<String, GenericType>();

			if (domain.getName() != null) toUpdate.put("Name", new GenericType("'" + domain.getName()+ "'"));
			if (domain.getDescription() != null) toUpdate.put("Description", new GenericType("'" + domain.getDescription()+ "'"));
			
			String updateQuery = SQLQueries.generateUpdateQuery("tbl_Domain", toUpdate, "[Id] = '" + domain.getId() + "'");
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
	
	
	public static boolean deleteDomain(String id){
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			String deleteQuery = SQLQueries.generateDeleteQuery("tbl_Domain", "[Id] = '" + id + "'");
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
