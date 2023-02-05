package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import core.beans.Status;
import helper.connection.SQLConnection;
import helper.model.GenericType;
import helper.sql.SQLQueries;

public class StatusDAO {
	public static ArrayList<Status> fetchStatus(String whereClause) {
		ArrayList<Status> allStatuses = new ArrayList<Status>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			ArrayList<String> selectedColumns = new ArrayList<>(
					Arrays.asList("Id", "Name", "Description", "Order", "TTL"));
			String selectQuery = (whereClause.equals(""))
					? SQLQueries.generateSelectQuery("tbl_Status", selectedColumns)
					: SQLQueries.generateSelectQuery("tbl_Status", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("No Statuses Available!");
			}
			while (rs.next()) {
				Status record = new Status();
				record.setId(rs.getInt(1));
				record.setName(rs.getString(2));
				record.setDescription(rs.getString(3));
				record.setOrder(rs.getInt(4));
				record.setTTL(rs.getInt(5));
				allStatuses.add(record);
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
		}

		return allStatuses;
	}

	public static boolean insertStatus(Status st) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();

			if (st.getName() != null)
				toInsert.put("Name", new GenericType("'" + st.getName() + "'"));
			if (st.getDescription() != null)
				toInsert.put("Description", new GenericType("'" + st.getDescription() + "'"));
			if (st.getOrder() != 0)
				toInsert.put("Order", new GenericType(st.getOrder()));
			if (st.getTTL() != 0)
				toInsert.put("TTL", new GenericType(st.getTTL()));

			String insertQuery = SQLQueries.generateInsertQuery("tbl_Status", toInsert);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();

			if (status == 0) {
				return false;
			}

			return true;
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}
	}

	public static boolean updateStatus(Status st) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toUpdate = new HashMap<String, GenericType>();

			if (st.getName() != null)
				toUpdate.put("Name", new GenericType("'" + st.getName() + "'"));
			if (st.getDescription() != null)
				toUpdate.put("Description", new GenericType("'" + st.getDescription() + "'"));
			if (st.getOrder() != 0)
				toUpdate.put("Order", new GenericType(st.getOrder()));
			if (st.getTTL() != 0)
				toUpdate.put("TTL", new GenericType(st.getTTL()));

			String updateQuery = SQLQueries.generateUpdateQuery("tbl_Status", toUpdate, "[Id] = " + st.getId());
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

	public static boolean deleteStatus(int id) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			String deleteQuery = SQLQueries.generateDeleteQuery("tbl_Status", "[Id] = " + id);
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
