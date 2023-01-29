package helper.sql;
import java.util.*;
import helper.model.*;

public class SQLQueries {

	
	public static String generateSelectQuery(String tblName, ArrayList<String> columns) {
		// SELECT Query Generation with dynamic columns
		return "SELECT " + "[" + String.join("], [", columns) + "]" + " FROM [ITS].[" + tblName + "]"; 
	}
	
	
	public static String generateSelectQuery(String tblName, ArrayList<String> columns, String condition) {
		// SELECT Query Generation with dynamic columns
		return "SELECT " + "[" + String.join("], [", columns) + "]" + " FROM [ITS].[" + tblName + "] WHERE " + condition; 
	}
	
	
	public static String generateInsertQuery(String tblName, HashMap<String, GenericType> colValPair) {
		// INSERT Query Generation with dynamic columns
		StringBuilder columns = new StringBuilder("");
		StringBuilder values = new StringBuilder("");
		for(String col : colValPair.keySet()) {
			columns.append("[" + col + "], ");
			values.append("" + colValPair.get(col).get() + ", ");
		}
		return "INSERT INTO [ITS].["+tblName + "] ( " + columns.substring(0, columns.length()-2) +
						" ) VALUES ( " + values.substring(0, values.length()-2) + " )" ;
	}
	
	
	public static String generateQueryToGetLatestRecordKey(String tblName, String columnName) {
		// Query to Get Latest Record
		return "SELECT TOP 1 " + "[" + columnName + "]" + " FROM [ITS].[" + tblName + "] ORDER BY ["+ columnName + "] DESC"; 
	}
	
	
	public static String generateUpdateQuery(String tblName, HashMap<String, GenericType> colValPair, String condition) {
		// UPDATE Query Generation with dynamic columns
		StringBuilder pairs  = new StringBuilder("");
		for(String col : colValPair.keySet()) {
			pairs.append("[" + col + "] = " + colValPair.get(col).get() + ", ");
		}
		
		return "UPDATE [ITS].[" + tblName + "] SET " + pairs.substring(0,pairs.length()-2) + " WHERE " + condition + ";" ;
	}
	
	
	public static String generateDeleteQuery(String tblName, String condition) {
		// DELETE Query Generation with dynamic columns
		return "DELETE FROM [ITS].[" + tblName + "] WHERE " + condition ;
	}
	
	
	public static String generateInnerJoinQuery(ArrayList<String[]> toSelectColumns, ArrayList<String[]> joinTables, String condition) {
		// Generation of INNER JOIN Queries
		StringBuilder selectQuery = new StringBuilder("SELECT ");
		for(String[] table: toSelectColumns) {
			String[] columnsNameAndAlias = table[1].split("@");
			selectQuery.append("[ITS].[" + table[0] + "].[" + columnsNameAndAlias[0] + "]"+ 
					(columnsNameAndAlias.length == 2 ? (" AS [" + columnsNameAndAlias[1] + "]") : "") +", ");
		}
		StringBuilder joinConditions = new StringBuilder(" FROM [ITS].[" + joinTables.get(0)[0]+"] ");
		HashSet<String> onboardedTables = new HashSet<String>();
		onboardedTables.add(joinTables.get(0)[0]);
		for(String[] joinCondition : joinTables) {
			if(onboardedTables.contains(joinCondition[0])) {
				joinConditions.append(" INNER JOIN [ITS].[" + joinCondition[2] + "] ON [ITS].[" + joinCondition[0] + "].[" + 
						joinCondition[1] + "] = [ITS].[" + joinCondition[2] + "].[" +joinCondition[3] + "] ");
				onboardedTables.add(joinCondition[2]);
			}
			else if(onboardedTables.contains(joinCondition[2])) {
				joinConditions.append(" INNER JOIN [ITS].[" + joinCondition[0] + "] ON [ITS].[" + joinCondition[2] + "].[" + 
						joinCondition[3] + "] = [ITS].[" + joinCondition[0] + "].[" +joinCondition[1] + "] ");
				onboardedTables.add(joinCondition[0]);
			}
		}
		return selectQuery.substring(0, selectQuery.length() - 2) + joinConditions + (condition == null ? "" : " WHERE " + condition);
	}

}
