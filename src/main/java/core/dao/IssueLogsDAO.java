package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.*;

import core.beans.*;
import helper.connection.SQLConnection;
import helper.model.GenericType;
import helper.sql.SQLQueries;

public class IssueLogsDAO {
	public static ArrayList<IssueLogs> fetchIssueLogs(String whereClause) {
		ArrayList<IssueLogs> allLogs = new ArrayList<IssueLogs>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(
					Arrays.asList("Issue_Id", "Status_Id", "Doer_Id", "Doer_Level", "Raised_Time"));
			String selectQuery = (whereClause.equals(""))
					? SQLQueries.generateSelectQuery("tbl_Issue_Logs", selectedColumns)
					: SQLQueries.generateSelectQuery("tbl_Issue_Logs", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("No Logs Available!");
			}
			while (rs.next()) {
				IssueLogs record = new IssueLogs();
				record.setIssue_Id(rs.getInt(1));
				record.setStatus_Id(rs.getInt(2));
				record.setDoer_Id(rs.getString(3));
				record.setDoer_Level(rs.getInt(4));
				LocalDateTime dt = LocalDateTime.parse(rs.getString(5).substring(0, 10) + "T"
						+ rs.getString(5).substring(11, rs.getString(5).length()));
				record.setRaised_Time(dt);
				allLogs.add(record);
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
		}

		return allLogs;
	}

	public static boolean insertIssueLog(IssueLogs log) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();

			toInsert.put("Issue_Id", new GenericType(log.getIssue_Id()));
			toInsert.put("Status_Id", new GenericType(log.getStatus_Id()));
			toInsert.put("Doer_Id", new GenericType("'" + log.getDoer_Id() + "'"));
			toInsert.put("Doer_Level", new GenericType(log.getDoer_Level()));
			toInsert.put("Raised_Time",
					new GenericType("' " + LocalDateTime.now().toString().substring(0, 19) + " '"));

			String insertQuery = SQLQueries.generateInsertQuery("tbl_Issue_Logs", toInsert);
			System.out.println(insertQuery);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();

			if (status == 0) {
				return false;
			}
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}
		return true;
	}

}