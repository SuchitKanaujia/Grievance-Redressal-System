package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import core.beans.*;
import helper.connection.SQLConnection;
import helper.model.GenericType;
import helper.sql.SQLQueries;

public class MessagesDAO {
	public static ArrayList<Message> fetchMessages(String whereClause) {
		ArrayList<Message> allMessages = new ArrayList<Message>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(
					Arrays.asList("Issue_Id", "Message", "Messager_Id", "Messager_Level", "Time"));
			String selectQuery = (whereClause.equals("")) ? SQLQueries.generateSelectQuery("tbl_Messages", selectedColumns)
					: SQLQueries.generateSelectQuery("tbl_Messages", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("No Messages Available!");
			}
			while (rs.next()) {
				Message record = new Message();
				record.setIssue_Id(rs.getInt(1));
				record.setMessage(rs.getString(2));
				record.setMessager_Id(rs.getString(3));
				record.setMessager_Level(rs.getInt(5));
				LocalDateTime dt = LocalDateTime.parse(rs.getString(5).substring(0, 10) + "T"
						+ rs.getString(5).substring(11, rs.getString(5).length()));
				record.setMessgae_Time(dt);
				allMessages.add(record);
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
		}

		return allMessages;
	}

	public static ArrayList<Message> fetchMessages(int issueId) {
		return fetchMessages("[Issue_Id] = + " + issueId);
	}
	

	public static boolean insertMessage(Message message) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();

			if (message.getIssue_Id() != 0)
				toInsert.put("Issue_Id", new GenericType(message.getIssue_Id()));
			if (message.getMessage() != null)
				toInsert.put("Message", new GenericType("'" + message.getMessage() + "'"));
			if (message.getMessager_Id() != null)
				toInsert.put("Messager_Id", new GenericType("'" + message.getMessager_Id() + "'"));
			if (message.getMessager_Level() != 0)
				toInsert.put("Messager_Level", new GenericType(message.getMessager_Level()));
			if (message.getMessgae_Time() != null)
				toInsert.put("Messgae_Time", new GenericType("' " + message.getMessgae_Time().toString().substring(0, 19) + " '"));

			String insertQuery = SQLQueries.generateInsertQuery("tbl_Messages", toInsert);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();

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

