package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import core.beans.Issue;
import helper.connection.SQLConnection;
import helper.model.GenericType;
import helper.sql.SQLQueries;

public class IssueDAO {

	public static ArrayList<Issue> fetchIssues(String whereClause) {
		ArrayList<Issue> allIssues = new ArrayList<Issue>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(
					Arrays.asList("Id", "Registered_By", "Domain_Id", "Description", "Curr_Status", "Assigned_To"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_Issue", selectedColumns)
					: SQLQueries.generateSelectQuery("tbl_Issue", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("No Issues Available!");
			}
			while (rs.next()) {
				Issue record = new Issue();
				record.setId(rs.getInt(1));
				record.setRegistered_By(rs.getString(2));
				record.setDomain_Id(rs.getString(3));
				record.setDescription(rs.getString(4));
				record.setCurr_Status(rs.getInt(5));
				record.setAssigned_To(rs.getString(6));
				allIssues.add(record);
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
		}

		return allIssues;
	}

	public static Issue fetchIssue(int issueId) {
		ArrayList<Issue> issues = fetchIssues("[Id] = + " + issueId);
		return issues.get(0);
	}

	public static int insertIssue(Issue issue) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();

			if (issue.getRegistered_By() != null)
				toInsert.put("Registered_By", new GenericType("'" + issue.getRegistered_By() + "'"));
			if (issue.getDomain_Id() != null)
				toInsert.put("Domain_Id", new GenericType("'" + issue.getDomain_Id() + "'"));
			if (issue.getDescription() != null)
				toInsert.put("Description", new GenericType("'" + issue.getDescription() + "'"));
			if (issue.getCurr_Status() != 0)
				toInsert.put("Curr_Status", new GenericType(issue.getCurr_Status()));
			if (issue.getAssigned_To() != null)
				toInsert.put("Assigned_To", new GenericType("'" + issue.getAssigned_To() + "'"));

			String insertQuery = SQLQueries.generateInsertQuery("tbl_Issue", toInsert);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();

			if (status == 0) {
				return -1;
			}

			// Get Id for newly inserted issue
			String latestRecord = SQLQueries.generateQueryToGetLatestRecordKey("tbl_Issue", "Id");
			PreparedStatement ps2 = connection.prepareStatement(latestRecord);
			ResultSet rs = ps2.executeQuery();
			int issueId = -1;
			if (rs.next()) {
				issueId = rs.getInt(1);
				issue.setId(issueId);
			}
			connection.close();
			return issueId;
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return -1;
		}
	}

	public static boolean updateIssue(Issue issue) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toUpdate = new HashMap<String, GenericType>();

			if (issue.getRegistered_By() != null)
				toUpdate.put("Registered_By", new GenericType("'" + issue.getRegistered_By() + "'"));
			if (issue.getDomain_Id() != null)
				toUpdate.put("Domain_Id", new GenericType("'" + issue.getDomain_Id() + "'"));
			if (issue.getDescription() != null)
				toUpdate.put("Description", new GenericType("'" + issue.getDescription() + "'"));
			if (issue.getCurr_Status() != 0)
				toUpdate.put("Curr_Status", new GenericType(issue.getCurr_Status()));
			if (issue.getAssigned_To() != null)
				toUpdate.put("Assigned_To", new GenericType("'" + issue.getAssigned_To() + "'"));

			String updateQuery = SQLQueries.generateUpdateQuery("tbl_Issue", toUpdate, "[Id] = " + issue.getId());
			System.out.println(updateQuery);
			PreparedStatement ps = connection.prepareStatement(updateQuery);
			int status = ps.executeUpdate();
			System.out.println(status);

			if (status == 0) {
				return false;
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}

		return true;
	}

	public static boolean deleteIssue(int id) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			String deleteQuery = SQLQueries.generateDeleteQuery("tbl_Issue", "[Id] = " + id);
			PreparedStatement ps = connection.prepareStatement(deleteQuery);
			int status = ps.executeUpdate();
			System.out.println(status);

			if (status == 0) {
				return false;
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}

		return true;
	}

}
